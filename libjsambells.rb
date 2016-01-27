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
  url "https://github.com/iamamused/libjsambells/archive/1.0.6.tar.gz"
  version "1.0.6"
  sha256 "4a06cc2a502a36f0c1bbf8e82cc6a16a3df0d9cffe79da71b88e410dae38e47b"

  def install
	  system "make", "-f", "BrewMakefile"
	  share.install Dir["./share/*"]
	  bin.install "bin/googlesheet2localizablestrings"
  end
  
end
