{
  services.samba = {
  enable = true;
  openFirewall = true;
  nmbd.enable = true;
  settings = {
    global = {
    "workgroup" = "GreatDane";
    "server string" = "oakenshield";
    "netbios name" = "oakenshield";
    "security" = "user";
    "hosts allow" = "192.168.0. 127.0.0.1 localhost";
    "hosts deny" = "0.0.0.0/0";
    "guest account" = "nobody";
    "map to guest" = "bad user";
    };
    "public" = {
      "path" = "/home/kmf/data/public";
      "browseable" = "yes";
      "read only" = "yes";
      "guest ok" = "yes";
      "create mask" = "0644";
      "directory mask" = "0755";
      "force user" = "kmf";
      "force group" = "users";
    };
  };
  };

services.samba-wsdd = {
  enable = true;
  openFirewall = true;
};

networking.firewall.allowPing = true;


}