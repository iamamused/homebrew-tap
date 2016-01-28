# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
#
# brew edit libjsambells
# update the version number
# brew fetch libjsambells --build-from-source
# copy the hash
# push to git
# brew update
# brew upgrade libjsambells

class Libjsambells < Formula
  desc "Collection of tools freely available online elsewhere"
  homepage "http://jeffreysambells.com"
  url "https://github.com/iamamused/libjsambells/archive/1.0.6.tar.gz"
  version "1.0.6"
  sha256 "0310b75b7dba116eb4f8824df92ba68718aad9cef5afb5db4543477cf5c493f3"

  def install
	  system "make", "-f", "BrewMakefile"
	  share.install Dir["./share/*"]
	  bin.install "bin/googlesheet2localizablestrings"
  end
  
end
