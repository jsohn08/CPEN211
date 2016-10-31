Simple RISC Machine Assembler (sas)

USAGE:

1. Install cygwin using the instructions on Piazza

2. Run Cygwin by clicking on the cygwin icon.  If 
   installed correctly, running cygwin will open up
   a UNIX style command line environment or terminal. 
   The rest of the commands should be typed in the 
   cygwin terminal.  This step will create the 
   directory you need to copy files to in Step 3.

   My favorite student feedback of all time was one
   around 2007 complaining that the "instructor makes 
   students use stone age tools!"  You may soon
   sympathize with this person -- should you? 

   Command line environments and UNIX are *cool*. Don't 
   let *anyone* suggest to you Windows is all that 
   Electrical/Compute Engineers need to know.  Would 
   you hire a photographer that uses a smartphone to 
   take pictures for a family event such as a wedding 
   and pay them $1000? Not likely.  For that kind of 
   money you expect them to use a "real" camera.  If 
   you want to earn the big bucks, learn to use 
   professional tools. 

3. Copy the entire contents of the folder "sas" 
   (highlight it and press CTRL+C).  Browse to
   C:\cygwin64\home\<username> where <username> 
   is your windows username. This directory should 
   already exist.  If you install the 32-bit version
   of cygwin it will be C:\cygwin\home\<username>.
   With this directory highlighted, paste a copy of
   "sas" by typing "CTRL+V". 

4. Type "cd sas".

5. Type "ls" and you should see the following:

    $ ls
    makefile  README.txt  sas.cpp  sas.exe  sas.h  sas.l  sas.y  test.lst  test.s  test.txt

6. [Optional if using 64-bit Cygwin] To build assembler 
   type "make".  You should see:

    $ make
    yacc -d -t sas.y
    flex  sas.l
    make: Warning: File 'y.tab.c' has modification time 0.12 s in the future
    g++ -Wno-write-strings -g  sas.cpp y.tab.c lex.yy.c -lfl -lm -o sas
    make: warning:  Clock skew detected.  Your build may be incomplete.

   You may or may not see the "Warning" messages 
   above.  If you get *errors* this means you likely 
   did not install all the components of cygwin 
   specified in the install handout.


7. To run assembler type "./sas.exe <filename>" 
   but replace "<filename>"
 with the name of a .s 
   file -- e.g. "./sas.exe test.s"



8. Copy the resulting <filename>.txt file to your 
   Verilog project directory (top 
level directory).  



9. Set your $readmemb file name to your .txt file.  
   You can do this by overriding the parameter 
   filename in the RAM module in Slide Set 7

   when you instantiate the RAM.
