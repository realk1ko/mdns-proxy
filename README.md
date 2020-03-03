# mdns-proxy
mdns-proxy can be installed on a host in any private network, to make mDNS-enabled (e. g. Apple devices) and 
traditional hosts (e. g. Windows devices) share the `.local` domain. This is achieved by mdns-proxy responding to all 
multicast DNS requests within the network and forwarding the DNS requests to the local name server.

## Usage
To use mdns-proxy simply run the following command on a Linux host first: `. ./build.sh`

This will generate a new Docker image that can then be run with the following command: 
`docker run --name mdns-proxy -d --restart unless-stopped --net=host mdns-proxy:latest`

**Please note:** Normally it is advised to not use `--net=host` with Docker. However, in this case it is required, as 
multicast DNS - per design - is link local and does not span different networks, including virtual ones on your host. 

## License
This repository uses the mDNS-Unicast-Lookup program created by Matthew Iselin at it's core. mDNS-Unicast-Lookup is 
licensed under the ISC license. A copy of said license can be found on the original repository 
[here](https://github.com/miselin/mDNS-Unicast-Lookup/blob/master/LICENSE "here").

mdns-proxy is licensed under the MIT license. A copy of said license can be found 
[here](https://github.com/fenik/mdns-proxy/blob/master/LICENSE.md "here").

