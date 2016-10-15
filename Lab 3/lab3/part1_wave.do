onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /detectwin_tb/DUT/ain
add wave -noupdate /detectwin_tb/DUT/bin
add wave -noupdate /detectwin_tb/DUT/win_line
add wave -noupdate /detectwin_tb/DUT/winners
add wave -noupdate /detectwin_tb/DUT/win_line_a
add wave -noupdate /detectwin_tb/DUT/win_line_b
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {74 ps}
