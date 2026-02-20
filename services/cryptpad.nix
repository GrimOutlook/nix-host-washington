{ports, ...}:
{
  services.cryptpad = {
    enable = true;
    settings = {
      httpUnsafeOrigin = "https://office.grimaldifamily.org";
      httpSafeOrigin = "https://office-sandbox.grimaldifamily.org";
      httpPort = ports.cryptpad.http;
      websocketPort = ports.cryptpad.websocket;
    };
  };
}
