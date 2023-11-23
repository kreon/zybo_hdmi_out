-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_3_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 8; 
             AddressWidth     : integer := 9; 
             AddressRange    : integer := 410
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);
 
          address1        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1             : in std_logic; 
          q1              : out std_logic_vector(DataWidth-1 downto 0);
 
          address2        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce2             : in std_logic; 
          q2              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of hdmi_out_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_3_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address2_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "00000001", 1 => "00000011", 2 => "00000101", 3 => "00000111", 
    4 => "00001001", 5 => "00001010", 6 => "00001100", 7 => "00001110", 
    8 => "00010000", 9 => "00010010", 10 => "00010100", 11 => "00010110", 
    12 => "00011000", 13 => "00011010", 14 => "00011100", 15 => "00011110", 
    16 => "00100000", 17 => "00100010", 18 => "00100100", 19 => "00100101", 
    20 => "00100111", 21 => "00101001", 22 => "00101011", 23 => "00101101", 
    24 => "00101111", 25 => "00110000", 26 => "00110010", 27 => "00110100", 
    28 => "00110110", 29 => "00111000", 30 => "00111001", 31 => "00111011", 
    32 => "00111101", 33 => "00111111", 34 => "01000000", 35 => "01000010", 
    36 => "01000100", 37 => "01000101", 38 => "01000111", 39 => "01001001", 
    40 => "01001010", 41 => "01001100", 42 => "01001101", 43 => "01001111", 
    44 => "01010000", 45 => "01010010", 46 => "01010011", 47 => "01010101", 
    48 => "01010110", 49 => "01011000", 50 => "01011001", 51 => "01011011", 
    52 => "01011100", 53 => "01011101", 54 => "01011111", 55 => "01100000", 
    56 => "01100001", 57 => "01100010", 58 => "01100100", 59 => "01100101", 
    60 => "01100110", 61 => "01100111", 62 => "01101000", 63 => "01101001", 
    64 => "01101011", 65 => "01101100", 66 => "01101101", 67 => "01101110", 
    68 => "01101111", 69 => "01110000", 70 => "01110001", 71 => "01110001", 
    72 => "01110010", 73 => "01110011", 74 => "01110100", 75 => "01110101", 
    76 => "01110110", 77 => "01110110", 78 => "01110111", 79 => "01111000", 
    80 => "01111000", 81 => "01111001", 82 => "01111010", 83 => "01111010", 
    84 => "01111011", 85 => "01111011", 86 => "01111100", 87 => "01111100", 
    88 => "01111101", 89 => "01111101", 90 => "01111101", 91 => "01111110", 
    92 => "01111110", 93 => "01111110", 94 => "01111111", 95 => "01111111", 
    96 => "01111111", 97 => "01111111", 98 => "01111111", 99 => "01111111", 
    100 => "01111111", 101 => "01111111", 102 => "01111111", 103 => "01111111", 
    104 => "01111111", 105 => "01111111", 106 => "01111111", 107 => "01111111", 
    108 => "01111111", 109 => "01111111", 110 => "01111110", 111 => "01111110", 
    112 => "01111110", 113 => "01111110", 114 => "01111101", 115 => "01111101", 
    116 => "01111100", 117 => "01111100", 118 => "01111100", 119 => "01111011", 
    120 => "01111011", 121 => "01111010", 122 => "01111001", 123 => "01111001", 
    124 => "01111000", 125 => "01110111", 126 => "01110111", 127 => "01110110", 
    128 => "01110101", 129 => "01110101", 130 => "01110100", 131 => "01110011", 
    132 => "01110010", 133 => "01110001", 134 => "01110000", 135 => "01101111", 
    136 => "01101110", 137 => "01101101", 138 => "01101100", 139 => "01101011", 
    140 => "01101010", 141 => "01101001", 142 => "01101000", 143 => "01100111", 
    144 => "01100110", 145 => "01100100", 146 => "01100011", 147 => "01100010", 
    148 => "01100001", 149 => "01011111", 150 => "01011110", 151 => "01011101", 
    152 => "01011011", 153 => "01011010", 154 => "01011001", 155 => "01010111", 
    156 => "01010110", 157 => "01010100", 158 => "01010011", 159 => "01010001", 
    160 => "01010000", 161 => "01001110", 162 => "01001101", 163 => "01001011", 
    164 => "01001010", 165 => "01001000", 166 => "01000110", 167 => "01000101", 
    168 => "01000011", 169 => "01000001", 170 => "01000000", 171 => "00111110", 
    172 => "00111100", 173 => "00111010", 174 => "00111001", 175 => "00110111", 
    176 => "00110101", 177 => "00110011", 178 => "00110010", 179 => "00110000", 
    180 => "00101110", 181 => "00101100", 182 => "00101010", 183 => "00101000", 
    184 => "00100111", 185 => "00100101", 186 => "00100011", 187 => "00100001", 
    188 => "00011111", 189 => "00011101", 190 => "00011011", 191 => "00011001", 
    192 => "00010111", 193 => "00010101", 194 => "00010011", 195 => "00010010", 
    196 => "00010000", 197 => "00001110", 198 => "00001100", 199 => "00001010", 
    200 => "00001000", 201 => "00000110", 202 => "00000100", 203 => "00000010", 
    204 => "00000000", 205 => "11111110", 206 => "11111100", 207 => "11111010", 
    208 => "11111000", 209 => "11110110", 210 => "11110100", 211 => "11110010", 
    212 => "11110000", 213 => "11101110", 214 => "11101100", 215 => "11101010", 
    216 => "11101000", 217 => "11100111", 218 => "11100101", 219 => "11100011", 
    220 => "11100001", 221 => "11011111", 222 => "11011101", 223 => "11011011", 
    224 => "11011001", 225 => "11010111", 226 => "11010101", 227 => "11010100", 
    228 => "11010010", 229 => "11010000", 230 => "11001110", 231 => "11001100", 
    232 => "11001011", 233 => "11001001", 234 => "11000111", 235 => "11000101", 
    236 => "11000100", 237 => "11000010", 238 => "11000000", 239 => "10111110", 
    240 => "10111101", 241 => "10111011", 242 => "10111001", 243 => "10111000", 
    244 => "10110110", 245 => "10110101", 246 => "10110011", 247 => "10110001", 
    248 => "10110000", 249 => "10101110", 250 => "10101101", 251 => "10101011", 
    252 => "10101010", 253 => "10101000", 254 => "10100111", 255 => "10100110", 
    256 => "10100100", 257 => "10100011", 258 => "10100001", 259 => "10100000", 
    260 => "10011111", 261 => "10011110", 262 => "10011100", 263 => "10011011", 
    264 => "10011010", 265 => "10011001", 266 => "10011000", 267 => "10010110", 
    268 => "10010101", 269 => "10010100", 270 => "10010011", 271 => "10010010", 
    272 => "10010001", 273 => "10010000", 274 => "10001111", 275 => "10001110", 
    276 => "10001101", 277 => "10001100", 278 => "10001100", 279 => "10001011", 
    280 => "10001010", 281 => "10001001", 282 => "10001001", 283 => "10001000", 
    284 => "10000111", 285 => "10000110", 286 => "10000110", 287 => "10000101", 
    288 => "10000101", 289 => "10000100", 290 => "10000100", 291 => "10000011", 
    292 => "10000011", 293 => "10000010", 294 => "10000010", 295 => "10000010", 
    296 => "10000001", 297 => "10000001", 298 => "10000001", 299 => "10000000", 
    300 => "10000000", 301 => "10000000", 302 => "10000000", 303 => "10000000", 
    304 => "10000000", 305 => "10000000", 306 => "10000000", 307 => "10000000", 
    308 => "10000000", 309 => "10000000", 310 => "10000000", 311 => "10000000", 
    312 => "10000000", 313 => "10000000", 314 => "10000000", 315 => "10000001", 
    316 => "10000001", 317 => "10000001", 318 => "10000001", 319 => "10000010", 
    320 => "10000010", 321 => "10000011", 322 => "10000011", 323 => "10000100", 
    324 => "10000100", 325 => "10000101", 326 => "10000101", 327 => "10000110", 
    328 => "10000110", 329 => "10000111", 330 => "10001000", 331 => "10001000", 
    332 => "10001001", 333 => "10001010", 334 => "10001011", 335 => "10001011", 
    336 => "10001100", 337 => "10001101", 338 => "10001110", 339 => "10001111", 
    340 => "10010000", 341 => "10010001", 342 => "10010010", 343 => "10010011", 
    344 => "10010100", 345 => "10010101", 346 => "10010110", 347 => "10010111", 
    348 => "10011000", 349 => "10011010", 350 => "10011011", 351 => "10011100", 
    352 => "10011101", 353 => "10011111", 354 => "10100000", 355 => "10100001", 
    356 => "10100011", 357 => "10100100", 358 => "10100101", 359 => "10100111", 
    360 => "10101000", 361 => "10101010", 362 => "10101011", 363 => "10101100", 
    364 => "10101110", 365 => "10110000", 366 => "10110001", 367 => "10110011", 
    368 => "10110100", 369 => "10110110", 370 => "10110111", 371 => "10111001", 
    372 => "10111011", 373 => "10111100", 374 => "10111110", 375 => "11000000", 
    376 => "11000001", 377 => "11000011", 378 => "11000101", 379 => "11000111", 
    380 => "11001000", 381 => "11001010", 382 => "11001100", 383 => "11001110", 
    384 => "11010000", 385 => "11010001", 386 => "11010011", 387 => "11010101", 
    388 => "11010111", 389 => "11011001", 390 => "11011011", 391 => "11011101", 
    392 => "11011110", 393 => "11100000", 394 => "11100010", 395 => "11100100", 
    396 => "11100110", 397 => "11101000", 398 => "11101010", 399 => "11101100", 
    400 => "11101110", 401 => "11110000", 402 => "11110010", 403 => "11110100", 
    404 => "11110110", 405 => "11111000", 406 => "11111010", 407 => "11111100", 
    408 => "11111110",
    others=>(others=>'0'));

signal mem1 : mem_array := (
    0 => "00000001", 1 => "00000011", 2 => "00000101", 3 => "00000111", 
    4 => "00001001", 5 => "00001010", 6 => "00001100", 7 => "00001110", 
    8 => "00010000", 9 => "00010010", 10 => "00010100", 11 => "00010110", 
    12 => "00011000", 13 => "00011010", 14 => "00011100", 15 => "00011110", 
    16 => "00100000", 17 => "00100010", 18 => "00100100", 19 => "00100101", 
    20 => "00100111", 21 => "00101001", 22 => "00101011", 23 => "00101101", 
    24 => "00101111", 25 => "00110000", 26 => "00110010", 27 => "00110100", 
    28 => "00110110", 29 => "00111000", 30 => "00111001", 31 => "00111011", 
    32 => "00111101", 33 => "00111111", 34 => "01000000", 35 => "01000010", 
    36 => "01000100", 37 => "01000101", 38 => "01000111", 39 => "01001001", 
    40 => "01001010", 41 => "01001100", 42 => "01001101", 43 => "01001111", 
    44 => "01010000", 45 => "01010010", 46 => "01010011", 47 => "01010101", 
    48 => "01010110", 49 => "01011000", 50 => "01011001", 51 => "01011011", 
    52 => "01011100", 53 => "01011101", 54 => "01011111", 55 => "01100000", 
    56 => "01100001", 57 => "01100010", 58 => "01100100", 59 => "01100101", 
    60 => "01100110", 61 => "01100111", 62 => "01101000", 63 => "01101001", 
    64 => "01101011", 65 => "01101100", 66 => "01101101", 67 => "01101110", 
    68 => "01101111", 69 => "01110000", 70 => "01110001", 71 => "01110001", 
    72 => "01110010", 73 => "01110011", 74 => "01110100", 75 => "01110101", 
    76 => "01110110", 77 => "01110110", 78 => "01110111", 79 => "01111000", 
    80 => "01111000", 81 => "01111001", 82 => "01111010", 83 => "01111010", 
    84 => "01111011", 85 => "01111011", 86 => "01111100", 87 => "01111100", 
    88 => "01111101", 89 => "01111101", 90 => "01111101", 91 => "01111110", 
    92 => "01111110", 93 => "01111110", 94 => "01111111", 95 => "01111111", 
    96 => "01111111", 97 => "01111111", 98 => "01111111", 99 => "01111111", 
    100 => "01111111", 101 => "01111111", 102 => "01111111", 103 => "01111111", 
    104 => "01111111", 105 => "01111111", 106 => "01111111", 107 => "01111111", 
    108 => "01111111", 109 => "01111111", 110 => "01111110", 111 => "01111110", 
    112 => "01111110", 113 => "01111110", 114 => "01111101", 115 => "01111101", 
    116 => "01111100", 117 => "01111100", 118 => "01111100", 119 => "01111011", 
    120 => "01111011", 121 => "01111010", 122 => "01111001", 123 => "01111001", 
    124 => "01111000", 125 => "01110111", 126 => "01110111", 127 => "01110110", 
    128 => "01110101", 129 => "01110101", 130 => "01110100", 131 => "01110011", 
    132 => "01110010", 133 => "01110001", 134 => "01110000", 135 => "01101111", 
    136 => "01101110", 137 => "01101101", 138 => "01101100", 139 => "01101011", 
    140 => "01101010", 141 => "01101001", 142 => "01101000", 143 => "01100111", 
    144 => "01100110", 145 => "01100100", 146 => "01100011", 147 => "01100010", 
    148 => "01100001", 149 => "01011111", 150 => "01011110", 151 => "01011101", 
    152 => "01011011", 153 => "01011010", 154 => "01011001", 155 => "01010111", 
    156 => "01010110", 157 => "01010100", 158 => "01010011", 159 => "01010001", 
    160 => "01010000", 161 => "01001110", 162 => "01001101", 163 => "01001011", 
    164 => "01001010", 165 => "01001000", 166 => "01000110", 167 => "01000101", 
    168 => "01000011", 169 => "01000001", 170 => "01000000", 171 => "00111110", 
    172 => "00111100", 173 => "00111010", 174 => "00111001", 175 => "00110111", 
    176 => "00110101", 177 => "00110011", 178 => "00110010", 179 => "00110000", 
    180 => "00101110", 181 => "00101100", 182 => "00101010", 183 => "00101000", 
    184 => "00100111", 185 => "00100101", 186 => "00100011", 187 => "00100001", 
    188 => "00011111", 189 => "00011101", 190 => "00011011", 191 => "00011001", 
    192 => "00010111", 193 => "00010101", 194 => "00010011", 195 => "00010010", 
    196 => "00010000", 197 => "00001110", 198 => "00001100", 199 => "00001010", 
    200 => "00001000", 201 => "00000110", 202 => "00000100", 203 => "00000010", 
    204 => "00000000", 205 => "11111110", 206 => "11111100", 207 => "11111010", 
    208 => "11111000", 209 => "11110110", 210 => "11110100", 211 => "11110010", 
    212 => "11110000", 213 => "11101110", 214 => "11101100", 215 => "11101010", 
    216 => "11101000", 217 => "11100111", 218 => "11100101", 219 => "11100011", 
    220 => "11100001", 221 => "11011111", 222 => "11011101", 223 => "11011011", 
    224 => "11011001", 225 => "11010111", 226 => "11010101", 227 => "11010100", 
    228 => "11010010", 229 => "11010000", 230 => "11001110", 231 => "11001100", 
    232 => "11001011", 233 => "11001001", 234 => "11000111", 235 => "11000101", 
    236 => "11000100", 237 => "11000010", 238 => "11000000", 239 => "10111110", 
    240 => "10111101", 241 => "10111011", 242 => "10111001", 243 => "10111000", 
    244 => "10110110", 245 => "10110101", 246 => "10110011", 247 => "10110001", 
    248 => "10110000", 249 => "10101110", 250 => "10101101", 251 => "10101011", 
    252 => "10101010", 253 => "10101000", 254 => "10100111", 255 => "10100110", 
    256 => "10100100", 257 => "10100011", 258 => "10100001", 259 => "10100000", 
    260 => "10011111", 261 => "10011110", 262 => "10011100", 263 => "10011011", 
    264 => "10011010", 265 => "10011001", 266 => "10011000", 267 => "10010110", 
    268 => "10010101", 269 => "10010100", 270 => "10010011", 271 => "10010010", 
    272 => "10010001", 273 => "10010000", 274 => "10001111", 275 => "10001110", 
    276 => "10001101", 277 => "10001100", 278 => "10001100", 279 => "10001011", 
    280 => "10001010", 281 => "10001001", 282 => "10001001", 283 => "10001000", 
    284 => "10000111", 285 => "10000110", 286 => "10000110", 287 => "10000101", 
    288 => "10000101", 289 => "10000100", 290 => "10000100", 291 => "10000011", 
    292 => "10000011", 293 => "10000010", 294 => "10000010", 295 => "10000010", 
    296 => "10000001", 297 => "10000001", 298 => "10000001", 299 => "10000000", 
    300 => "10000000", 301 => "10000000", 302 => "10000000", 303 => "10000000", 
    304 => "10000000", 305 => "10000000", 306 => "10000000", 307 => "10000000", 
    308 => "10000000", 309 => "10000000", 310 => "10000000", 311 => "10000000", 
    312 => "10000000", 313 => "10000000", 314 => "10000000", 315 => "10000001", 
    316 => "10000001", 317 => "10000001", 318 => "10000001", 319 => "10000010", 
    320 => "10000010", 321 => "10000011", 322 => "10000011", 323 => "10000100", 
    324 => "10000100", 325 => "10000101", 326 => "10000101", 327 => "10000110", 
    328 => "10000110", 329 => "10000111", 330 => "10001000", 331 => "10001000", 
    332 => "10001001", 333 => "10001010", 334 => "10001011", 335 => "10001011", 
    336 => "10001100", 337 => "10001101", 338 => "10001110", 339 => "10001111", 
    340 => "10010000", 341 => "10010001", 342 => "10010010", 343 => "10010011", 
    344 => "10010100", 345 => "10010101", 346 => "10010110", 347 => "10010111", 
    348 => "10011000", 349 => "10011010", 350 => "10011011", 351 => "10011100", 
    352 => "10011101", 353 => "10011111", 354 => "10100000", 355 => "10100001", 
    356 => "10100011", 357 => "10100100", 358 => "10100101", 359 => "10100111", 
    360 => "10101000", 361 => "10101010", 362 => "10101011", 363 => "10101100", 
    364 => "10101110", 365 => "10110000", 366 => "10110001", 367 => "10110011", 
    368 => "10110100", 369 => "10110110", 370 => "10110111", 371 => "10111001", 
    372 => "10111011", 373 => "10111100", 374 => "10111110", 375 => "11000000", 
    376 => "11000001", 377 => "11000011", 378 => "11000101", 379 => "11000111", 
    380 => "11001000", 381 => "11001010", 382 => "11001100", 383 => "11001110", 
    384 => "11010000", 385 => "11010001", 386 => "11010011", 387 => "11010101", 
    388 => "11010111", 389 => "11011001", 390 => "11011011", 391 => "11011101", 
    392 => "11011110", 393 => "11100000", 394 => "11100010", 395 => "11100100", 
    396 => "11100110", 397 => "11101000", 398 => "11101010", 399 => "11101100", 
    400 => "11101110", 401 => "11110000", 402 => "11110010", 403 => "11110100", 
    404 => "11110110", 405 => "11111000", 406 => "11111010", 407 => "11111100", 
    408 => "11111110",
    others=>(others=>'0'));



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_1: process (address1) 
begin
      address1_tmp <= address1;
--synthesis translate_off
      if (CONV_INTEGER(address1) > AddressRange-1) then
           address1_tmp <= (others => '0');
      else 
           address1_tmp <= address1;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_2: process (address2) 
begin
      address2_tmp <= address2;
--synthesis translate_off
      if (CONV_INTEGER(address2) > AddressRange-1) then
           address2_tmp <= (others => '0');
      else 
           address2_tmp <= address2;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;
 
        if (ce1 = '1') then  
            q1 <= mem0(CONV_INTEGER(address1_tmp)); 
        end if;
 
        if (ce2 = '1') then  
            q2 <= mem1(CONV_INTEGER(address2_tmp)); 
        end if;

end if;
end process;

end rtl;

