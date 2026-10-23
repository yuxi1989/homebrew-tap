cask "codex-retrypilot" do
  version "1.0.1"
  sha256 "73ea74b4bdfd445290ba57ff011b9dcc451b925c0e2f83ac82002711f9997d0e"

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
