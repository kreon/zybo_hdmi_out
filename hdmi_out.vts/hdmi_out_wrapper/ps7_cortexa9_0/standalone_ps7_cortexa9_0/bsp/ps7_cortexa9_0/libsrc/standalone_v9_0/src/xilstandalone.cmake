# Copyright (c) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
# SPDX-License-Identifier: MIT

include(${CMAKE_CURRENT_SOURCE_DIR}/common/StandaloneExample.cmake NO_POLICY_SCOPE)
if(("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "cortexa72")
        OR ("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "cortexa78")
        OR ("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "cortexa53")
        OR ("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "cortexa53-32")
        OR ("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "aarch64"))
    option(standalone_hypervisor_guest "Enable hypervisor guest for EL1 Nonsecure" OFF)
    set(XPAR_PS_INCLUDE "#include \"xparameters_ps.h\"")
    if(standalone_hypervisor_guest)
        set(EL1_NONSECURE " ")
        set(HYP_GUEST " ")
    else()
        set(EL3 " ")
    endif()
endif()

if("${CMAKE_MACHINE}" STREQUAL "Versal")
    set(versal " ")
elseif("${CMAKE_MACHINE}" STREQUAL "ZynqMP")
    set(PLATFORM_ZYNQMP " ")
elseif("${CMAKE_MACHINE}" STREQUAL "Zynq")
    set(PLATFORM_ZYNQ " ")
endif()

if(("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "cortexr5")
    OR ("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "cortexr52"))
    set(XPAR_PS_INCLUDE "#include \"xparameters_ps.h\"")
endif()

if(("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "cortexa9"))
    set(XPAR_PS_INCLUDE "#include \"xparameters_ps.h\"")
endif()


if(("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "pmu_microblaze"))
    set(PSU_PMU 1)
elseif(("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "plm_microblaze"))
    set(VERSAL_PLM " ")
elseif(("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "microblaze"))
    set(PLATFORM_MB " ")
endif()

if(("${CMAKE_MACHINE}" STREQUAL "VersalNet") AND
   ("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "plm_microblaze"))
    set(VERSALNET_PLM " ")
endif()

string(FIND "${CMAKE_C_FLAGS}" "-flto" has_flto)
if (${has_flto} EQUAL -1)
    set(XIL_INTERRUPT " ")
endif()

list(APPEND TOTAL_UART_INSTANCES ${UARTLITE_NUM_DRIVER_INSTANCES})
list(APPEND TOTAL_UART_INSTANCES ${UARTNS550_NUM_DRIVER_INSTANCES})
list(APPEND TOTAL_UART_INSTANCES ${UARTPS_NUM_DRIVER_INSTANCES})
list(APPEND TOTAL_UART_INSTANCES ${UARTPSV_NUM_DRIVER_INSTANCES})
list(APPEND TOTAL_UART_INSTANCES ${CORESIGHTPS_DCC_NUM_DRIVER_INSTANCES})

set(standalone_stdin "None;" CACHE STRING "stdin peripheral")
SET_PROPERTY(CACHE standalone_stdin PROPERTY STRINGS "None;${TOTAL_UART_INSTANCES}")
set(standalone_stdout "None;" CACHE STRING "stdout peripheral")
SET_PROPERTY(CACHE standalone_stdout PROPERTY STRINGS "None;${TOTAL_UART_INSTANCES}")

if ("${standalone_stdin}" STREQUAL "None;")
    if (DEFINED STDIN_INSTANCE)
        if (${STDIN_INSTANCE} IN_LIST TOTAL_UART_INSTANCES)
	   set(standalone_stdin ${STDIN_INSTANCE} CACHE STRING "stdin peripheral" FORCE)
	   set(standalone_stdout ${STDIN_INSTANCE} CACHE STRING "stdout peripheral" FORCE)
        endif()
    endif()
endif()

if (standalone_stdin IN_LIST UARTPS_NUM_DRIVER_INSTANCES)
    set(index 0)
    LIST_INDEX(${index} ${standalone_stdin} "${UARTPS_NUM_DRIVER_INSTANCES}")
    list(GET TOTAL_UARTPS_PROP_LIST ${index} reg)
    set(STDIN_BASEADDRESS  ${${reg}})
    set(STDOUT_BASEADDRESS  ${${reg}})
    set(XPAR_STDIN_IS_UARTPS " ")
elseif (standalone_stdin IN_LIST UARTPSV_NUM_DRIVER_INSTANCES)
    set(index 0)
    LIST_INDEX(${index} ${standalone_stdin} "${UARTPSV_NUM_DRIVER_INSTANCES}")
    list(GET TOTAL_UARTPSV_PROP_LIST ${index} reg)
    set(STDIN_BASEADDRESS  ${${reg}})
    set(STDOUT_BASEADDRESS  ${${reg}})
    set(XPAR_STDIN_IS_UARTPSV " ")
elseif (standalone_stdin IN_LIST UARTLITE_NUM_DRIVER_INSTANCES)
    set(index 0)
    LIST_INDEX(${index} ${standalone_stdin} "${UARTLITE_NUM_DRIVER_INSTANCES}")
    list(GET TOTAL_UARTLITE_PROP_LIST ${index} reg)
    set(STDIN_BASEADDRESS  ${${reg}})
    set(STDOUT_BASEADDRESS  ${${reg}})
    set(XPAR_STDIN_IS_UARTLITE " ")
elseif (standalone_stdin IN_LIST UARTNS550_NUM_DRIVER_INSTANCES)
    set(index 0)
    LIST_INDEX(${index} ${standalone_stdin} "${UARTNS550_NUM_DRIVER_INSTANCES}")
    list(GET TOTAL_UARTNS550_PROP_LIST ${index} reg)
    set(STDIN_BASEADDRESS  ${${reg}})
    set(STDOUT_BASEADDRESS  ${${reg}})
    set(XPAR_STDIN_IS_UARTNS550 " ")
elseif (standalone_stdin IN_LIST CORESIGHTPS_DCC_NUM_DRIVER_INSTANCES)
    set(index 0)
    LIST_INDEX(${index} ${standalone_stdin} "${CORESIGHTPS_DCC_NUM_DRIVER_INSTANCES}")
    list(GET TOTAL_CORESIGHTPS_DCC_PROP_LIST ${index} reg)
    set(STDIN_BASEADDRESS  ${${reg}})
    set(STDOUT_BASEADDRESS  ${${reg}})
    set(XPAR_STDIN_IS_CORESIGHTPS_DCC " ")
endif()

# Processor CMake Cache entires
cmake_path(GET CMAKE_C_COMPILER_AR FILENAME compiler_ar)
set(proc_archiver ${compiler_ar} CACHE STRING "Archiver")
cmake_path(GET CMAKE_ASM_COMPILER FILENAME asm_compiler)
set(proc_assembler ${asm_compiler} CACHE STRING "Assembler")
cmake_path(GET CMAKE_C_COMPILER FILENAME compiler)
set(proc_compiler ${compiler} CACHE STRING "Compiler")
set(proc_compiler_flags ${TOOLCHAIN_C_FLAGS} "-c" CACHE STRING "Compiler Flags")
set(proc_extra_compiler_flags ${TOOLCHAIN_EXTRA_C_FLAGS} CACHE STRING "Extra Compiler Flags")

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/bspconfig.h.in ${CMAKE_BINARY_DIR}/include/bspconfig.h)
