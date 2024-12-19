{
  services.home-assistant = {
    enable = true;
        openFirewall = true;

    extraComponents = [
      # Components required to complete the onboarding
      "analytics"
      "apple_tv"
      "cups"
      "default_config"
      "google_translate"
      "homekit"
      "homekit_controller"
      "icloud"
      "ipp"
      "met"
      "radio_browser"
      "samsungtv"
      "shopping_list"
      "smartthings"
      "snmp"
      "tplink"
      "upnp"

      # Recommended for fast zlib compression
      # https://www.home-assistant.io/integrations/isal
      "isal"
    ];
    config = {
      # Includes dependencies for a basic setup
      # https://www.home-assistant.io/integrations/default_config/
      default_config = {};
      homeassistant.time_zone = "Africa/Johannesburg";
      homeassistant.unit_system = "metric";
      homeassistant.temperature_unit = "C";
      homeassistant.name = "rpi4";
    };
  };
}