let
  # Ports referenced in `caddy`.
  ports = {
    authelia = 50000;
    calibre-web = 50001;
    cryptpad = {
      http = 50002;
      websocket = 50003;
    };
    immich = 50004;
    komga = 50005;
    paperless-ngx = 50006;
    uptime-kuma = 50007;
    vaultwarden = 50008;
  };
in
{
  _module.args = {
    inherit ports;
  };

  imports = [
    ./services/caddy.nix
    ./services/cryptpad.nix
    ./services/plex.nix
    ./services/vaultwarden.nix
  ];

  services.openssh.enable = true;
  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBshpqm8SogcHSuol7cFNLi9R+WJR8XoWXpM6gmxLWb1 grim@horizon"
  ];
}

