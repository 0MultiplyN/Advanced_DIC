、timescale 1ns/1ps
module pfd model( RESET BN , IN , FB , flagU , flagD );
input IN ;
input FB ;
input RESET BN ;
output reg flagU ;
output reg flagD ;
reg QU , QD , OUTU , OUTD , flagUD ;
wire OUTBU , OUTBD ;


// DEAD ZONE
always@(QU or QD) OUTU <=~S( QU && !QD ) ;
always@(QU or QD) OUTD <=~( !QU&& QD) ;
assign #0.05 OUTBU = OUTU ;
assign #0.05 OUTBD = OUTD ;
//assign #0.06 flagUD = ( ~( QU && QD ) ) && RESET BN ;
always@( QU or QD or RESET BN) flagUD <= #0.05( ~( QU && QD ) ) && RESET BN ;



always @(negedge flaguD or posedge IN )
begin
    if ( !flaguD )
    begin
        QU <= #0.05 1'b0 ;
    end
    else if ( IN )
    begin
        QU <= #0.05 1'b1 ;
    end
    else
    begin
        QU <= #0.05 QU ; 
    end
end


always @(negedge flaguD or posedge FB )
begin
    if (!flaguD )
    begin
        QD <= #0.05 1'b0 ;
    end
    else if ( FB )
    begin
        QD <= #0.05 1'b1 ;
    end
    else
    begin
        QD <= #0.05 QD ;
    end
end
// FLAGU , FLAGD 

always @(negedge OUTBU or posedge IN )
begin
    if ( !OUTBU )
    begin
        flagU <= #0.05 1'b0 ;
    end
    else if( IN )
    begin
        flagU <= #0.05 1'b1 ;
    end
    else
    begin
        flagU <= #0.05 flagu ;
    end
end

always @(negedge OUTBD or posedge FB )
begin
    if (!OUTBD )
    begin
        flagD <= #0.055 1'b0 ;
    end
    else if( FB )
    begin
        flagD <= #0.055 1'b1 ;
    end
    else
    begin
        flagD <= #0.055 flagD ;
    end
end
// OUTBD == 0 -> FLAG D <= O


endmodule