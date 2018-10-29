{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_Fibonacci (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\Martin\\AppData\\Roaming\\cabal\\bin"
libdir     = "C:\\Users\\Martin\\AppData\\Roaming\\cabal\\x86_64-windows-ghc-8.4.3\\Fibonacci-1.0.0-3p1AHnql4vZ1TdcKViFDiH"
dynlibdir  = "C:\\Users\\Martin\\AppData\\Roaming\\cabal\\x86_64-windows-ghc-8.4.3"
datadir    = "C:\\Users\\Martin\\AppData\\Roaming\\cabal\\x86_64-windows-ghc-8.4.3\\Fibonacci-1.0.0"
libexecdir = "C:\\Users\\Martin\\AppData\\Roaming\\cabal\\Fibonacci-1.0.0-3p1AHnql4vZ1TdcKViFDiH\\x86_64-windows-ghc-8.4.3\\Fibonacci-1.0.0"
sysconfdir = "C:\\Users\\Martin\\AppData\\Roaming\\cabal\\etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "Fibonacci_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "Fibonacci_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "Fibonacci_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "Fibonacci_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "Fibonacci_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "Fibonacci_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
