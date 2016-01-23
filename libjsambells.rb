# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
#
# brew edit libjsambells
# update the version number
# brew fetch libjsambells --build-from-source
# copy the hash

class Libjsambells < Formula
  desc "Collection of tools freely available online elsewhere"
  homepage "http://jeffreysambells.com"
  url "https://github.com/iamamused/libjsambells/archive/1.0.4.tar.gz"
  version "1.0.4"
  sha256 "25b355350e4bdc0219b7e0a416baf51a2c4f5093794d9c4894139a43d779f07e"

  def install
	  system "make", "-f", "BrewMakefile"
	  share.install Dir["./share/*"]
	  bin.install "bin/googlesheet2localizablestrings"
  end
  
end
