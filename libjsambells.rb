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
  url "https://github.com/iamamused/libjsambells/archive/1.0.12.tar.gz"
  version "1.0.12"
  sha256 "303503afd73ec2426d7846ee10f272b8216d56c6e3632be8151cea678d764f69"

  def install
	  system "make", "-f", "BrewMakefile"
	  share.install Dir["./share/*"]
	  bin.install "bin/googlesheet2localizablestrings"
  end
  
end
