view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/maquinaestados/temp_p 
wave create -driver freeze -pattern clock -initialvalue U -period 20us -dutycycle 50 -starttime 0us -endtime 100us sim:/maquinaestados/clk 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/maquinaestados/temp_h 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/maquinaestados/start 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/maquinaestados/reset 
wave create -driver freeze -pattern constant -value UUUUUUUUUUUUU1UU -range 15 0 -starttime 0ps -endtime 1000ps sim:/maquinaestados/tics_p 
wave create -driver freeze -pattern constant -value 0000000000000000 -range 15 0 -starttime 0ps -endtime 1000ps sim:/maquinaestados/tics_p 
wave create -driver freeze -pattern constant -value 0000000000000100 -range 15 0 -starttime 0ps -endtime 1000ps sim:/maquinaestados/tics_p 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 0000000000001000 -range 15 0 -starttime 0ps -endtime 1000ps Edit:/maquinaestados/tics_p 
wave modify -driver freeze -pattern clock -initialvalue U -period 20us -dutycycle 50 -starttime 0us -endtime 1000us Edit:/maquinaestados/clk 
wave modify -driver freeze -pattern constant -value 0000000000001000 -range 15 0 -starttime 0us -endtime 1000us Edit:/maquinaestados/tics_p 
wave create -driver freeze -pattern constant -value 0 -starttime 0us -endtime 1000us sim:/maquinaestados/temp_p 
wave create -driver freeze -pattern constant -value 0 -starttime 0us -endtime 1000us sim:/maquinaestados/temp_h 
wave create -driver freeze -pattern constant -value 0 -starttime 0us -endtime 1000us sim:/maquinaestados/start 
wave create -driver freeze -pattern constant -value 1 -starttime 0us -endtime 1000us sim:/maquinaestados/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 20us -endtime 890us Edit:/maquinaestados/reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 20us -endtime 150us Edit:/maquinaestados/start 
wave modify -driver freeze -pattern constant -value 1 -starttime 200us -endtime 500us Edit:/maquinaestados/temp_h 
wave modify -driver freeze -pattern constant -value 1 -starttime 600us -endtime 900us Edit:/maquinaestados/temp_p 
WaveCollapseAll -1
wave clipboard restore
