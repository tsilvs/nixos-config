{ ... }:

{
  config = {
    systemSettings = {
      # users
      users = [ "tsilvs" "guest" "aka" ];
      adminUsers = [ "tsilvs" ];

      # hardware
      cachy.enable = true;
      cachy.variant = "lts";
      bluetooth.enable = true;
      powerprofiles.enable = true;
      tlp.enable = true;
      printing.enable = true;

      # software
      flatpak.enable = true;
      gaming.enable = true;
      virtualization = {
        docker.enable = true;
        virtualMachines.enable = true;
        winapps.enable = true;
      };
      brave.enable = true;

      # wm
      plasma.enable = true;
      # hyprland.enable = true;

      # dotfiles
      dotfilesDir = "/etc/nixos";

      # security
      security = {
        automount.enable = true;
        blocklist.enable = true;
        doas.enable = true;
        firejail.enable = false; # TODO setup firejail profiles
        firewall.enable = true;
        gpg.enable = true;
        openvpn.enable = true;
        sshd.enable = false;
      };

      # style
      stylix = {
        enable = true;
        theme = "atelier-savanna";
      };
    };

    # services.thermald.enable = true;
    # services.asusd.enable = true;
    # services.supergfxd.enable = true;
    # environment.systemPackages = with pkgs; [
      # asusctl
      # supergfxctl
    # ];

    users.users.tsilvs.description = "Seva";
    home-manager.users.tsilvs.userSettings = {
      name = "Seva Tsiliurik";
      email = "tsilvs@proton.me";
    };

    users.users.guest.description = "Seva";
    home-manager.users.tsilvs.userSettings = {
      name = "Guest";
    };

    users.users.aka.description = "Seva";
    home-manager.users.tsilvs.userSettings = {
      name = "Aka";
    };

    # services.displayManager.defaultSession = "hyprland";

  };

}
