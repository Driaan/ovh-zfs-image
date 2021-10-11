ARTIFACTS = \
  debian.img \
  packer_cache \
  output-debian


# .PHONY: all clean

# all: debian.img
# 	@:

# clean:
# 	rm -rf $(ARTIFACTS)

debian.img: output-debian/debian.qcow2
	# vbox-img convert --srcfilename $< --dstformat RAW --dstfilename $@
	# VBoxManage clonehd box-disk1.vmdk ubuntu.vdi --format vdi
	# qemu-img convert -f vdi -O qcow2 ubuntu.vdi ubuntu.qcow2 
	qemu-img convert -f vdi -O qcow2 $< $@


output-debian/debian.qcow2:
	packer build build.pkr.hcl
	ln output-debian/debian-*.qcow2 $@
