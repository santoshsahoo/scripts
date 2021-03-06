#!/usr/bin/env bash

# install haskell platform to the system user via ubuntu update-alternatives,
# rather than as current user via .profile.  system user in this case = /usr/bin
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
LIB="/usr/lib"
MAN="/usr/share/man"
GHC="/opt/haskell/ghc/"
GHC_VER="7.10.1"
GHC_BIN="$GHC/$GHC_VER/bin"
GHC_LIB="$GHC/$GHC_VER/lib/ghc-7.10.1"
GHC_MAN="$GHC/$GHC_VER/share/man"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/ghc ghc $GHC_BIN/ghc $PRIORITY_LEVEL \
 --slave $BIN/ghci ghci $GHC_BIN/ghci \
 --slave $BIN/ghc-pkg ghc-pkg $GHC_BIN/ghc-pkg \
 --slave $BIN/haddock haddock $GHC_BIN/haddock \
 --slave $BIN/hp2ps hp2ps $GHC_BIN/hp2ps \
 --slave $BIN/hpc hpc $GHC_BIN/hpc \
 --slave $BIN/hsc2hs hsc2hs $GHC_BIN/hsc2hs \
 --slave $BIN/runghc runghc $GHC_BIN/runghc \
 --slave $BIN/runhaskell runhaskell $GHC_BIN/runhaskell \
 --slave $LIB/ghc-split ghc-split $GHC_LIB/ghc-split \
 --slave $LIB/unlit unlit $GHC_LIB/unlit \
 --slave $MAN/man9 man.ghc $GHC_MAN/man1
