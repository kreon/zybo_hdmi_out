# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name field_id_val8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_field_id_val8 \
    op interface \
    ports { field_id_val8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name field_id_val8_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_field_id_val8_c \
    op interface \
    ports { field_id_val8_c_din { O 16 vector } field_id_val8_c_num_data_valid { I 3 vector } field_id_val8_c_fifo_cap { I 3 vector } field_id_val8_c_full_n { I 1 bit } field_id_val8_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name fid_in_val9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fid_in_val9 \
    op interface \
    ports { fid_in_val9 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name fid_in_val9_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fid_in_val9_c \
    op interface \
    ports { fid_in_val9_c_din { O 1 vector } fid_in_val9_c_num_data_valid { I 3 vector } fid_in_val9_c_fifo_cap { I 3 vector } fid_in_val9_c_full_n { I 1 bit } fid_in_val9_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name ovrlayId_val11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ovrlayId_val11 \
    op interface \
    ports { ovrlayId_val11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name ovrlayId_val11_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ovrlayId_val11_c \
    op interface \
    ports { ovrlayId_val11_c_din { O 8 vector } ovrlayId_val11_c_num_data_valid { I 3 vector } ovrlayId_val11_c_fifo_cap { I 3 vector } ovrlayId_val11_c_full_n { I 1 bit } ovrlayId_val11_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name maskId_val12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_maskId_val12 \
    op interface \
    ports { maskId_val12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name maskId_val12_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_maskId_val12_c \
    op interface \
    ports { maskId_val12_c_din { O 8 vector } maskId_val12_c_num_data_valid { I 3 vector } maskId_val12_c_fifo_cap { I 3 vector } maskId_val12_c_full_n { I 1 bit } maskId_val12_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name crossHairX_val18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_crossHairX_val18 \
    op interface \
    ports { crossHairX_val18 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name crossHairX_val18_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_crossHairX_val18_c \
    op interface \
    ports { crossHairX_val18_c_din { O 16 vector } crossHairX_val18_c_num_data_valid { I 3 vector } crossHairX_val18_c_fifo_cap { I 3 vector } crossHairX_val18_c_full_n { I 1 bit } crossHairX_val18_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name crossHairY_val19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_crossHairY_val19 \
    op interface \
    ports { crossHairY_val19 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name crossHairY_val19_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_crossHairY_val19_c \
    op interface \
    ports { crossHairY_val19_c_din { O 16 vector } crossHairY_val19_c_num_data_valid { I 3 vector } crossHairY_val19_c_fifo_cap { I 3 vector } crossHairY_val19_c_full_n { I 1 bit } crossHairY_val19_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name boxSize_val24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boxSize_val24 \
    op interface \
    ports { boxSize_val24 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name boxSize_val24_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_boxSize_val24_c \
    op interface \
    ports { boxSize_val24_c_din { O 16 vector } boxSize_val24_c_num_data_valid { I 3 vector } boxSize_val24_c_fifo_cap { I 3 vector } boxSize_val24_c_full_n { I 1 bit } boxSize_val24_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name boxColorR_val25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boxColorR_val25 \
    op interface \
    ports { boxColorR_val25 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name boxColorR_val25_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_boxColorR_val25_c \
    op interface \
    ports { boxColorR_val25_c_din { O 8 vector } boxColorR_val25_c_num_data_valid { I 3 vector } boxColorR_val25_c_fifo_cap { I 3 vector } boxColorR_val25_c_full_n { I 1 bit } boxColorR_val25_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name boxColorG_val26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boxColorG_val26 \
    op interface \
    ports { boxColorG_val26 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name boxColorG_val26_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_boxColorG_val26_c \
    op interface \
    ports { boxColorG_val26_c_din { O 8 vector } boxColorG_val26_c_num_data_valid { I 3 vector } boxColorG_val26_c_fifo_cap { I 3 vector } boxColorG_val26_c_full_n { I 1 bit } boxColorG_val26_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name boxColorB_val27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boxColorB_val27 \
    op interface \
    ports { boxColorB_val27 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name boxColorB_val27_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_boxColorB_val27_c \
    op interface \
    ports { boxColorB_val27_c_din { O 8 vector } boxColorB_val27_c_num_data_valid { I 3 vector } boxColorB_val27_c_fifo_cap { I 3 vector } boxColorB_val27_c_full_n { I 1 bit } boxColorB_val27_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


