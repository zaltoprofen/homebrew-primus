require 'formula'

class GitSubcommands < Formula
  homepage 'https://github.com/jmatsu/git-subcommands'
  head 'https://github.com/jmatsu/git-subcommands.git', :branch => 'master'

  def install
    prefix.install 'src'
    %w(ahead branch-extras ignore license root-dir).each do |subcommand|
      bin.install "bin/git-#{subcommand}"
    end
  end
end
