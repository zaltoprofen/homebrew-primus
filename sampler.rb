class Sampler < Formula
  desc "Implementation of reservoir sampling in golang"
  homepage "https://github.com/zaltoprofen/sampler"
  url "https://github.com/zaltoprofen/sampler/archive/v0.1.tar.gz"
  sha256 "bef68d3e79b9f9db2354d40ba3c97591a1f40a318bc982ed74025a635f849def"

  depends_on "go" => :build

  def install
    mkdir_p buildpath/"src/github.com/zaltoprofen/"
    ln_s buildpath, buildpath/"src/github.com/zaltoprofen/sampler"
    ENV["GOPATH"] = buildpath
    chdir "cmd/sampler" do
      system "go", "build"
      bin.install "sampler"
    end
  end

  test do
    assert_equal 10, shell_output("seq 100 | #{bin}/sampler -k 10").strip.split("\n").length
  end
end
