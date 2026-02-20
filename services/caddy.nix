{ports, ...}:
{
  services.caddy = {
    enable = true;
    email = "caddy@grimaldifamily.org";
    virtualHosts = {
      "passwords.grimaldifamily.org" = {
        extraConfig = ''
          reverse_proxy http://washington.home.arpa:${builtins.toString ports.vaultwarden}
        '';
      };
    };
  };
}
