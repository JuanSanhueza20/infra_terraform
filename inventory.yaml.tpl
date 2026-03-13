all:
  hosts:
    server_vpn:
      ansible_host: ${bastion_vpn}
      ansible_ssh_private_key_file: ./keys/wireguard_bastion/id_ed25519
    server_interno:
      ansible_host: ${server_interno}
      ansible_ssh_private_key_file: ./keys/private_server/id_ed25519
    ad_controller:
      ansible_host: ${ad_controller}

  children:
    servers_linux:
      hosts:
        server_vpn:
        server_interno:

    windows:
      hosts:
        ad_controller:
