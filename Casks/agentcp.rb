cask "agentcp" do
  version "1.0.0"
  sha256 "f7845eebe9c1bba07328dc9433efea58a221e27d7182af9a8d6368e909972304"

  url "https://github.com/n0ah37/agentcp/releases/download/v#{version}/AgentCP.dmg"
  name "AgentCP"
  desc "Manage Claude Code and Codex in one place"
  homepage "https://agentcp.noahgeneralgroup.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "AgentCP.app"

  zap trash: [
    "~/.agentcp",
    "~/Library/Application Support/AgentCP",
    "~/Library/Caches/inc.noahgeneralgroup.agentcp.ShipIt",
    "~/Library/Logs/AgentCP",
    "~/Library/Preferences/inc.noahgeneralgroup.agentcp.plist",
    "~/Library/Saved Application State/inc.noahgeneralgroup.agentcp.savedState",
  ]
end
