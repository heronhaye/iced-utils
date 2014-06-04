##### Signed by https://keybase.io/max
```
-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2.0.22 (Darwin)
Comment: GPGTools - https://gpgtools.org

iQEcBAABCgAGBQJTjy4HAAoJEJgKPw0B/gTfvj8H/0gOvgQEY8dQo0eqiFjopZGE
JLFYti/ocHohLrPUmvJSbbnLQ5NpCWL4un3e/Fa1o4Z/benFuaWZv29DatL56iZ1
HtGbG/cParSVeKUAZg0a592x90BgmJEdl3akKtV/6Zxfz5cf24kqFfxDbEslnfQz
Gkixel2kEkWbqxThTE2rgcaUdirUtxetm+KgiKVASad03xTwIeeNNYRfAxYfrPOT
NVSLeqhcCbug4eq0UeBSijKZvH+AniwkDTsNnObbF5cNl4IWo9U7kRnMoBrB95dG
EVRO9jtJtOfeeJvkiOKzNGltbKvlO+ebmKM88vGskbdSDeXzCnQVKp9u0C8jNGE=
=sin/
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size   exec  file                   contents                                                        
             ./                                                                                     
110            .gitignore           71f9c0f0263e54e773253b0ff92e43970e8288db495d9638ac2bfecee2d2f43b
180            CHANGELOG.md         a3eb7d7ec4f833147ac2965cb2487d721f27b2c10b48f50ba7207a6b7cd7ffab
472            Makefile             28a56695d3682dc3e54cd3a6140042eb5c2a67e2b6530c3877b0acd552d0f931
119            README.md            631d836cb2b1e05957d9da1eb7d7e5dd2db3ce83edc6d5f8d1f8dd84c0ca5e96
               lib/                                                                                 
360              enum.js            d22333c1a5e72e0978dc301447aa4e285144f49bdd08e631836e1da5c57b2877
11420            fs.js              0983493f7c1850b57d007a2d30d6d96c74da3575298f6df6d693f76330ec97fc
1935             getopt.js          7019aac910b460cedff284214edbda2c9abf77f426b4e6328ef21fc0d1a48b6f
3192             lock.js            c61d1fc71c496ee0ec7985954fbe9c1946062e30ab68417d35e4c37113977f8f
19414            lockfile.js        c6aa2fa7e2cc2d97fbd03a1da8690fd729824cd4298ee1636841dd3053aff932
342              main.js            b4a444570c61f28e83494fe5ba082a6a72876fe130820f80e612c3482bbbfb9b
5492             spawn.js           fdd6367e1ad33a04f235c02fa0fbeeff81df1ded2dfeac6571fb7236da25497d
9384             util.js            0315d568296484e20f91f97e07faea1b1f5990ec90b0e2cb44b0b94f54d547ad
692            package.json         c86cabc39f765930a5dc7f5a4766206b7d5206530a505afdbc75172d872eccd3
               src/                                                                                 
275              enum.iced          189271c330eb6db654879469828332cf78ea87e210d1d7275611a2e1e1fb4d15
1756             fs.iced            205ad199023ba430ce4b6771913424f0872c90ed79afc13cc919159653e389ad
1108             getopt.iced        ecea3528970970453687a0ac7b10c943d37e4df861a345a7bb6faee238032cdd
1123             lock.iced          00e0aad9cbe1aac2031640a78d7f6a71e05975af1850b815311f9290f9ce2fd9
5009             lockfile.iced      4965dea73b8739ab499704c8213f9d4c875f7271907e41ebd0ea90c79db35aa4
235              main.iced          762afb6b67105bbc8347b0ca3295ca3f57435fd31040a5be9f74ceba1861c8d5
2621             spawn.iced         c8f801be169434cf2a6dd8650f12d71c3656e098d3ca6b8f3234c47b1e497997
6749             util.iced          7182d3bee726b091b20bad5c7091e241f5c1d10606f85e66892b5c3f85b80a33
               test/                                                                                
                 files/                                                                             
1063               dict_merge.iced  3a42886bd8bd895beedfa82e67535e1721951aa05f7fb5257f235ec31e10dd1a
183              run.iced           822568debeae702ca4d1f3026896d78b2d426e960d77cb3c374da059ef09f9fd
```

#### Ignore

```
/SIGNED.md
```

#### Presets

```
git      # ignore .git and anything as described by .gitignore files
dropbox  # ignore .dropbox-cache and other Dropbox-related files    
kb       # ignore anything as described by .kbignore files          
```

<!-- summarize version = 0.0.8 -->

### End signed statement

<hr>

#### Notes

With keybase you can sign any directory's contents, whether it's a git repo,
source code distribution, or a personal documents folder. It aims to replace the drudgery of:

  1. comparing a zipped file to a detached statement
  2. downloading a public key
  3. confirming it is in fact the author's by reviewing public statements they've made, using it

All in one simple command:

```bash
keybase dir verify
```

There are lots of options, including assertions for automating your checks.

For more info, check out https://keybase.io/docs/command_line/code_signing