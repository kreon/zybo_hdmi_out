// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
/*
 * HLS Video Memory Partition Header File
 */

#ifndef ___HLS__VIDEO_MEM__
#define ___HLS__VIDEO_MEM__

//#define _HLSCLIB_DEBUG_

#ifdef AESL_SYN
#undef _HLSCLIB_DEBUG_
#endif

namespace hls {

/* Template class of Window */
template<int ROWS, int COLS, typename T>
class Window {
public:
    Window() {
#pragma HLS ARRAY_PARTITION variable=val dim=1 complete
#pragma HLS ARRAY_PARTITION variable=val dim=2 complete
    };

    /* Window main APIs */
    void shift_pixels_left();
    void shift_pixels_right();
    void shift_pixels_up();
    void shift_pixels_down();
    void insert_pixel(T value, int row, int col);
    void insert_row(T value[COLS], int row);
    void insert_top_row(T value[COLS]);
    void insert_bottom_row(T value[COLS]);
    void insert_col(T value[ROWS], int col);
    void insert_left_col(T value[ROWS]);
    void insert_right_col(T value[ROWS]);
    T& getval(int row, int col);
    T& operator ()(int row, int col);

    /* Back compatible APIs */
    void shift_left();
    void shift_right();
    void shift_up();
    void shift_down();
    void insert(T value, int row, int col);
    void insert_top(T value[COLS]);
    void insert_bottom(T value[COLS]);
    void insert_left(T value[ROWS]);
    void insert_right(T value[ROWS]);
    //T& getval(int row, int col);
    //T& operator ()(int row, int col);

    T val[ROWS][COLS];
#ifdef _HLSCLIB_DEBUG_
    void restore_val();
    void window_print();
    T val_t[ROWS][COLS];
#endif
};

/* Member functions of Window class */
/* Origin in upper-left point */
/*       0   1        C-2 C-1
 *     +---+---+-...-+---+---+
 *  0  |   |   |     |   |   |
 *     +---+---+-...-+---+---+
 *  1  |   |   |     |   |   |
 *     +---+---+-...-+---+---+
 *       ...     ...    ...
 *     +---+---+-...-+---+---+
 * R-2 |   |   |     |   |   |
 *     +---+---+-...-+---+---+
 * R-1 |   |   |     |   |   |
 *     +---+---+-...-+---+---+
 * 
 */

/* 
 * Window content shift left
 * Assumes new values will be placed in right column = COLS-1
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::shift_pixels_left() {
#pragma HLS inline

#ifdef _HLSCLIB_DEBUG_
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
#pragma HLS unroll
        for(j = 0; j < COLS-1; j++) {
#pragma HLS unroll
            val[i][j] = val[i][j+1];
        }
    }

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(j==COLS-1)
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_left mismatch! ***");
            else
                assert(val_t[i][j+1] == val[i][j] && "*** window shift_pixels_left mismatch! ***");
        }
    }
#endif

}

/* 
 * Window content shift right
 * Assumes new values will be placed in left column = 0
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::shift_pixels_right() {
#pragma HLS inline

#ifdef _HLSCLIB_DEBUG_
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
#pragma HLS unroll
        for(j = COLS-1; j > 0; j--) {
#pragma HLS unroll
            val[i][j] = val[i][j-1];
        }
    }

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(j==0)
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_right mismatch! ***");
            else
                assert(val_t[i][j-1] == val[i][j] && "*** window shift_pixels_right mismatch! ***");
        }
    }
#endif

}

/* 
 * Window content shift up
 * Assumes new values will be placed in bottom row = ROWS-1
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::shift_pixels_up() {
#pragma HLS inline

#ifdef _HLSCLIB_DEBUG_
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS-1; i++) {
#pragma HLS unroll
        for(j = 0; j < COLS; j++) {
#pragma HLS unroll
            val[i][j] = val[i+1][j];
        }
    }

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(i==ROWS-1)
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_up mismatch! ***");
            else
                assert(val_t[i+1][j] == val[i][j] && "*** window shift_pixels_up mismatch! ***");
        }
    }
#endif

}

/* 
 * Window content shift down
 * Assumes new values will be placed in top row = 0
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::shift_pixels_down() {
#pragma HLS inline

#ifdef _HLSCLIB_DEBUG_
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    HLS_SIZE_T i, j;
    for(i = ROWS-1; i > 0; i--) {
#pragma HLS unroll
        for(j = 0; j < COLS; j++) {
#pragma HLS unroll
            val[i][j] = val[i-1][j];
        }
    }

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(i==0)
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
            else
                assert(val_t[i-1][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
        }
    }
#endif

}

/* Window insert pixel
 * Inserts a new value at any location of the window
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::insert_pixel(T value, int row, int col) {
#pragma HLS inline
    assert(row >= 0 && row < ROWS && col >= 0 && col < COLS);

#ifdef _HLSCLIB_DEBUG_
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    val[row][col] = value;

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(i!=row && j!=col)
                assert(val_t[i][j] == val[i][j] && "*** window insert_pixel mismatch! ***");
        }
    }
    val_t[row][col] = value;
    assert(val_t[row][col] == val[row][col] && "*** window insert_pixel mismatch! ***");
#endif

}

/* Window insert row
 * Inserts a set of values in any row of the window
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::insert_row(T value[COLS], int row) {
#pragma HLS inline

#ifdef _HLSCLIB_DEBUG_
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    HLS_SIZE_T j;
    for(j = 0; j < COLS; j++) {
#pragma HLS unroll
        val[row][j] = value[j];
    }

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    HLS_SIZE_T i;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(i!=row)
                assert(val_t[i][j] == val[i][j] && "*** window insert_row mismatch! ***");
            else
                assert(val[i][j] == value[j] && "*** window insert_row mismatch! ***");
        }
    }
#endif

}

/* Window insert top row
 * Inserts a set of values in top row = 0 of the window
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::insert_top_row(T value[COLS]) {
#pragma HLS inline

#ifdef _HLSCLIB_DEBUG_
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    insert_row(value, 0);

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(i!=0)
                assert(val_t[i][j] == val[i][j] && "*** window insert_top_row mismatch! ***");
            else
                assert(val[i][j] == value[j] && "*** window insert_top_row mismatch! ***");
        }
    }
#endif

}

/* Window insert bottom row
 * Inserts a set of values in bottom row = ROWS-1 of the window
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::insert_bottom_row(T value[COLS]) {
#pragma HLS inline

#ifdef _HLSCLIB_DEBUG_
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    insert_row(value, ROWS-1);

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(i!=ROWS-1)
                assert(val_t[i][j] == val[i][j] && "*** window insert_bottom_row mismatch! ***");
            else
                assert(val[i][j] == value[j] && "*** window insert_bottom_row mismatch! ***");
        }
    }
#endif

}

/* Window insert column
 * Inserts a set of values in any column of the window
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::insert_col(T value[ROWS], int col) {
#pragma HLS inline

#ifdef _HLSCLIB_DEBUG_
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    HLS_SIZE_T i;
    for(i = 0; i < ROWS; i++) {
#pragma HLS unroll
        val[i][col] = value[i];
    }

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    HLS_SIZE_T j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(j!=col)
                assert(val_t[i][j] == val[i][j] && "*** window insert_col mismatch! ***");
            else
                assert(val[i][j] == value[i] && "*** window insert_col mismatch! ***");
        }
    }
#endif

}

/* Window insert left column
 * Inserts a set of values in left column = 0 of the window
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::insert_left_col(T value[ROWS]) {
#pragma HLS inline

#ifdef _HLSCLIB_DEBUG_
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    insert_col(value, 0);

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(j!=0)
                assert(val_t[i][j] == val[i][j] && "*** window insert_left_col mismatch! ***");
            else
                assert(val[i][j] == value[i] && "*** window insert_left_col mismatch! ***");
        }
    }
#endif

}

/* Window insert right column
 * Inserts a set of values in right column = COLS-1 of the window
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::insert_right_col(T value[ROWS]) {
#pragma HLS inline

#ifdef _HLSCLIB_DEBUG_
    std::cout << "Window Elements: ";
    window_print();
    restore_val();
#endif

    insert_col(value, COLS-1);

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "Window Elements Update: ";
    window_print();
    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(j!=COLS-1)
                assert(val_t[i][j] == val[i][j] && "*** window insert_right_col mismatch! ***");
            else
                assert(val[i][j] == value[i] && "*** window insert_right_col mismatch! ***");
        }
    }
#endif

}

/* Window getval
 * Returns the data value in the window at position (row,col)
 */
template<int ROWS, int COLS, typename T> T& Window<ROWS, COLS, T>::getval(int row, int col) {
#pragma HLS inline
    assert(row >= 0 && row < ROWS && col >= 0 && col < COLS);
    return val[row][col];
}

/* Window getval
 * Returns the data value in the window at position (row,col)
 */
template<int ROWS, int COLS, typename T> T& Window<ROWS, COLS, T>::operator ()(int row, int col) {
#pragma HLS inline
    return getval(row, col);
}

#ifdef _HLSCLIB_DEBUG_
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::restore_val() {
    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            val_t[i][j] = val[i][j]; 
        }
    }
}

template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::window_print() {
    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
        std::cout << "\n";
        for(j = 0; j < COLS; j++) {
            std::cout << std::setw(20) << val[i][j];
        }
    }
    std::cout << "\n\n";
}
#endif

/* NOTE: 
 * Back compatible APIs, take bottom-right point as the origin
 * Window shift left, while contents shift right 
 * Assumes new values will be placed in left column(=COLS-1)
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::shift_left() {
#pragma HLS inline
    shift_pixels_left(); // take upper-left point as origin
}

/* NOTE: 
 * Back compatible APIs, take bottom-right point as the origin
 * Window shift right, while contents shift left
 * Assumes new values will be placed in right column(=0)
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::shift_right() {
#pragma HLS inline
    shift_pixels_right(); // take upper-left point as origin
}

/* NOTE: 
 * Back compatible APIs, take bottom-right point as the origin
 * Window shift up, while contents shift down
 * Assumes new values will be placed in top row(=ROWS-1)
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::shift_up() {
#pragma HLS inline
    shift_pixels_up(); // take upper-left point as origin
}

/* NOTE: 
 * Back compatible APIs, take bottom-right point as the origin
 * Window shift down, while contents shift up
 * Assumes new values will be placed in bottom row(=0)
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::shift_down() {
#pragma HLS inline
    shift_pixels_down(); // take upper-left point as origin
}

/* NOTE: 
 * Back compatible APIs, take bottom-right point as the origin
 * Window insert
 * Inserts a new value at any location of the window
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::insert(T value, int row, int col) {
#pragma HLS inline
    insert_pixel(value, row, col);
}

/* NOTE: 
 * Back compatible APIs, take bottom-right point as the origin
 * Window insert top
 * Inserts a set of values in top row(=ROWS-1)
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::insert_top(T value[COLS]) {
#pragma HLS inline
    insert_bottom_row(value);
}

/* NOTE: 
 * Back compatible APIs, take bottom-right point as the origin
 * Window insert bottom
 * Inserts a set of values in bottom row(=0)
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::insert_bottom(T value[COLS]) {
#pragma HLS inline
    insert_top_row(value);
}

/* NOTE: 
 * Back compatible APIs, take bottom-right point as the origin
 * Window insert left
 * Inserts a set of values in left column(=COLS-1)
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::insert_left(T value[ROWS]) {
#pragma HLS inline
    insert_right_col(value);
}

/* NOTE: 
 * Back compatible APIs, take bottom-right point as the origin
 * Window insert right
 * Inserts a set of values in right column(=0)
 */
template<int ROWS, int COLS, typename T> void Window<ROWS, COLS, T>::insert_right(T value[ROWS]) {
#pragma HLS inline
    insert_left_col(value);
}

/* Template class of Line Buffer */
template<int ROWS, int COLS, typename T, int RESHAPE=0>
class LineBuffer;

template<int ROWS, int COLS, typename T>
class LineBuffer<ROWS, COLS, T, 0> {
public:
    LineBuffer() {
#pragma HLS inline
#pragma HLS array_partition variable=val dim=1 complete
#pragma HLS dependence variable=val inter false
#pragma HLS dependence variable=val intra false
    };
    /* LineBuffer main APIs */
    void shift_pixels_up(int col);
    void shift_pixels_down(int col);
    void insert_bottom_row(T value, int col);
    void insert_top_row(T value, int col);
    void get_col(T value[ROWS], int col);
    T& getval(int row, int col);
    T& operator ()(int row, int col);

    /* Back compatible APIs */
    void shift_up(int col);
    void shift_down(int col);
    void insert_bottom(T value, int col);
    void insert_top(T value, int col);
    //T& getval(int row, int col);
    //T& operator ()(int row, int col);

    T val[ROWS][COLS];
#ifdef _HLSCLIB_DEBUG_
    void restore_val();
    void linebuffer_print(int col);
    T val_t[ROWS][COLS];
#endif
};

/* Member functions of LineBuffer class */
/* Origin in upper-left point */
/*       0   1            C-2 C-1
 *     +---+---+-... ...-+---+---+
 *  0  |   |   |         |   |   |
 *     +---+---+-... ...-+---+---+
 *  1  |   |   |         |   |   |
 *     +---+---+-... ...-+---+---+
 *       ...     ... ...    ...
 *     +---+---+-... ...-+---+---+
 * R-2 |   |   |         |   |   |
 *     +---+---+-... ...-+---+---+
 * R-1 |   |   |         |   |   |
 *     +---+---+-... ...-+---+---+
 * 
 */

/* Member functions of LineBuffer class */

/* 
 * LineBuffer content shift down 
 * Assumes new values will be placed in top row = 0 
 */
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T>::shift_pixels_down(int col) {
#pragma HLS inline 
    assert(col >= 0 && col < COLS);

#ifdef _HLSCLIB_DEBUG_
    std::cout << "LineBuffer Elements in col=" << col << ":";
    linebuffer_print(col);
    restore_val();
#endif

    HLS_SIZE_T i;
    for(i = ROWS-1; i > 0; i--) {
#pragma HLS unroll
        val[i][col] = val[i-1][col];
    }

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "LineBuffer Elements Update in col=" << col << ":";
    linebuffer_print(col);
    HLS_SIZE_T j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(j==col)
                if(i==0)
                    assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
                else
                    assert(val_t[i-1][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
            else
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
        }
    }
#endif

}

/* 
 * LineBuffer content shift up
 * Assumes new values will be placed in top row = ROWS-1
 */
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T>::shift_pixels_up(int col) {
#pragma HLS inline
    assert(col >= 0 && col < COLS);

#ifdef _HLSCLIB_DEBUG_
    std::cout << "LineBuffer Elements in col=" << col << ":";
    linebuffer_print(col);
    restore_val();
#endif

    HLS_SIZE_T i;
    for(i = 0; i < ROWS-1; i++) {
#pragma HLS unroll
        val[i][col] = val[i+1][col];
    }

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "LineBuffer Elements Update in col=" << col << ":";
    linebuffer_print(col);
    HLS_SIZE_T j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(j==col)
                if(i==ROWS-1)
                    assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_up mismatch! ***");
                else
                    assert(val_t[i+1][j] == val[i][j] && "*** window shift_pixels_up mismatch! ***");
            else
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_up mismatch! ***");
        }
    }
#endif

}

/* LineBuffer insert bottom row 
 * Inserts a new value in bottom row= ROWS-1 of the linebuffer
 */
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T>::insert_bottom_row(T value, int col) {
#pragma HLS inline
    assert(col >= 0 && col < COLS);

#ifdef _HLSCLIB_DEBUG_
    std::cout << "LineBuffer Elements in col=" << col << ":";
    linebuffer_print(col);
    restore_val();
#endif

    val[ROWS-1][col] = value;

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "LineBuffer Elements Update in col=" << col << ":";
    linebuffer_print(col);
    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(j==col && i==ROWS-1)
                assert(val[i][j] == value && "*** window insert_bottom_row mismatch! ***");
            else
                assert(val_t[i][j] == val[i][j] && "*** window insert_bottom_row mismatch! ***");
        }
    }
#endif

}

/* LineBuffer insert top row 
 * Inserts a new value in top row=0 of the linebuffer
 */
template <int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T>::insert_top_row(T value, int col) {
#pragma HLS inline
    assert(col >= 0 && col < COLS);

#ifdef _HLSCLIB_DEBUG_
    std::cout << "LineBuffer Elements in col=" << col << ":";
    linebuffer_print(col);
    restore_val();
#endif

    val[0][col] = value;

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "LineBuffer Elements Update in col=" << col << ":";
    linebuffer_print(col);
    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(j==col && i==0)
                assert(val[i][j] == value && "*** window insert_top_row mismatch! ***");
            else
                assert(val_t[i][j] == val[i][j] && "*** window insert_top_row mismatch! ***");
        }
    }
#endif

}

/* LineBuffer get a column 
 * Get a column value of the linebuffer
 */
template <int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T>::get_col(T value[ROWS], int col) {
#pragma HLS inline
    assert(col >= 0 && col < COLS);
    HLS_SIZE_T i;
    for(i = 0; i < ROWS; i++) {
#pragma HLS unroll
        value[i] = val[i][col];
    }
}

/* Line buffer getval
 * Returns the data value in the line buffer at position row, col
 */
template <int ROWS, int COLS, typename T> T& LineBuffer<ROWS, COLS, T>::getval(int row, int col) {
#pragma HLS inline
    assert(row >= 0 && row < ROWS && col >= 0 && col < COLS);
    return val[row][col];
}

/* Line buffer getval
 * Returns the data value in the line buffer at position row, col
 */
template<int ROWS, int COLS, typename T> T& LineBuffer<ROWS, COLS, T>::operator ()(int row, int col) {
#pragma HLS inline
    return getval(row, col);
}

/* NOTE: 
 * Back compatible APIs, take bottom-left point as the origin
 * LineBuffer shift down, while contents shift up
 * Assumes new values will be placed in bottom row(=0)
 */
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T>::shift_down(int col) {
#pragma HLS inline 
    shift_pixels_down(col);
}

/* NOTE: 
 * Back compatible APIs, take bottom-left point as the origin
 * LineBuffer shift up, while contents shift down
 * Assumes new values will be placed in top row(=ROWS-1)
 */
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T>::shift_up(int col) {
#pragma HLS inline
    shift_pixels_up(col);
}

/* NOTE: 
 * Back compatible APIs, take bottom-left point as the origin
 * LineBuffer insert
 * Inserts a new value in bottom row(=0)
 */
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T>::insert_bottom(T value, int col) {
#pragma HLS inline
    insert_top_row(value, col);
}

/* NOTE: 
 * Back compatible APIs, take bottom-left point as the origin
 * LineBuffer insert
 * Inserts a new value in top row(=ROWS-1)
 */
template <int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T>::insert_top(T value, int col) {
#pragma HLS inline
    insert_bottom_row(value, col);
}

#ifdef _HLSCLIB_DEBUG_
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T>::restore_val() {
    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            val_t[i][j] = val[i][j]; 
        }
    }
}

template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T>::linebuffer_print(int col) {
    HLS_SIZE_T i;
    for(i = 0; i < ROWS; i++) {
        std::cout << "\n";
        std::cout << std::setw(20) << val[i][col];
    }
    std::cout << "\n\n";
}
#endif

/* Template class of Line Buffer (array reshaped) */
template<int ROWS, int COLS, typename T>
class LineBuffer<ROWS, COLS, T, 1> {
public:
    LineBuffer() {
#pragma HLS array_reshape variable=val dim=1
#pragma HLS dependence variable=val inter false
#pragma HLS dependence variable=val intra false
    };
    /* LineBuffer main APIs */
    void shift_pixels_up(int col);
    void shift_pixels_down(int col);
    void insert_bottom_row(T value, int col);
    void insert_top_row(T value, int col);
    void get_col(T value[ROWS], int col);
    T& getval(int row, int col);
    T& operator ()(int row, int col);

    /* Back compatible APIs */
    void shift_up(int col);
    void shift_down(int col);
    void insert_bottom(T value, int col);
    void insert_top(T value, int col);
    //T& getval(int row, int col);
    //T& operator ()(int row, int col);

    T val[ROWS][COLS];
#ifdef _HLSCLIB_DEBUG_
    void restore_val();
    void linebuffer_print(int col);
    T val_t[ROWS][COLS];
#endif
};

/* Member functions of LineBuffer_reshape class */

/* Origin in upper-left point */
/*       0   1            C-2 C-1
 *     +---+---+-... ...-+---+---+
 *  0  |   |   |         |   |   |
 *     +---+---+-... ...-+---+---+
 *  1  |   |   |         |   |   |
 *     +---+---+-... ...-+---+---+
 *       ...     ... ...    ...
 *     +---+---+-... ...-+---+---+
 * R-2 |   |   |         |   |   |
 *     +---+---+-... ...-+---+---+
 * R-1 |   |   |         |   |   |
 *     +---+---+-... ...-+---+---+
 * 
 */

/* Member functions of LineBuffer_reshape class */

/* 
 * LineBuffer content shift down 
 * Assumes new values will be placed in top row = 0 
 */
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T, 1>::shift_pixels_down(int col) {
#pragma HLS inline 
    assert(col >= 0 && col < COLS);

#ifdef _HLSCLIB_DEBUG_
    std::cout << "LineBuffer Elements in col=" << col << ":";
    linebuffer_print(col);
    restore_val();
#endif

    HLS_SIZE_T i;
    for(i = ROWS-1; i > 0; i--) {
#pragma HLS unroll
        val[i][col] = val[i-1][col];
    }

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "LineBuffer Elements Update in col=" << col << ":";
    linebuffer_print(col);
    HLS_SIZE_T j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(j==col)
                if(i==0)
                    assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
                else
                    assert(val_t[i-1][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
            else
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_down mismatch! ***");
        }
    }
#endif

}

/* 
 * LineBuffer content shift up
 * Assumes new values will be placed in top row = ROWS-1
 */
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T, 1>::shift_pixels_up(int col) {
#pragma HLS inline
    assert(col >= 0 && col < COLS);

#ifdef _HLSCLIB_DEBUG_
    std::cout << "LineBuffer Elements in col=" << col << ":";
    linebuffer_print(col);
    restore_val();
#endif

    HLS_SIZE_T i;
    for(i = 0; i < ROWS-1; i++) {
#pragma HLS unroll
        val[i][col] = val[i+1][col];
    }

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "LineBuffer Elements Update in col=" << col << ":";
    linebuffer_print(col);
    HLS_SIZE_T j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(j==col)
                if(i==ROWS-1)
                    assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_up mismatch! ***");
                else
                    assert(val_t[i+1][j] == val[i][j] && "*** window shift_pixels_up mismatch! ***");
            else
                assert(val_t[i][j] == val[i][j] && "*** window shift_pixels_up mismatch! ***");
        }
    }
#endif

}

/* LineBuffer insert bottom row 
 * Inserts a new value in bottom row= ROWS-1 of the linebuffer
 */
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T, 1>::insert_bottom_row(T value, int col) {
#pragma HLS inline
    assert(col >= 0 && col < COLS);

#ifdef _HLSCLIB_DEBUG_
    std::cout << "LineBuffer Elements in col=" << col << ":";
    linebuffer_print(col);
    restore_val();
#endif

    val[ROWS-1][col] = value;

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "LineBuffer Elements Update in col=" << col << ":";
    linebuffer_print(col);
    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(j==col && i==ROWS-1)
                assert(val[i][j] == value && "*** window insert_bottom_row mismatch! ***");
            else
                assert(val_t[i][j] == val[i][j] && "*** window insert_bottom_row mismatch! ***");
        }
    }
#endif

}

/* LineBuffer insert top row 
 * Inserts a new value in top row=0 of the linebuffer
 */
template <int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T, 1>::insert_top_row(T value, int col) {
#pragma HLS inline
    assert(col >= 0 && col < COLS);

#ifdef _HLSCLIB_DEBUG_
    std::cout << "LineBuffer Elements in col=" << col << ":";
    linebuffer_print(col);
    restore_val();
#endif

    val[0][col] = value;

#ifdef _HLSCLIB_DEBUG_
    std::cout << "===  After " << __FUNCTION__ << ":  ===\n\n";
    std::cout << "LineBuffer Elements Update in col=" << col << ":";
    linebuffer_print(col);
    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            if(j==col && i==0)
                assert(val[i][j] == value && "*** window insert_top_row mismatch! ***");
            else
                assert(val_t[i][j] == val[i][j] && "*** window insert_top_row mismatch! ***");
        }
    }
#endif

}

/* LineBuffer get a column 
 * Get a column value of the linebuffer
 */
template <int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T, 1>::get_col(T value[ROWS], int col) {
#pragma HLS inline
    assert(col >= 0 && col < COLS);
    HLS_SIZE_T i;
    for(i = 0; i < ROWS; i++) {
#pragma HLS unroll
        value[i] = val[i][col];
    }
}

/* Line buffer getval
 * Returns the data value in the line buffer at position row, col
 */
template <int ROWS, int COLS, typename T> T& LineBuffer<ROWS, COLS, T, 1>::getval(int row, int col) {
#pragma HLS inline
    assert(row >= 0 && row < ROWS && col >= 0 && col < COLS);
    return val[row][col];
}

/* Line buffer getval
 * Returns the data value in the line buffer at position row, col
 */
template<int ROWS, int COLS, typename T> T& LineBuffer<ROWS, COLS, T, 1>::operator ()(int row, int col) {
#pragma HLS inline
    return getval(row, col);
}

/* NOTE: 
 * Back compatible APIs, take bottom-left point as the origin
 * LineBuffer shift down, while contents shift up
 * Assumes new values will be placed in bottom row(=0)
 */
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T, 1>::shift_down(int col) {
#pragma HLS inline 
    shift_pixels_down(col);
}

/* NOTE: 
 * Back compatible APIs, take bottom-left point as the origin
 * LineBuffer shift up, while contents shift down
 * Assumes new values will be placed in top row(=ROWS-1)
 */
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T, 1>::shift_up(int col) {
#pragma HLS inline
    shift_pixels_up(col);
}

/* NOTE: 
 * Back compatible APIs, take bottom-left point as the origin
 * LineBuffer insert
 * Inserts a new value in bottom row(=0)
 */
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T, 1>::insert_bottom(T value, int col) {
#pragma HLS inline
    insert_top_row(value, col);
}

/* NOTE: 
 * Back compatible APIs, take bottom-left point as the origin
 * LineBuffer insert
 * Inserts a new value in top row(=ROWS-1)
 */
template <int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T, 1>::insert_top(T value, int col) {
#pragma HLS inline
    insert_bottom_row(value, col);
}

#ifdef _HLSCLIB_DEBUG_
template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T, 1>::restore_val() {
    HLS_SIZE_T i, j;
    for(i = 0; i < ROWS; i++) {
        for(j = 0; j < COLS; j++) {
            val_t[i][j] = val[i][j]; 
        }
    }
}

template<int ROWS, int COLS, typename T> void LineBuffer<ROWS, COLS, T, 1>::linebuffer_print(int col) {
    HLS_SIZE_T i;
    for(i = 0; i < ROWS; i++) {
        std::cout << "\n";
        std::cout << std::setw(20) << val[i][col];
    }
    std::cout << "\n\n";
}
#endif

} // namespace hls

#endif
