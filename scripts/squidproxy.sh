# Shortcuts
FILTER="iptables -t filter"
NAT="iptables -t nat"
PORT=9090
GROUP=998  # docker

# Proxy HTTP access through Squid
#$NAT -A OUTPUT -m owner --gid-owner $GROUP -j ACCEPT
#$NAT -A OUTPUT -p tcp --dport 80 -j REDIRECT --to-port $PORT

# Reject HTTPS
#$FILTER -A OUTPUT -m owner --uid-owner 1000 -j ACCEPT
#$filter -A OUTPUT -p tcp --dport 443 -j REJECT

# Redirect lxc outgoing
$NAT -A PREROUTING -i lxcbr0 -p tcp --dport 80 -j REDIRECT --to-port $PORT
$NAT -A PREROUTING -i docker0 -p tcp --dport 80 -j REDIRECT --to-port $PORT
