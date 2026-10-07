class Mclmm < Formula
  desc "Lightweight macOS cleaner CLI (caches, Xcode, .build, brew, uninstall)"
  homepage "https://github.com/mantrandev/mclmm"
  url "https://github.com/mantrandev/mclmm/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "6102372e215051682f471385d4faa3b1ffcd600cf900179f668a359a4811107e"
  license "MIT"

  def install
    bin.install "mclmm"
    %w[storage scan xcode cache js clean app-list uninstall].each do |s|
      bin.install_symlink "mclmm" => "mclmm-#{s}"
    end
  end

  test do
    assert_match "mclmm", shell_output("#{bin}/mclmm --help")
  end
end
