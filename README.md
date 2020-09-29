# SPI-slave
firmware for EPH board. 

Notes
----
1. If the code is auto generated using SSC tool. Change Physics value in SPI-slave.xml "YY" -> "YYY"
1. If plib is properly installed, remove plib include from the makefile using following mplab options. 
  - Production -> set production configuration -> customise -> X32 (global options)-> delete include in "additional options"
  - Production -> set production configuration -> customise -> libraries -> remove the .a library
  
FoE firmwarew update
----
1. ethercat -p0 state INIT
1. ethercat sla
1. ethercat -p0 state BOOT
1. ethercat sla
1. ethercat foe_write -p0 -o ECATFW__ PIC32.production.hex
1. ethercat -p0 state INIT
1. wait for 20 seconds
1. ethercat -p0 state PREOP
