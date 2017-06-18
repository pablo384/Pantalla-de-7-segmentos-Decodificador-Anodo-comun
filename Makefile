sim:
	ghdl -a siete_segmentos.vhdl
	ghdl -a siete_segmentos_tb.vhdl
	ghdl -e tb_siete_segmentos
	ghdl -r tb_siete_segmentos --vcd=tb_siete_segmentos.vcd
	#-- Ver visualmente la simulacion con gtkwave
	gtkwave tb_siete_segmentos.vcd

clean:
	rm -f *.bin *.txt *.blif *.out *.vcd *.cf *.o tb_siete_segmentos *~

.PHONY: all clean
