class Mclmm < Formula
  desc "Lightweight macOS cleaner CLI (caches, Xcode, .build, brew, uninstall)"
  homepage "https://github.com/mantrandev/mclmm"
  url "https://github.com/mantrandev/mclmm/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "67e242ac13a898b32d485b251bc40caa3a93edb66e553ce71f8ca09283a9aac9"
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
