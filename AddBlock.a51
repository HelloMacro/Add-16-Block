// TITLE:- To add Block of data assuming the sum to be 16 bit.
// NAME:- PRATHMESH NAVALE       BATCH:- B3
// ROLL NO.:- 212075             PRN NO.:- 22420235               

ORG 0000H //start the program
	SETB PSW.3 //select register bank 1
	MOV R0,#30H  //mov direct data 30h in register r0
	MOV R1,#09H  //mov direct data 04h in register r1
	MOV R3,#00H  //mov direct data 00h in register r3
	MOV A,@R1	 //mov the data which is pointed by register r0 to acc
 L1:INC R0		 // incriment register r0
	ADD A,@R0	 //add content of acc with content which is pointed by the register r0
	MOV R2,A	 //mov the content of acc to register r2
	JNC L2		 //jump to UP if carry is not generated
	
	INC R3		//incriment register r3 if carry is generated
UP: DJNZ R0,L1  //jump if r1 is not equal to 0
END  //end the prgram