class Burny < Formula
  desc "Menu bar app showing your Claude Code and Codex plan limits"
  homepage "https://github.com/giacolaiacomo/burny"
  url "https://github.com/giacolaiacomo/burny/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "REPLACE_WITH_SHA256"
  license "MIT"

  depends_on :macos

  def install
    # Built from source on your Mac with the Swift compiler from the Xcode Command Line Tools.
    system "./scripts/build-app.sh", prefix/"Burny.app"
    bin.install_symlink prefix/"Burny.app/Contents/MacOS/Burny" => "burny"
  end

  service do
    run [opt_prefix/"Burny.app/Contents/MacOS/Burny"]
    keep_alive successful_exit: false
    # Never "background": macOS would throttle the claude CLI Burny runs for /usage.
    process_type :interactive
  end

  test do
    system bin/"burny", "--self-test"
  end
end
