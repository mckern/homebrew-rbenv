# This command is unaware of any aliases -- fix that?

class RbenvIterate < Formula
  desc "Execute a command in multiple rubies"
  homepage "https://github.com/johann-p-koebbe/rbenv-iterate"
  head "https://github.com/johann-p-koebbe/rbenv-iterate.git"

  bottle :unneeded

  depends_on :rbenv

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "iterate.bash", shell_output("rbenv hooks install")
  end
end
