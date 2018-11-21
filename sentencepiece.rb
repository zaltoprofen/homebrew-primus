class Sentencepiece < Formula
  desc "Tokenizer for Neural Network-based text generation"
  homepage "https://github.com/google/sentencepiece"
  url "https://github.com/google/sentencepiece/archive/v0.1.6.tar.gz"
  sha256 "044cff3d862fe31ec41fd07ed67a44ca416bebd36ac6e7808f115f1b56cfec41"

  depends_on "cmake" => :build
  depends_on "protobuf"
  depends_on "gperftools" => :optional

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end

  test do
    system "#{bin}/spm_train", "--help"
    system "#{bin}/spm_normalize", "--help"
    system "#{bin}/spm_export_vocab", "--help"
    system "#{bin}/spm_encode", "--help"
    system "#{bin}/spm_decode", "--help"
  end
end
