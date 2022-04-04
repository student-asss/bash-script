#!/bin/bash

# Tables and Chains
# Linux firewall iptables has four default tables.
# 1. Filter
#    'Input' – the rules in this chain control the packets received by the server.
#    'Output' – this chain controls the packets for outbound traffic.
#    'Forward' – this set of rules controls the packets that are routed through the server.
# 2. Network Address Translation (NAT)
# This table contains NAT (Network Address Translation) rules for routing packets 
#    'Prerouting' – this chain assigns packets as soon as the server receives them.
#    'Output' – works the same as the output chain we described in the filter table.
#    'Postrouting' – the rules in this chain allow making changes to packets after they leave the output chain.
# 3. Mangle
# The Mangle table adjusts the IP header properties of packets. 
#    Prerouting
#    Postrouting
#    Output
#    Input
#    Forward
# 4. Raw
# The Raw table is used to exempt packets from connection tracking.
#    Prerouting
#    Output
# 5. Security (Optional)
#Some versions of Linux also use a Security table to manage special access rules. This table includes input, output, and forward chains, much like the filter table.

# Targets
#    'Accept' – this rule accepts the packets to come through the iptables firewall.
#    'Drop' – the dropped package is not matched against any further chain. When Linux iptables drop an incoming connection to your server, the person trying to connect does not receive an error. It appears as if they are trying to connect to a non-existing machine.
#    'Return' – this rule sends the packet back to the originating chain so you can match it against other rules.
#    'Reject' – the iptables firewall rejects a packet and sends an error to the connecting device.

# sudo iptables [option] CHAIN_rule [-j target]
# List of some common iptables options:
#    '-A' --append – Add a rule to a chain (at the end).
#    '-C' --check – Look for a rule that matches the chain’s requirements.
#    '-D' --delete – Remove specified rules from a chain.
#    '-F' --flush – Remove all rules.
#    '-I' --insert – Add a rule to a chain at a given position.
#    '-L' --list – Show all rules in a chain.
#    '-N' -new-chain – Create a new chain.
#    '-v' --verbose – Show more information when using a list option.
#    '-X' --delete-chain – Delete the provided chain.
#    '-p' – Check for the specified protocol (tcp).
#    '--dport' – Specify the destination port.
#    '-j jump' – Take the specified action.
#    '-m' – Match the specified option.
#    '-iprange' – Tell the system to expect a range of IP addresses instead of a single one.
#    '--src-range' – Identifies the range of IP addresses.

# Check Current iptables Status
sudo iptables -L

# Enable Loopback Traffic
# It’s safe to allow traffic from your own system (the localhost).
sudo iptables -A INPUT -i lo -j ACCEPT

# Allow Traffic on Specific Ports
# To allow HTTP web traffic
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# To allow only incoming SSH (Secure Shell) traffic
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# '--dport' - destinaton port, '--sport' - source port
sudo iptables -A INPUT -P tcp --sport 22 -j ACCEPT

# To allow HTTPS internet traffic
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# Control Traffic by IP Address
# ACCEPT traffic from a specific IP address.
sudo iptables -A INPUT -s 192.168.0.27 -j ACCEPT

# DROP traffic from an IP address, combine with port also.
sudo iptables -A INPUT -s 192.168.0.27 -j DROP
sudo iptables -A INPUT -s 192.168.0.27 -p tcp --dport 22 -j DROP

# REJECT traffic from a range of IP addresses
sudo iptables -A INPUT -m iprange --src-range 192.168.0.1-192.168.0.255 -j REJECT

# Dropping Unwanted Traffic
sudo iptables -A INPUT -j DROP

# Delete a Rule
sudo iptables -L --line-numbers # list all rules
# AND
sudo iptables -D INPUT <Number> # Replace <Number> with the actual rule line number

# Save Your Changes
sudo iptables-save > name_of_file && sudo iptables-restore < name_of_file
# OR
sudo /sbin/iptables–save # Debian-based systems
# OR
sudo /sbin/service iptables save # Red-Hat based systems

