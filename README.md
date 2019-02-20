# chisel-make
Make chisel without sbt

# Prerequisit
Cygwin (or Linux), Java8, Scala-2.11+

# Usage
Run only once when upgrade './lib-*'
```
    ./chisel-setting.sh ./lib-2.11
```

Compile source files
```
    ./chisel-compile.sh -c examples/GCD.scala
```

Run classes
```
    ./chisel-compile.sh examples.GCD
```

# FAQ
How to collect 'lib-*/*.jar' files ?
1) Get 'Ammonite'
```
wget https://github.com/lihaoyi/Ammonite/releases/download/1.6.3/2.11-1.6.3 -O amm
```

2) Run amm to download jars
```
amm examples/hello.scala
```
The download directory is located in 'C:\\Users\\***\\AppData\\Local\\Coursier\\cache\\' on Cygwin.

# Reference
https://github.com/edwardcwang/chisel-single-file

# Known Issues
2019- 2-20 :
- only support scala-2.11, errors on scala-2.12
- warning if without 'import scala.language.reflectiveCalls'
