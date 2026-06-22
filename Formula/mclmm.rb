class Mclmm < Formula
  desc "Lightweight macOS cleaner CLI (caches, Xcode, .build, brew, uninstall)"
  homepage "https://github.com/mantrandev/mclmm"
  url "https://github.com/mantrandev/mclmm/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "eb6959d7fa92fd1538ec5c0cec9ce1d82046965547e531a3181f3ab497b3e881"
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
