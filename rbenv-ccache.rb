# typed: false
# frozen_string_literal: true

class RbenvCcache < Formula
  desc "Make Ruby build faster by using ccache"
  homepage "https://github.com/yyuu/rbenv-ccache"

  head "https://github.com/yyuu/rbenv-ccache.git",
       branch: "master"

  depends_on "ccache"
  depends_on "rbenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "ccache.bash", shell_output("rbenv hooks install")
  end
end
