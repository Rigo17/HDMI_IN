vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+D:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+D:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../ipstatic/src/SyncBase.vhd" \
"../../../ipstatic/src/EEPROM_8b.vhd" \
"../../../ipstatic/src/TWI_SlaveCtl.vhd" \
"../../../ipstatic/src/GlitchFilter.vhd" \
"../../../ipstatic/src/SyncAsync.vhd" \
"../../../ipstatic/src/DVI_Constants.vhd" \
"../../../ipstatic/src/SyncAsyncReset.vhd" \
"../../../ipstatic/src/PhaseAlign.vhd" \
"../../../ipstatic/src/InputSERDES.vhd" \
"../../../ipstatic/src/ChannelBond.vhd" \
"../../../ipstatic/src/ResyncToBUFG.vhd" \
"../../../ipstatic/src/TMDS_Decoder.vhd" \
"../../../ipstatic/src/TMDS_Clocking.vhd" \
"../../../ipstatic/src/dvi2rgb.vhd" \
"../../../../hdmi_in_ipcore_vivado2017.3.srcs/sources_1/ip/dvi2rgb_0/sim/dvi2rgb_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

