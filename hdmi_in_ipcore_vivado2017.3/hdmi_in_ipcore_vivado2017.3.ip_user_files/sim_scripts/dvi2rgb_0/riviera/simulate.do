onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+dvi2rgb_0 -L xil_defaultlib -L secureip -O5 xil_defaultlib.dvi2rgb_0

do {wave.do}

view wave
view structure

do {dvi2rgb_0.udo}

run -all

endsim

quit -force
