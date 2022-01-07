let upstream =
      https://github.com/purerl/package-sets/releases/download/erl-0.14.4-20211012-1/packages.dhall sha256:04b7cb6aaf4cc7323c2560c7b5c2f5e8459d2951997cf5084748e0f1cdbabd26

in  upstream
  with erl-kernel.version = "e18412dd807be96bbf8728330cc85de7d837e89b"
  with erl-pinto.version = "787d72ed4277425bbf1eedf16f0cd3bea088680a"