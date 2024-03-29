# typed: false
# frozen_string_literal: true

class RbenvChefdk < Formula
  desc "Treat ChefDK as another version in rbenv"
  homepage "https://github.com/docwhat/rbenv-chefdk"

  head "https://github.com/docwhat/rbenv-chefdk.git",
       branch: "master"

  depends_on "rbenv"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<-DISCLAIMER.undent
    This formula does not depend on or install ChefDK for you. There's
    too many different ways to ensure that it's installed so that was
    left as an exercise for the user.

    To complete installation, run:
      $ mkdir "$(rbenv root)/versions/chefdk"
      $ echo chef >> ~/.no_bundle_exec
      $ echo berks >> ~/.no_bundle_exec

    You can confirm that this is set up correctly
      $ rbenv shell chefdk
      $ rbenv rehash
      $ rbenv which ruby
      /opt/chefdk/embedded/bin/ruby
    DISCLAIMER
  end

  test do
    assert_match "chefdk.bash", shell_output("rbenv hooks install")
  end
end
