module ALU4bit(A,B,ALU_Sel,ALU_Result,Zero);
    input [3:0] A;     
    input [3:0] B;     
    input [2:0] ALU_Sel; 
    output reg [3:0] ALU_Result; 
    output Zero;         


    always @(*) begin
        case (ALU_Sel)
            3'b000: ALU_Result = A + B;         
            3'b001: ALU_Result = A - B;         
            3'b010: ALU_Result = A & B;    
            3'b011: ALU_Result = A | B;        
            3'b100: ALU_Result = A ^ B;        
            3'b101: ALU_Result = ~A;       
            3'b110: ALU_Result = A << 1;    
            3'b111: ALU_Result = A >> 1;       
            default: ALU_Result = 4'b0000;      
        endcase
    end
    assign Zero = (ALU_Result == 4'b0000) ? 1'b1 : 1'b0;  
endmodule
