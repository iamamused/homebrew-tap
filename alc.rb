class Alc < Formula
  desc ""
  homepage ""
  url "https://github.com/iamamused/alc/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "7383e775aec3300e990dbba2a96a29372370e52952047cca88eda3285a05780a"

 # depends_on jq

  def install
	bin.install "alc"
  end

end
