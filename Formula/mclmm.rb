class Mclmm < Formula
  desc "Lightweight macOS cleaner CLI (caches, Xcode, .build, brew, uninstall)"
  homepage "https://github.com/mantrandev/mclmm"
  url "https://github.com/mantrandev/mclmm/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "852f5b7cf4a41b1c2a53e7533dc5b823fd0840449673d40db1612e14a8fabc9a"
  license "MIT"

  def install
    bin.install "mclmm"
    %w[storage scan xcode cache clean app-list uninstall].each do |s|
      bin.install_symlink "mclmm" => "mclmm-#{s}"
    end
  end

  test do
    assert_match "mclmm", shell_output("#{bin}/mclmm --help")
  end
end
