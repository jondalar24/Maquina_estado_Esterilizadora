onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /maquinaestados/tics_p
add wave -noupdate /maquinaestados/clk
add wave -noupdate /maquinaestados/reset
add wave -noupdate /maquinaestados/start
add wave -noupdate /maquinaestados/temp_h
add wave -noupdate /maquinaestados/temp_p
add wave -noupdate /maquinaestados/state
add wave -noupdate /maquinaestados/sterilized
add wave -noupdate /maquinaestados/test
add wave -noupdate /maquinaestados/valid
add wave -noupdate /maquinaestados/alarm
add wave -noupdate -radix unsigned /maquinaestados/cont_temph
add wave -noupdate -radix unsigned /maquinaestados/cont_25ciclos
add wave -noupdate -radix unsigned /maquinaestados/cont_ticsp
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1051612417 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 240
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
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {1145741344 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 20us -dutycycle 50 -starttime 0us -endtime 1000us sim:/maquinaestados/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0us -endtime 1000us sim:/maquinaestados/reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0us -endtime 1000us sim:/maquinaestados/start 
wave create -driver freeze -pattern constant -value 0 -starttime 0us -endtime 1000us sim:/maquinaestados/temp_h 
wave create -driver freeze -pattern constant -value 0 -starttime 0us -endtime 1000us sim:/maquinaestados/temp_p 
wave create -driver freeze -pattern constant -value 0000000000001000 -range 15 0 -starttime 0us -endtime 1000us sim:/maquinaestados/tics_p 
WaveExpandAll -1
wave edit change_value -start 0ps -end 35424865ps -value 1 Edit:/maquinaestados/reset 
wave edit change_value -start 49594811ps -end 94128927ps -value 1 Edit:/maquinaestados/start 
wave edit change_value -start 115383846ps -end 213561328ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 251010471ps -end 353236510ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 377527846ps -end 470644633ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 509105915ps -end 671048154ps -value 1 Edit:/maquinaestados/temp_p 
wave edit change_value -start 208500633ps -end 689266656ps -value 0 Edit:/maquinaestados/temp_h 
wave edit change_value -start 204452077ps -end 235828386ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 280362502ps -end 400807042ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 499996664ps -end 679145266ps -value 0 Edit:/maquinaestados/temp_p 
wave edit change_value -start 428134795ps -end 552627892ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 593113452ps -end 931167876ps -value 1 Edit:/maquinaestados/temp_p 
wave edit change_value -start 966592741ps -end 987847660ps -value 1 Edit:/maquinaestados/reset 
WaveCollapseAll -1
wave clipboard restore
