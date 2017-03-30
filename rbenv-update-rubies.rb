# This will uninstall any aliases set up by `rbenv-alias`; fix that

class RbenvUpdateRubies < Formula
  desc "Update rbenv ruby versions"
  homepage "https://github.com/toy/rbenv-update-rubies"
  head "https://github.com/toy/rbenv-update-rubies.git"

  bottle :unneeded

  depends_on :rbenv
  depends_on "rbenv-whatis"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "update-rubies.bash", shell_output("rbenv hooks install")
  end
end
