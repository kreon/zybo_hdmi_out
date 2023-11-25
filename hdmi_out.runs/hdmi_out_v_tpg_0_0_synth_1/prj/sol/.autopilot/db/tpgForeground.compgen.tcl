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
    id 198 \
    name bckgndYUV \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bckgndYUV \
    op interface \
    ports { bckgndYUV_dout { I 24 vector } bckgndYUV_num_data_valid { I 5 vector } bckgndYUV_fifo_cap { I 5 vector } bckgndYUV_empty_n { I 1 bit } bckgndYUV_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name height_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_height_val \
    op interface \
    ports { height_val_dout { I 16 vector } height_val_num_data_valid { I 3 vector } height_val_fifo_cap { I 3 vector } height_val_empty_n { I 1 bit } height_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name width_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_width_val \
    op interface \
    ports { width_val_dout { I 16 vector } width_val_num_data_valid { I 3 vector } width_val_fifo_cap { I 3 vector } width_val_empty_n { I 1 bit } width_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name patternId_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_patternId_val \
    op interface \
    ports { patternId_val_dout { I 8 vector } patternId_val_num_data_valid { I 3 vector } patternId_val_fifo_cap { I 3 vector } patternId_val_empty_n { I 1 bit } patternId_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name maskId_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_maskId_val \
    op interface \
    ports { maskId_val_dout { I 8 vector } maskId_val_num_data_valid { I 3 vector } maskId_val_fifo_cap { I 3 vector } maskId_val_empty_n { I 1 bit } maskId_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name colorFormat_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_colorFormat_val \
    op interface \
    ports { colorFormat_val_dout { I 8 vector } colorFormat_val_num_data_valid { I 3 vector } colorFormat_val_fifo_cap { I 3 vector } colorFormat_val_empty_n { I 1 bit } colorFormat_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name crossHairX_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_crossHairX_val \
    op interface \
    ports { crossHairX_val_dout { I 16 vector } crossHairX_val_num_data_valid { I 3 vector } crossHairX_val_fifo_cap { I 3 vector } crossHairX_val_empty_n { I 1 bit } crossHairX_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name crossHairY_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_crossHairY_val \
    op interface \
    ports { crossHairY_val_dout { I 16 vector } crossHairY_val_num_data_valid { I 3 vector } crossHairY_val_fifo_cap { I 3 vector } crossHairY_val_empty_n { I 1 bit } crossHairY_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name boxSize_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boxSize_val \
    op interface \
    ports { boxSize_val_dout { I 16 vector } boxSize_val_num_data_valid { I 3 vector } boxSize_val_fifo_cap { I 3 vector } boxSize_val_empty_n { I 1 bit } boxSize_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name boxColorR_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boxColorR_val \
    op interface \
    ports { boxColorR_val_dout { I 8 vector } boxColorR_val_num_data_valid { I 3 vector } boxColorR_val_fifo_cap { I 3 vector } boxColorR_val_empty_n { I 1 bit } boxColorR_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name boxColorG_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boxColorG_val \
    op interface \
    ports { boxColorG_val_dout { I 8 vector } boxColorG_val_num_data_valid { I 3 vector } boxColorG_val_fifo_cap { I 3 vector } boxColorG_val_empty_n { I 1 bit } boxColorG_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name boxColorB_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boxColorB_val \
    op interface \
    ports { boxColorB_val_dout { I 8 vector } boxColorB_val_num_data_valid { I 3 vector } boxColorB_val_fifo_cap { I 3 vector } boxColorB_val_empty_n { I 1 bit } boxColorB_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name motionSpeed_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_motionSpeed_val \
    op interface \
    ports { motionSpeed_val_dout { I 8 vector } motionSpeed_val_num_data_valid { I 3 vector } motionSpeed_val_fifo_cap { I 3 vector } motionSpeed_val_empty_n { I 1 bit } motionSpeed_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name ovrlayYUV \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ovrlayYUV \
    op interface \
    ports { ovrlayYUV_din { O 24 vector } ovrlayYUV_num_data_valid { I 5 vector } ovrlayYUV_fifo_cap { I 5 vector } ovrlayYUV_full_n { I 1 bit } ovrlayYUV_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name height_val4_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_height_val4_c \
    op interface \
    ports { height_val4_c_din { O 12 vector } height_val4_c_num_data_valid { I 3 vector } height_val4_c_fifo_cap { I 3 vector } height_val4_c_full_n { I 1 bit } height_val4_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name width_val7_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_width_val7_c \
    op interface \
    ports { width_val7_c_din { O 13 vector } width_val7_c_num_data_valid { I 3 vector } width_val7_c_fifo_cap { I 3 vector } width_val7_c_full_n { I 1 bit } width_val7_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name colorFormat_val17_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_colorFormat_val17_c \
    op interface \
    ports { colorFormat_val17_c_din { O 8 vector } colorFormat_val17_c_num_data_valid { I 3 vector } colorFormat_val17_c_fifo_cap { I 3 vector } colorFormat_val17_c_full_n { I 1 bit } colorFormat_val17_c_write { O 1 bit } } \
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


