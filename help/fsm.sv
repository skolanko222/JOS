`timescale 1ns / 1ps

module mealy( input logic clk,input logic rst,input logic X,input logic en,output logic Z);
    
    typedef enum {S0, S1, S2, S3, S4, S5} state;
    state stan, n_stan;
    
    always_comb begin 
        n_stan = S0;
        case(stan) 
                S0: if(X) 
                        n_stan = S4;
                    else
                        n_stan = S1;
        endcase    
    end
    
    always @(posedge clk, posedge rst)
        if(rst)
            stan = S0;
        else if (en)
            stan = n_stan; 

    assign Z = (stan == S2 && n_stan == S3) || (stan == S5 && n_stan == S2);        
    
endmodule
