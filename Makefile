PACKER-ARGS=-b -y -a -p ./preamble.txt
# -l ./license.txt

# By default, Make treats a target as the output filename. We need to mark every subfolder as "phony", because otherwise, it'll just say there is nothing to do and exit.
.PHONY: ./*

default: 3d-album-view \
	bomb-rating \
	copy-and-swap-fields \
	disable-seekbar-click-above-player \
	lyrics-font-size \
	output-now-playing-to-file \
	restore-beta-icons \
	split-artists-from-title \
	split-multi-value-fields \
	sqleditor \
	undock-panels

clean:
	rm -r bin

3d-album-view:
	pack-mmip $@ "3D Album View" $(PACKER-ARGS)

bomb-rating:
	pack-mmip $@ "Bomb Rating" $(PACKER-ARGS)

copy-and-swap-fields:
	pack-mmip $@ "Copy and Swap Fields" $(PACKER-ARGS)

disable-seekbar-click-above-player:
	pack-mmip $@ "Disable Seekbar Click above Player" $(PACKER-ARGS)

lyrics-font-size:
	pack-mmip $@ "Lyrics Font Size" $(PACKER-ARGS)

output-now-playing-to-file:
	pack-mmip $@ "Output Currently Playing Track To File" $(PACKER-ARGS)

restore-beta-icons:
	pack-mmip $@ "Restore Beta Icons" $(PACKER-ARGS)

split-artists-from-title:
	pack-mmip $@ "Split Artists from Title" $(PACKER-ARGS)

split-multi-value-fields:
	pack-mmip $@ "Split Multi-Value Fields" $(PACKER-ARGS)

sqleditor:
	pack-mmip $@ "SQL Editor" $(PACKER-ARGS)

undock-panels:
	pack-mmip $@ "Undock Panels" $(PACKER-ARGS)
