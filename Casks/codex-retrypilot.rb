cask "codex-retrypilot" do
  version "1.0.3"
  sha256 "eaa75f2cd9f6be3c888f33eaab07697deac3675fc6bb2c66839cc4996a760ba3"

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
