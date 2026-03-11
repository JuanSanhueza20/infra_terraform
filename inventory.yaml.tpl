all:
  hosts:
    server_vpn:
      ansible_host: ${bastion_vpn}
    server_interno:
      ansible_host: ${server_interno}
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
