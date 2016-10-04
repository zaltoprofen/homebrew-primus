require 'formula'

class GitSubcommands < Formula
  homepage 'https://github.com/jmatsu/git-subcommands'
  head 'https://github.com/jmatsu/git-subcommands.git', :branch => 'master'

  def install
    prefix.install 'src'
    bin.install Dir['bin/*']
  end
end
