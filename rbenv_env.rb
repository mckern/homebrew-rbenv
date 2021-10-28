class RbenvEnv < Formula
  desc "Shows relevant environment variables"
  homepage "https://github.com/ianheggie/rbenv-env"

  url "https://github.com/ianheggie/rbenv-env.git",
    :tag => "1.4",
    :revision => "1fa3804053d8b0f12677a0004ac6ccfad7ae1a1a"

  head "https://github.com/ianheggie/rbenv-env.git"

  bottle :unneeded

  depends_on "rbenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "env.bash", shell_output("rbenv hooks install")
  end
end
