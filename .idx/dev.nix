{pkgs}: {
  channel = "stable-24.05";
  packages = [
    pkgs.nodejs_20
  ];
  env = {
    PUBLIC_API_URL="https://projects.vistortch.edu";
    PUBLIC_STUDIO_URL="https://editor.vistortch.edu";
    PUBLIC_MAX_UPLOAD_SIZE="32";
    PUBLIC_CAPTCHA_ENABLED="true";
  };
  idx.extensions = [
    "svelte.svelte-vscode"
    "vue.volar"
  ];
  idx.previews = {
    previews = {
      web = {
        command = [
          "npm"
          "run"
          "dev"
          "--"
          "--port"
          "$PORT"
          "--host"
          "0.0.0.0"
        ];
        manager = "web";
      };
    };
  };
  idx.workspace.onCreate = {
    npm-install = "npm i --force";
  };
}
