# Create the build directory, ignoring any exception
cd $env(WORKAREA)/build

set project_name "build_project"

# Check if the project exists
if {[file exists $project_name.xpr]} {
    puts "Build project already exists, opening it."
    open_project $project_name.xpr
} else {
    # Project doesn't exist, create a new project
    puts "Creating build project."
    create_project $project_name -part xcu250-figd2104-2L-e -force
    set_property BOARD_PART_REPO_PATHS {C:/Users/pgime/AppData/Roaming/Xilinx/Vivado/2019.1/xhub/board_store} [current_project]
    set_param board.repoPaths {C:/Users/pgime/AppData/Roaming/Xilinx/Vivado/2019.1/xhub/board_store}
    set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
}

add_files $env(WORKAREA)/rtl/top_wrapper.sv
add_files $env(WORKAREA)/rtl/top.sv

set_property top top_wrapper [current_fileset]

# Add ethernet sources
add_files $env(WORKAREA)/rtl/ethernet/arbiter.v
add_files $env(WORKAREA)/rtl/ethernet/arp.v
add_files $env(WORKAREA)/rtl/ethernet/arp_cache.v
add_files $env(WORKAREA)/rtl/ethernet/arp_eth_rx.v
add_files $env(WORKAREA)/rtl/ethernet/arp_eth_tx.v
add_files $env(WORKAREA)/rtl/ethernet/axis_async_fifo.v
add_files $env(WORKAREA)/rtl/ethernet/axis_async_fifo_adapter.v
add_files $env(WORKAREA)/rtl/ethernet/axis_fifo.v
add_files $env(WORKAREA)/rtl/ethernet/axis_gmii_rx.v
add_files $env(WORKAREA)/rtl/ethernet/axis_gmii_tx.v
add_files $env(WORKAREA)/rtl/ethernet/debounce_switch.v
add_files $env(WORKAREA)/rtl/ethernet/eth_arb_mux.v
add_files $env(WORKAREA)/rtl/ethernet/eth_axis_rx.v
add_files $env(WORKAREA)/rtl/ethernet/eth_axis_tx.v
add_files $env(WORKAREA)/rtl/ethernet/eth_mac_1g.v
add_files $env(WORKAREA)/rtl/ethernet/eth_mac_mii.v
add_files $env(WORKAREA)/rtl/ethernet/eth_mac_mii_fifo.v
add_files $env(WORKAREA)/rtl/ethernet/fpga.v
add_files $env(WORKAREA)/rtl/ethernet/fpga_wrapper.v
add_files $env(WORKAREA)/rtl/ethernet/fpga_core.v
add_files $env(WORKAREA)/rtl/ethernet/ip.v
add_files $env(WORKAREA)/rtl/ethernet/ip_arb_mux.v
add_files $env(WORKAREA)/rtl/ethernet/ip_complete.v
add_files $env(WORKAREA)/rtl/ethernet/ip_eth_rx.v
add_files $env(WORKAREA)/rtl/ethernet/ip_eth_tx.v
add_files $env(WORKAREA)/rtl/ethernet/lfsr.v
add_files $env(WORKAREA)/rtl/ethernet/mii_phy_if.v
add_files $env(WORKAREA)/rtl/ethernet/priority_encoder.v
add_files $env(WORKAREA)/rtl/ethernet/ssio_sdr_in.v
add_files $env(WORKAREA)/rtl/ethernet/sync_reset.v
add_files $env(WORKAREA)/rtl/ethernet/sync_signal.v
add_files $env(WORKAREA)/rtl/ethernet/udp.v
add_files $env(WORKAREA)/rtl/ethernet/udp_checksum_gen.v
add_files $env(WORKAREA)/rtl/ethernet/udp_complete.v
add_files $env(WORKAREA)/rtl/ethernet/udp_ip_rx.v
add_files $env(WORKAREA)/rtl/ethernet/udp_ip_tx.v

# Add MASE-generated sources
add_files $env(WORKAREA)/rtl/mase/fixed_accumulator.sv
add_files $env(WORKAREA)/rtl/mase/fixed_adder_tree.sv
add_files $env(WORKAREA)/rtl/mase/fixed_adder_tree_layer.sv
add_files $env(WORKAREA)/rtl/mase/fixed_cast.sv
add_files $env(WORKAREA)/rtl/mase/fixed_dot_product.sv
add_files $env(WORKAREA)/rtl/mase/fixed_linear.sv
add_files $env(WORKAREA)/rtl/mase/fixed_mult.sv
add_files $env(WORKAREA)/rtl/mase/fixed_relu.sv
add_files $env(WORKAREA)/rtl/mase/fixed_vector_mult.sv
add_files $env(WORKAREA)/rtl/mase/join2.sv
add_files $env(WORKAREA)/rtl/mase/register_slice.sv
add_files $env(WORKAREA)/rtl/mase/seq_blocks_0_bias.sv
add_files $env(WORKAREA)/rtl/mase/seq_blocks_0_bias_rom.dat
add_files $env(WORKAREA)/rtl/mase/seq_blocks_0_weight.sv
add_files $env(WORKAREA)/rtl/mase/seq_blocks_0_weight_rom.dat
add_files $env(WORKAREA)/rtl/mase/toy.sv

# Import Xilinx IP
import_ip $env(WORKAREA)/ip/design_1_axis_clock_converter_0_0.xci
import_ip $env(WORKAREA)/ip/design_1_axis_clock_converter_0_1.xci
import_ip $env(WORKAREA)/ip/design_1_axis_subset_converter_0_0.xci
import_ip $env(WORKAREA)/ip/design_1_mii_to_rmii_0_0.xci

# Add constraints
add_files -fileset constrs_1 -norecurse $env(WORKAREA)/constraints/constraints.xdc