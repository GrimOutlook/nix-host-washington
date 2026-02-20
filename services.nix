{
  modulesPath,
  lib,
  pkgs,
  ...
} @ args:
{
  imports = [
    ./services/caddy.nix
    ./services/vaultwarden.nix
  ];

  services.openssh.enable = true;
  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBshpqm8SogcHSuol7cFNLi9R+WJR8XoWXpM6gmxLWb1 grim@horizon"
  ];
}

