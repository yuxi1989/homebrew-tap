cask "codex-retrypilot" do
  version "1.0.1"
  sha256 "f7dd457ee5da2a4ffc9f7a3363256c2f98f118e00359a990e2fd7ce5fdb845e4"

  url "https://github.com/yuxi1989/Codex-RetryPilot/releases/download/v#{version}/Codex-RetryPilot-#{version}.zip"
  name "Codex-RetryPilot"
  desc "Auto-clicks Retry when Codex hits \"at capacity\""
  homepage "https://github.com/yuxi1989/Codex-RetryPilot"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Codex-RetryPilot.app"

  zap trash: "~/Library/Application Support/CodexRetry"
end
