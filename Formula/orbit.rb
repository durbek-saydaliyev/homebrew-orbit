class Orbit < Formula
  desc "Memory observability and safe optimizer CLI"
  homepage "https://github.com/durbek-saydaliyev/orbit"
  url "https://github.com/durbek-saydaliyev/orbit/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-X orbit/internal/cli.version=#{version}", "-o", bin/"orbit", "./cmd/orbit"
  end

  test do
    system "#{bin}/orbit", "stats"
  end
end

