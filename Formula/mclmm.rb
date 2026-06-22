class Mclmm < Formula
  desc "Lightweight macOS cleaner CLI (caches, Xcode, .build, brew, uninstall)"
  homepage "https://github.com/mantrandev/mclmm"
  url "https://github.com/mantrandev/mclmm/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "457d2fa831dcc32841ccad75c959a61059e9b1091eefaa418666de56f62264bd"
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
