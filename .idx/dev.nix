# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"
  packages = [
    pkgs.nodejs_20
    pkgs.bun
    pkgs.tree
  ];
  # Sets environment variables in the workspace
  env = { };
  idx = {
    extensions = [
      "bradlc.vscode-tailwindcss"
      "christian-kohler.path-intellisense"
      "dbaeumer.vscode-eslint"
      "dsznajder.es7-react-js-snippets"
      "eamodio.gitlens"
      "edwinhuish.better-comments-next"
      "esbenp.prettier-vscode"
      "formulahendry.auto-close-tag"
      "GitHub.vscode-pull-request-github"
      "IronGeek.vscode-env"
      "miguelsolorio.fluent-icons"
      "PKief.material-icon-theme"
      "rangav.vscode-thunder-client"
      "streetsidesoftware.code-spell-checker"
      "streetsidesoftware.code-spell-checker-spanish"
      "usernamehw.errorlens"
      "wix.vscode-import-cost"
    ];
    # Enable previews
    previews = {
      enable = true;
      previews = {
        # web = {
        #   # Example: run "npm run dev" with PORT set to IDX's defined port for previews,
        #   # and show it in IDX's web preview panel
        #   command = ["npm" "run" "dev"];
        #   manager = "web";
        #   env = {
        #     # Environment variables to set for your server
        #     PORT = "$PORT";
        #   };
        # };
      };
    };
    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
        # Example: install JS dependencies from NPM
        # npm-install = 'npm install';
      };
      onStart = {
        # Example: start a background task to watch and re-build backend code
        # watch-backend = "npm run watch-backend";
      };
    };
  };
}
