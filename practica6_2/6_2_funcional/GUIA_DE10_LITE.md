# Secuenciador de la carta ASM en DE10-Lite

El archivo superior activo es `practica6.vhd`, indicado en `practica6.qsf`.
Los diagramas `practica6.bdf` y `secuenciador.bdf` quedan como referencia
historica; Quartus ya no los usa para compilar este proyecto.

## Controles

| Elemento | Funcion |
| --- | --- |
| KEY1 | Reset al estado 0. Pulsador activo en bajo. |
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
