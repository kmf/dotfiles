{ fetchFromGitHub,
  buildHomeAssistantComponent,
  propcache,
  pyyaml,
  umodbus,
}:

buildHomeAssistantComponent rec {

  owner = "davidrapan";
  domain = "ha-solarman";
  version = "24.12.16";

  src = fetchFromGitHub {
    owner = "davidrapan";
    repo = "ha-solarman";
    rev = "v${version}";
    sha256 = "sha256-09058b6c958f75a14cd6177126a145f726dbdb2c=";
  };
  dependencies = [
    propcache
    pyyaml
    umodbus
  ];
}