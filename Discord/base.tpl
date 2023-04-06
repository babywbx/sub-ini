{% if request.target == "clash" or request.target == "clashr" %}

dns:
  enabled: true
  listen: 0.0.0.0:53
  default-nameserver:
    - 119.29.29.29
    - 8.8.8.8
  nameserver:
   - https://1.1.1.1/dns-query
   - https://doh.pub/dns-query
   - https://223.5.5.5/dns-query
   - https://dns.google/dns-query

{% endif %}

{% if request.target == "surge" %}

[General]
loglevel = notify
bypass-system = true
doh-follow-outbound-mode=true
skip-proxy = 127.0.0.1,192.168.0.0/16,10.0.0.0/8,172.16.0.0/12,100.64.0.0/10,localhost,*.local,e.crashlytics.com,captive.apple.com,::ffff:0:0:0:0/1,::ffff:128:0:0:0/1
bypass-tun = 192.168.0.0/16,10.0.0.0/8,172.16.0.0/12
doh-server = https://1.1.1.1/dns-query
dns-server = 119.29.29.29,223.5.5.5

{% endif %}