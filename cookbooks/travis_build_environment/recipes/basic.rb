# Cookbook Name:: travis_build_environment
# Recipe:: basic
# Copyright 2011-2016, Travis CI GmbH <contact+travis-cookbooks@travis-ci.org>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

package %w(
  bsdmainutils
  bzip2
  bzr
  ccache
  curl
  gcc
  gzip
  imagemagick
  iptables
  libbz2-dev
  libmagickwand-dev
  libsqlite3-dev
  lsof
  md5deep
  mercurial
  netcat-openbsd
  openssl
  ragel
  rsync
  sqlite3
  sqlite3-doc
  subversion
  sudo
  unzip
  vim
  wamerican
  wget
  zip
) do
  action [:install, :upgrade]
end

execute 'rm -rf /etc/update-motd.d/*'

include_recipe 'rvm'
include_recipe 'travis_build_environment::git'
include_recipe 'travis_build_environment::timezone'
include_recipe 'travis_build_environment::gimme'
include_recipe 'travis_build_environment::apt'
include_recipe 'travis_build_environment::bats'
include_recipe 'travis_build_environment::jq'
include_recipe 'travis_build_environment::cmake'
include_recipe 'travis_build_environment::clang_tarball'
include_recipe 'travis_build_environment::packer'
include_recipe 'travis_build_environment::heroku_toolbelt'
include_recipe 'travis_build_environment::yarn'
include_recipe 'travis_build_environment::shellcheck'
include_recipe 'travis_build_environment::shfmt'
include_recipe 'travis_build_environment::locale'
include_recipe 'travis_build_environment::hostname'
include_recipe 'travis_build_environment::sysctl'
