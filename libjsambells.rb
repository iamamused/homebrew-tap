# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
#
# To make an update
#
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
  url "https://github.com/iamamused/libjsambells/archive/1.0.10.tar.gz"
  version "1.0.10"
  sha256 "94348d3dbb991ff61b8b37f7307cbf6d05dc994874b30b66c942ddd04924be1a"

  def install
	  system "make", "-f", "BrewMakefile"
	  share.install Dir["./share/*"]
	  bin.install "bin/googlesheet2localizablestrings"
  end
  
end
