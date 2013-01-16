
{spawn, exec} = require 'child_process'

##-----------------------------------------------------------------------

exports.Child = class Child

  #-----------------------------------------

  constructor : (@args, @opts) ->
    @_startup = null
    @_exit_cb = null
    @_exit_code = null
    @_filter = null

  #-----------------------------------------

  _got_data : (buffer, which) ->
    s = buffer.toString()
    process[which].write s unless @opts?.quiet

    # Maybe the parent process asked to filter stdout or stderr
    @_filter? s, which
    
    if @_startup?.check_fn s, which
      cb = @_startup.cb
      cb true
      @_startup = null

  #-----------------------------------------

  filter : (f) ->
    @_filter = f
    @
    
  #-----------------------------------------

  run : () ->
    @proc = spawn 'iced', @args
    @proc.stderr.on 'data', (buffer) => @_got_data buffer, 'stderr'
    @proc.stdout.on 'data', (buffer) => @_got_data buffer, 'stdout'
    @proc.on 'exit', (status) => @_got_exit status
    @

  #-----------------------------------------

  kill : (sig) -> @proc.kill sig
   
  #-----------------------------------------

  startup_check : (check_fn, cb) ->
    @_startup = { check_fn, cb }
    @

  #-----------------------------------------

  _do_restart : (status) ->
    d = opts?.restart?.delay or 5
    if (lf = opts?.logfn)?
      p = JSON.stringify @args
      lf "process '#{p}' died w/ status=#{status}; restart in #{d}s"
    await setTimeout defer(), d
    @run()
   
  #-----------------------------------------

  _got_exit : (status) ->
    @_exit_code = status
    @proc = null
    if @_startup?
      cb = @_startup.cb
      cb false
      @_startup = null
    @_exit_cb status if @_exit_cb
    if opts?.restart?
      @_do_restart status
      
  #-----------------------------------------

  wait : (cb) ->
    if @_exit_code
      cb @_exit_code
    else
      @_exit_cb = cb

##-----------------------------------------------------------------------

exports.spawn = (args, cb, opts = {}) ->
  await (new Child args, opts).run().wait defer status
  cb status

##-----------------------------------------------------------------------
