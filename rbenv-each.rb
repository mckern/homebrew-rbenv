class RbenvEach < Formula
  desc "Run a command across all installed rubies"

  homepage "https://github.com/rbenv/rbenv-each"
  head "https://github.com/rbenv/rbenv-each.git"

  bottle :unneeded

  depends_on "rbenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "each.bash", shell_output("rbenv hooks install")
  end
end
