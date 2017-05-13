class RbenvChefdk < Formula
  desc "Treat ChefDK as another version in rbenv"
  homepage "https://github.com/docwhat/rbenv-chefdk"
  head "https://github.com/docwhat/rbenv-chefdk.git"

  bottle :unneeded

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "chefdk.bash", shell_output("rbenv hooks install")
  end
end
