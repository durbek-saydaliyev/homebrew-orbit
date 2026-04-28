class Orbit < Formula
  desc "Memory observability and safe optimizer CLI"
  homepage "https://github.com/durbek-saydaliyev/orbit"
  url "https://github.com/durbek-saydaliyev/orbit/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c4fe48b1675a881f6a7008122d330c4e2cdf2daea94eaa8c8e512a318358c276"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-X orbit/internal/cli.version=#{version}", "-o", bin/"orbit", "./cmd/orbit"
  end

  test do
    system "#{bin}/orbit", "stats"
  end
end

