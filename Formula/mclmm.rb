class Mclmm < Formula
  desc "Lightweight macOS cleaner CLI (caches, Xcode, .build, brew, uninstall)"
  homepage "https://github.com/mantrandev/mclmm"
  url "https://github.com/mantrandev/mclmm/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "27a4e15115b680aa140fcedd027cb10d917270613df4e3de04542614a0aa861c"
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
