cask "codex-retrypilot" do
  version "1.0.2"
  sha256 "d817126d4d466ab2b722d73cef80efa80f474e94d4bb3c1cab5c2e66de12143d"

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
