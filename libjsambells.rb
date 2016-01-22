# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Libjsambells < Formula
  desc ""
  homepage ""
  url "https://github.com/iamamused/libjsambells/archive/1.0.3.tar.gz"
  version "1.0.3"
  sha256 "1666374362e88cc3092e7ff2d95824e0341070557ccacc55f1e25a9214e4df98"

  def install
	  system "make", "-f", "BrewMakefile"
	  share.install Dir["./share/*"]
	  bin.install "bin/googlesheet2localizablestrings"
  end
end
