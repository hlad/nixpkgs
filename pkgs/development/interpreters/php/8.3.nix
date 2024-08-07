{ callPackage, ... }@_args:

let
  base = callPackage ./generic.nix (_args // {
    version = "8.3.9";
    hash = "sha256-lu3G2Ct1A6ZlBUH8R3q9VFbfKN+qjJOI/54x2f4eMRI=";
  });
in
base.withExtensions ({ all, ... }: with all; ([
  bcmath
  calendar
  curl
  ctype
  dom
  exif
  fileinfo
  filter
  ftp
  gd
  gettext
  gmp
  iconv
  imap
  intl
  ldap
  mbstring
  mysqli
  mysqlnd
  opcache
  openssl
  pcntl
  pdo
  pdo_mysql
  pdo_odbc
  pdo_pgsql
  pdo_sqlite
  pgsql
  posix
  readline
  session
  simplexml
  sockets
  soap
  sodium
  sysvsem
  sqlite3
  tokenizer
  xmlreader
  xmlwriter
  zip
  zlib
]))
