require 'formula'

class UnlimitedBladeWorks < Formula
  homepage 'https://github.com/zaltoprofen/unlimited-blade-works'
  head 'https://github.com/zaltoprofen/unlimited-blade-works.git', :branch => 'master'

  def install
    bin.install Dir['*']
  end
end
