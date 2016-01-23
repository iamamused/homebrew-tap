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
  sha256 "d10f89ea0ca63b9c0c6afc05aba9f6a4fcfb49cfcb0a2eccdcd23e3b047fe964"

  def install
	  system "make", "-f", "BrewMakefile"
	  share.install Dir["./share/*"]
	  bin.install "bin/googlesheet2localizablestrings"
  end
  
end
