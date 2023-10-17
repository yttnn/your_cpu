`ifndef COMMON
`define COMMON
package common
  
  // p.143 table(5.3)
  typedef enum logic [2:0] {
    ADD = 3d'000,
    SUB = 3d'001,
    AND = 3d'010,
    OR  = 3d'011,
    SLT = 3d'101
  } ALU_CONTROL;

endpackage
`endif