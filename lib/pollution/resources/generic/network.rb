#!/usr/bin/env ruby

class Network
    attr_reader :netname 
    attr_reader :netaddr
    attr_reader :netmask

    def initialize(name="global")
        @netname = name
        @netaddr = nil
        @netmask = nil
        @router = nil
    end

    def initialize(name, cidr)
        @netname = name
        @netaddr = netaddr
        @netmask = netmask
        @router = router
    end

    def initialize(name, netaddr, netmask)
        @netname = name
        @netaddr = netaddr
        @netmask = netmask
        @router = router
    end
end
