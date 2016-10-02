onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /gameplay_tb/dut/xin
add wave -noupdate /gameplay_tb/dut/oin
add wave -noupdate /gameplay_tb/dut/xout
add wave -noupdate /gameplay_tb/dut/win
add wave -noupdate /gameplay_tb/dut/block
add wave -noupdate /gameplay_tb/dut/empty
add wave -noupdate /gameplay_tb/dut/adjacent
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 271
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {7 ps} {16 ps}
