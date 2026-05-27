cask "github-store" do
  arch arm: "arm64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "0fbf1b02b4a81d2e37820f2cb6667d1d42e0b7a331d20434a165f7ec2ea24876",
         intel: "4b6e9d88f7482b2c7b97e3f88b40f5684ac9dca0108015a2c5a52f530ae4907a"

  url "https://github.com/OpenHub-Store/GitHub-Store/releases/download/v#{version}/GitHub-Store-#{version}-#{arch}.dmg"
  name "GitHub Store"
  desc "Cross-platform app store for GitHub releases"
  homepage "https://github.com/OpenHub-Store/GitHub-Store"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: :big_sur

  app "GitHub-Store.app"

  uninstall quit: "zed.rainxch.githubstore"

  zap trash: [
    "~/Library/Application Support/GitHub-Store",
    "~/Library/Caches/GitHub-Store",
    "~/Library/Logs/GitHub-Store",
    "~/Library/Preferences/zed.rainxch.githubstore.plist",
    "~/Library/Saved Application State/zed.rainxch.githubstore.savedState",
  ]

  caveats <<~EOS
    GitHub Store is not yet signed with an Apple Developer ID.
    macOS Gatekeeper will block it from launching with a "damaged" or
    "cannot be opened" error.

    To allow the app to launch, run:

      xattr -dr com.apple.quarantine "#{appdir}/GitHub-Store.app"

    This step is required after each install or upgrade until the app is
    signed and notarized.
  EOS
end
