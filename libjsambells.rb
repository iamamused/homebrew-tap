# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
#
# To make an update
#
#   git tag <version>
#	git push --tags
# 	brew edit libjsambells;
#
# update the version number
# 
# 	brew fetch libjsambells --build-from-source;
# 
# copy the hash to this file, update the version number and push to git.
#
# 	brew update; brew upgrade libjsambells; brew cleanup libjsambells;

class Libjsambells < Formula
  desc "Collection of tools freely available online elsewhere"
  homepage "http://jeffreysambells.com"
  url "https://github.com/iamamused/libjsambells/archive/1.0.14.tar.gz"
  version "1.0.14"
  sha256 "99097c8dba093931100d25033ce91a6e7e2c46bfa5122ff880239c7c914e401c"

  def install
	  system "make", "-f", "BrewMakefile"
	  share.install Dir["./share/*"]
	  bin.install "bin/googlesheet2localizablestrings"
  end
  
end
