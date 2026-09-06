class Mclmm < Formula
  desc "Lightweight macOS cleaner CLI (caches, Xcode, .build, brew, uninstall)"
  homepage "https://github.com/mantrandev/mclmm"
  url "https://github.com/mantrandev/mclmm/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "de06c2b66b7c015a53ed015111686260dfa2451895d43a31e60e9d9c18228ec2"
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
