# frozen_string_literal: true

class RbenvDownload < Formula
  desc 'Download ruby binaries from RVM repository'
  homepage 'https://github.com/garnieretienne/rvm-download'

  head 'https://github.com/garnieretienne/rvm-download.git',
       branch: 'master'

  depends_on 'rbenv'

  def install
    prefix.install Dir['*']
  end

  test do
    assert_match 'download.bash', shell_output('rbenv hooks install')
  end
end
