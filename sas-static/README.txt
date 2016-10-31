Instructions for use:



1. Open a Windows command window in the directory containing this
   file by pressing shift and right clicking in Windows explorer,
   then selecting “Open command window here”.  



2. To run assembler type “.\sas_32.exe <filename>" 
   but replace "<filename>" with the name of a .s 
   file -- e.g. “.\sas_32.exe test.s"


3. Copy the resulting <filename>.txt file to your 
   Verilog project directory (top level directory).  



4. Set the file passed to $readmemb to the above .txt 
   file name.  Remember you can do this by overriding the 
   parameter filename in the RAM module when you 
   instantiate the RAM.