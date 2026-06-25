cask "dashee" do
  version "3.0.0"
  sha256 :no_check # Update with actual shasum when releasing

  # URL would typically point to a GitHub release containing the zipped .app or a DMG
  url "https://github.com/snehmatic/dashee/releases/download/v#{version}/Dashee-macOS.zip"
  name "Dashee"
  desc "Premium Native macOS GUI Dashboard for LiteLLM Pacing & Usage Metrics"
  homepage "https://github.com/snehmatic/dashee"

  depends_on macos: ">= :ventura"

  app "Dashee.app"

  zap trash: [
    "~/Library/Application Support/Dashee",
    "~/Library/Preferences/com.dashee.app.plist",
    "~/Library/Saved Application State/com.dashee.app.savedState",
  ]
end
