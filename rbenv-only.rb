# typed: false
# frozen_string_literal: true

class RbenvOnly < Formula
  desc "Run a command against specified installed ruby versions"

  homepage "https://github.com/mckern/rbenv-only"
  head "https://github.com/mckern/rbenv-only.git",
       branch: "master"

  depends_on "rbenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "only.bash", shell_output("rbenv hooks install")
  end
end
