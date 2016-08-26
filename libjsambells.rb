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
  sha256 "23917192e5acfef994d1a3d03416ce7b235dae633a8f95d0231fe805d06f6937"

  def install
	  system "make", "-f", "BrewMakefile"
	  share.install Dir["./share/*"]
	  bin.install "bin/googlesheet2localizablestrings"
  end
  
end
