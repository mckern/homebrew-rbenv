class RbenvCcache < Formula
  desc "Make Ruby build faster by using ccache"
  homepage "https://github.com/johann-p-koebbe/rbenv-ccache"
  head "https://github.com/yyuu/rbenv-ccache.git"

  bottle :unneeded

  depends_on "rbenv"
  depends_on "ccache"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "ccache.bash", shell_output("rbenv hooks install")
  end
end
