create_clock -name clk_50 -period 20.000 [get_ports {clk}]
derive_clock_uncertainty
# Switches/KEY son asincronos; el usuario los ajusta antes de pulsar KEY0.
set_false_path -from [get_ports {boton rst X Y entrada_int_RI entrada_trans*}]
# Los LEDs son salidas de observacion, sin receptor sincronico externo.
set_false_path -to [get_ports {edo_pr* salidas*}]
