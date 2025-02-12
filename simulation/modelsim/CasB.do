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
WaveRestoreCursors {{Cursor 1} {123912181 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 197
configure wave -valuecolwidth 54
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
WaveRestoreZoom {0 ps} {1773267520 ps}
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
wave modify -driver freeze -pattern constant -value 0000000000001000 -range 15 0 -starttime 0us -endtime 2000us Edit:/maquinaestados/tics_p 
wave modify -driver freeze -pattern clock -initialvalue U -period 20us -dutycycle 50 -starttime 0us -endtime 2000us Edit:/maquinaestados/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 0us -endtime 2000us Edit:/maquinaestados/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0us -endtime 2000us Edit:/maquinaestados/start 
wave modify -driver freeze -pattern constant -value 0 -starttime 0us -endtime 2000us Edit:/maquinaestados/temp_h 
wave modify -driver freeze -pattern constant -value 0 -starttime 0us -endtime 2000us Edit:/maquinaestados/temp_p 
wave edit change_value -start 0ps -end 33400587ps -value 1 Edit:/maquinaestados/reset 
wave edit change_value -start 45546255ps -end 108298873ps -value 1 Edit:/maquinaestados/start 
wave edit change_value -start 128541653ps -end 257083305ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 296556726ps -end 418013405ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 451413992ps -end 575907089ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 608295537ps -end 693315213ps -value 1 Edit:/maquinaestados/temp_p 
wave edit change_value -start 716840525ps -end 834248649ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 857527846ps -end 957729606ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 987081637ps -end 1100441205ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 1141938904ps -end 1359548788ps -value 1 Edit:/maquinaestados/temp_p 
wave edit change_value -start 1381815846ps -end 1406107182ps -value 1 Edit:/maquinaestados/reset 
wave edit change_value -start 820496482ps -end 845760131ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 850572254ps -end 865008625ps -value 0 Edit:/maquinaestados/temp_h 
wave edit change_value -start 946814725ps -end 997342022ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 1016590516ps -end 1034635979ps -value 0 Edit:/maquinaestados/temp_h 
wave edit change_value -start 1097193585ps -end 1221105766ps -value 1 Edit:/maquinaestados/temp_h 
wave edit change_value -start 1140502697ps -end 1260805785ps -value 0 Edit:/maquinaestados/temp_p 
wave edit change_value -start 1247572445ps -end 1373890688ps -value 0 Edit:/maquinaestados/temp_p 
wave edit change_value -start 1254790631ps -end 1562766537ps -value 1 Edit:/maquinaestados/temp_p 
wave edit change_value -start 1361860379ps -end 1418402831ps -value 0 Edit:/maquinaestados/reset 
wave edit change_value -start 1580812000ps -end 1621715050ps -value 1 Edit:/maquinaestados/reset 
WaveCollapseAll -1
wave clipboard restore
