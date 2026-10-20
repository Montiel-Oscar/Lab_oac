# Secuenciador de la carta ASM en DE10-Lite

Para la tarjeta, el archivo superior activo es `practica6.vhd`, indicado en `practica6.qsf`.
Los diagramas `practica6.bdf` y `secuenciador.bdf` quedan como referencia
historica; Quartus ya no los usa para compilar este proyecto.

## Controles

| Elemento | Funcion |
| --- | --- |
| SW9 | Reset al estado 0 cuando esta abajo (0). Subirlo a 1 para ejecutar. |
| KEY0 | Avanzar un estado por pulsacion. Mantener 20 ms como minimo; soltar antes de repetir. |
| SW1 | Y (condicion del estado 9). |
| SW2 | X (condicion del estado 2). |
| SW3 | INT (bifurcaciones en estados 3 y 13). |
| SW4 | `entrada_trans(0)`. |
| SW5 | `entrada_trans(1)`. |
| LEDR[9:6] | Estado presente en binario, bit 3 a bit 0. |
| LEDR[3:0] | Salidas S3:S0 de la ROM. |

SW0 no participa. AUX es cero fijo para que los saltos por Liga sean
incondicionales, como indica la tabla de microprogramacion. LEDR4 y LEDR5
no se usan.

## Rutas principales

- Reset, KEY0: 0 -> 1.
- En estado 1: SW5:SW4 = 00 -> 2; 01 -> 8; 10 -> 13. 11 se trata como 00.
- En estado 2: X=0 -> 2; X=1 -> 3.
- En estado 3: INT=0 -> 4 -> 5 -> 0; INT=1 -> 10 -> 6 -> 7 -> 0.
- En estado 9: Y=0 -> 10; Y=1 -> 11.
- En estado 11: SW5:SW4 = 00 -> 12 -> 14 -> 11; 01 -> 7 -> 0.
  Los valores 10 y 11 se tratan como 00.
- En estado 13: INT=0 -> 14; INT=1 -> 0.

Configura los switches antes de pulsar KEY0. El estado 15 esta codificado
en la ROM, pero no hay una flecha que llegue a el desde la carta ASM.

En el PDF, la tabla manuscrita anota `0101` como salidas del estado 0,
mientras el cuadro ASM dibuja S3 S2 /S1 /S0. La ROM utiliza `1100` para
respetar la carta. Los otros bits no especificados en varios cuadros siguen
los valores escritos en la tabla.

## Compilar y cargar

Abre `practica6.qpf` en Quartus, compila y carga
`output_files/practica6.sof` por USB-Blaster/JTAG. Un archivo `.sof` configura
la FPGA de forma temporal y se pierde al quitar la alimentacion.

## Simular en Waveform Editor

### Simulacion corta para explorar la carta

El proyecto tiene dos revisiones:

- `practica6`: tarjeta fisica, con antirrebote de 20 ms.
- `practica6_sim`: solo simulacion, con antirrebote de 4 ciclos del reloj.

La revision `practica6_sim` usa el mismo secuenciador y la misma ROM. Solo
reduce el parametro del antirrebote del boton para que el waveform dure
7.2 us en vez de requerir decenas de milisegundos. El reloj sigue en 50 MHz.
No fuerza el estado
`edo_pr` ni las salidas. La revision `practica6` conserva los 20 ms para
la tarjeta.

En Quartus selecciona la revision `practica6_sim` como actual, ejecuta
**Analysis & Synthesis**, abre el archivo editable `Waveform_sim.vwf` y ejecuta
**Simulation > Run Functional Simulation**. Cierra y vuelve a abrir el waveform
si estaba abierto antes de cambiar la revision. El resultado se abre como un
archivo `*.sim.vwf` de solo lectura en `simulation/qsim`; usa **View > Fit in
Window** para ver todos los 7200 ns. Esta revision tiene una carpeta de salida
separada (`output_sim`)
para no reemplazar el `.sof` de la tarjeta. No programes la tarjeta desde
`practica6_sim`.

En `Waveform_sim.vwf`, `rst` esta en 0 durante los primeros 80 ns y luego
queda en 1. `boton` baja a 0 quince veces, cada pulsacion dura 200 ns; el
reloj tiene periodo de 20 ns. El estado debe recorrer:

`0 -> 1 -> 2 -> 3 -> 4 -> 5 -> 0 -> 1 -> 8 -> 9 -> 11 -> 12 -> 14 -> 11 -> 7 -> 0`.

Si solo deseas ver el resultado comprobado, abre `Resultado_simulacion.vwf`
directamente en Quartus. Ese archivo ya contiene las salidas obtenidas de
ModelSim. Para generar un resultado nuevo, abre `Waveform_sim.vwf` y ejecuta
la simulacion funcional. Evita abrir un `*.sim.vwf` antiguo: esos archivos
son resultados guardados de ejecuciones anteriores y no se actualizan solos.

El archivo anterior `Waveform3.vwf` mantenia `rst=0` y `boton=1` durante
1000 ns, por lo que solo podia mostrar el estado 0. En la revision fisica,
el contador de antirrebote necesita 20 ms, por lo que un waveform de 1000 ns
tampoco basta para producir un avance.
