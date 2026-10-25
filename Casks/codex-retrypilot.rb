cask "codex-retrypilot" do
  version "1.0.4"
  sha256 "cde3035f94d51b2e19a7a0916215285fe44684939ed0118a77137d5c666ad35a"

  url "https://github.com/yuxi1989/Codex-RetryPilot/releases/download/v#{version}/Codex-RetryPilot-#{version}.zip"
  name "Codex-RetryPilot"
  desc "Auto-clicks Retry when Codex hits \"at capacity\""
  homepage "https://github.com/yuxi1989/Codex-RetryPilot"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Codex-RetryPilot.app"

  zap trash: "~/Library/Application Support/CodexRetry"
end
