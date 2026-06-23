class Mclmm < Formula
  desc "Lightweight macOS cleaner CLI (caches, Xcode, .build, brew, uninstall)"
  homepage "https://github.com/mantrandev/mclmm"
  url "https://github.com/mantrandev/mclmm/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "c0fca5910eedcc451681178c1bd9ebf10573ff705c7267ddc6524f83edd625b7"
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
