#!/bin/bash
#copy standard config if config folder is empty
#
CONF=/opt/dnscrypt-proxy/config/dnscrypt-proxy.toml
if [ ! -f "$CONF" ]; then
  echo "$(date): No config present, creating default one"
  cp /opt/dnscrypt-proxy/example-dnscrypt-proxy.toml /opt/dnscrypt-proxy/config/dnscrypt-proxy.toml
else
  echo "$(date): Config allready present"
fi
#Start dns-crypt service
#There is no option to start the service with a flag that overrides the listenting interface. You MUST change this in the initial config file!
echo "$(date): Starting dnscrypt-proxy"
/opt/dnscrypt-proxy/dnscrypt-proxy -config /opt/dnscrypt-proxy/config/dnscrypt-proxy.toml
sleep infinity &
wait $!
