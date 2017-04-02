yosys -p "synth_ice40 -blif kronoresetpause.blif" kronoresetpause.v
arachne-pnr -d 1k -p kronoresetpause.pcf kronoresetpause.blif -o kronoresetpause.asc
icepack kronoresetpause.asc kronoresetpause.bin
icetime -tmd hx1k kronoresetpause.asc