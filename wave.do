onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/clk
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/rstn
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/addr_base_a
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/addr_base_b
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/m
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/k
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/n
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/a_in_mode
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/b_in_mode
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/start
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/dma_start
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/dma_addr_a
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/dma_addr_b
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/dma_valid
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/dma_ready
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/dma_done
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/dma_data
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/buf_data_in
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/read_a
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/read_b
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/m_cnt
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/m_cnt_update_now
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/m_cnt_is_max_now
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/n_cnt
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/n_cnt_update_now
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/n_cnt_is_max_now
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/block_a_cnt
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/block_a_cnt_update_now
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/block_a_cnt_is_max_now
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/block_b_cnt
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/block_b_cnt_update_now
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/block_b_cnt_is_max_now
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/k_cnt
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/k_cnt_update_now
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/k_cnt_is_max_now
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/burst_cnt
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/burst_cnt_update_now
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/burst_cnt_is_max_now
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/buf_data_in_a
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/buf_data_in_b
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/buf_state
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/dma_addr_a_reg
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/dma_addr_b_reg
add wave -noupdate -radix hexadecimal /control_register_tb/control_register_inst/dma_start_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {125 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 377
configure wave -valuecolwidth 140
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {392 ns}
