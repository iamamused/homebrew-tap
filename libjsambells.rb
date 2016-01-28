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
  url "https://github.com/iamamused/libjsambells/archive/1.0.8.tar.gz"
  version "1.0.8"
  sha256 "2074fcf679ce7194364e9122a6582efa3b3673e99b7dd8e7bc104a36cc01c922"

  def install
	  system "make", "-f", "BrewMakefile"
	  share.install Dir["./share/*"]
	  bin.install "bin/googlesheet2localizablestrings"
  end
  
end
