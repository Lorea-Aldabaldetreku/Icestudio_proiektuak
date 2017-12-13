/*
docker run --rm -itv $(pwd):/work:z -v /tmp/.X11-unix/:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY debian:latest bash

apt-get update && apt-get install -y python xclip wget unzip gtk2.0 libnss3 libgconf-2-4
cd ~ && wget https://github.com/FPGAwars/icestudio/releases/download/0.3.0-rc/icestudio-0.3.0-rc-linux64.zip
unzip icestudio-0.3.0-rc-linux64.zip
cd icestudio-0.3.0-rc-linux64
./icestudio

iverilog -o design top.v && ./design
gtkwave design.vcd &
*/

/*
module tb ( );
  reg clk, rst, p;

  initial begin
    $dumpfile("design.vcd");
    $dumpvars(0, tb);
    p = 0;
    clk = 0; forever begin clk = ~clk; #1; end
  end

  always begin
    rst = 1; #30; rst = 0;
    #5000000; $finish;
  end

  always@(posedge clk) begin p = ~p; #120000; end
  top uut( .clk(clk), .SW1(rst), .SW2(p), .D0(), .D1(), .D2(), .D3() );
endmodule
*/

module top ( clk, SW1, SW2, D0, D1, D2, D3 );
/*
  function integer maxs ([3:0] i);
    case(i)
      3:       begin maxs = 5; end
      default: begin maxs = 9; end
    endcase
  endfunction
*/
  input clk, SW1, SW2;
  output D0, D1, D2, D3;

  wire [4:0] en, enout;
  wire [3:0] z [3:0];
  reg [3:0] r [3:0], m [3:0];
  wire [1:0] s;
  wire ens, p;

  //--

  assign rst = SW1;
  assign p = SW2;

  zenbatzailea #(.MAX(59)) zat1( .clk(clk), .rst(rst), .en(1'b1), .tc(ens), .z() );
  zenbatzailea #(.MAX(19)) zat2( .clk(clk), .rst(rst), .en(ens), .tc(enout[0]), .z() );
  zenbatzailea #(.MAX(3)) selzenb( .clk(clk), .rst(rst), .en(ens), .tc(), .z(s) );

  assign en[0] = ens;

  genvar i;
  generate for (i=1; i <= 4; i = i+1) begin
    assign en[i]=en[i-1] & enout[i-1];
    if (i==3) begin
      zenbatzailea #(.MAX(5),.WIDTH(4)) zenb( .clk(clk), .rst(rst), .en(en[i]), .tc(enout[i]), .z(z[i-1]) );
    end else begin
      zenbatzailea #(.MAX(9),.WIDTH(4)) zenb( .clk(clk), .rst(rst), .en(en[i]), .tc(enout[i]), .z(z[i-1]) );
    end
  end endgenerate

  integer j;
  always @(posedge clk) begin
    for (j=0; j < 4; j = j+1) begin if (~p) begin r[j] = z[j]; end else begin r[j] = r[j]; end
  end end

  assign {D3, D2, D1, D0} = r[s];

endmodule

module zenbatzailea (clk, rst, en, tc, z );
  parameter MAX = 9;
  parameter WIDTH = $clog2(MAX);

  input clk, rst, en;
  output tc;
  output [WIDTH-1:0] z;

  reg [WIDTH-1:0] r_reg;
  wire [WIDTH-1:0] r_next;

  wire cmp;

  always@(posedge clk) begin
    if (en | rst) begin r_reg <= r_next;
    end else begin      r_reg <= r_reg;  end
  end

  assign cmp = (r_reg == MAX) ? 1 : 0;
  assign r_next = (cmp | rst) ? 0 : r_reg + 1;

  assign z = r_reg;
  assign tc = cmp;
endmodule
