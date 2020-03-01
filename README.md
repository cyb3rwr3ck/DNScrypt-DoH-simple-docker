# DNScrypt-DoH-simple-docker
Vanilla DoH Container poviding a simple DoH/DNSCrypt Resolver using the DNSCRypt Projects' dnscrypt-proxy

*Basics*:
* Check for the recent version of dnscrypt-proxy here: _https://github.com/DNSCrypt/dnscrypt-proxy/releases/_
* Change the version specified by _PROXY_VERSION_ in the Docker file (_./app/Dockerfile_)
* initially run the container using docker-compose (_docker-compose up_)
* Change the default config file _./config-dnscrypt-proxy/dnscrypt-proxy.toml_ to your needs
* Restart the container


*Usage*
* You MUST change the listening interface on the config file to something other than 127.0.0.1 which is unreachable using the docker port forwarding mechanism
* Afterwards the dnscrypt-proxy instance should be reachable via port 53 (tcp+udp) of the hosts localhost
* All activated log files will appear in the _config-dnscrypt-proxy_ folder outside of the container, so they are viewable from the host
