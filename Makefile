dtb-$(CONFIG_ARCH_MSM8909) += custom-overlay.dtb

$(obj)/%.dtb: $(src)/%.dts FORCE
	$(call if_changed_dep,dtc)

dtbs: $(addprefix $(obj)/,$(dtb-y))
clean-files := *.dtb
