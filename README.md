POLLUTION
=========

What
====

a lame virsh implementation for EC2 in order to be able to create _simplistic_ EC2 environments export them in JSON and be able to reimport them at will.

Pollution will comprise the following components:
	- pirsh: the ala virsh shell to do the actual configuration of your dev environment
	- pollute: the ala vagrant tool for publish or unpublish your environment

EC2 interface will be used for POC. The goal would be to port it to libvirt. This would enable developers to share JSON files and push them on different platforms.

How
===

The recipe:
	- Ruby and other nice shiny stones
	- Fog
	- Chef
