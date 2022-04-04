#!/bin/bash

# To install nslookup: apt-get install dnsutils -y
# Use 'man nslookup' for more info
# Use this command to find the address record for a domain
nslookup google.com

# View all the available DNS records using the '-type=any' option
nslookup -type=any google.com

# Lookup for an soa record SOA record (start of authority)
nslookup -type=soa google.com

# Lookup for an ns record NS (Name Server) record maps a domain name to a list of DNS servers authoritative for that domain
nslookup -type=ns google.com

# Lookup for an 'a' record
nslookup -type=a google.com

# Lookup for an mx record MX (Mail Exchange) record maps a domain name to a list of mail exchange servers for that domain
nslookup -type=mx google.com

# Lookup for an txt record TXT records are useful for multiple types of records like DKIM, SPF, etc.
nslookup -type=txt google.com

# Enable Debug Mode. It will help to get the information in terms of verbose mode.
nslookup -debug google.com

# Querying on a non-standard port. Domain name servers accept queries on port 53. using '-port= option'
nslookup -port=54 microsoft.com

# Reverse DNS Lookup
nslookup 192.168.0.101

# View Pointer Records
nslookup -type=ptr 192.168.0.1.in-addr.arpa

