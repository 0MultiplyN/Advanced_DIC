、timescale 1ns/1ps
module dco model(reset coarse, dco out);
parameter dco to = 7.449335 ; //DCO Min. Delay is 0.634ns
input reset ; //reset =0, DCO is reset, reset =1, DCO works
input [127:0] coarse; //DCO control code
output dco_out; //DCO output clock
reg dco out;
real period;
initial period=dco_to;
initial dco out=1'50;

//Modeling code vs. DCO output period
always@(coarse) begin
    case(coarse)
        128'h00000000000000000000000000000000 : period <= 7.449335 ;
        128'h00000000000000000000000000000001 : period <= 6.049335 ;
        ...
        128'h3ffffffffffffffffffffffffffffffd :  period <= 1.45035 ; 
        128'h7fffffffffffffffffffffffffffffff  : period <= 1.4468 ; 
    endcase
end
        // 128 case dco control codes 


always@(posedge reset_) //DC0 Work
    begin : dco run
        forever begin : dco set
        dco out = ~dco out;
        #(period/2.0);
        end
    end
always@(negedgereset_) //DCO STOP
    begin
        dco out = 0;
        disable dco run; //turn off DCO when reset =o;
    end
endmodule