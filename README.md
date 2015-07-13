++ Introduction

This is a demo project to show  how to use vivado tcl scripts to do everything.  This methodology has been 
tested on designs large and small.  TCL scripts are a better way to capture compilation flows 
than clicking around in GUI's.

For how to do this with Zynq and Microblaze designs that use the IP Integrator see my other blog posts.

== Files

./implement - contains files for compiling the design into a chip.
./implement/ila_proj - a little Vivado project to interact with the ILA In-system Logic Analyzer.
./sim       - contains files for simulating a part of the design.
./source    - contains the source files


== How to use these scripts

1. Get a Vivado TCL shell.  

    In linux you have to source a script in the Xilinx install directory called "settings64.sh" or similar then run "vivado -mode tcl".

    In windows there is a Vivado TCL Shell item in the start menu.

2. Change to the implementation directory.

    for Linux: cd {path/to/project/implement/}  

    for Windows: cd {c:\path\to\project\implement\}

3. Run the setup script

    "source setup.tcl" - This will create a project and add all your source to the project.
    
    "source compile.tcl" - This will synthesize, place, route and generate output products.

    "source program_spi.tcl" - This will actually burn the bitfile onto the quad-spi config memory of the board.

    add_ila.tcl  - This script is sourced from inside compile.tcl to add an ILA to the design. Comment out of compile.tcl if not wanted.


4. Simulate.

    Change director to the ./sim directory.
    
    "source setup.tcl" - This will create a simulation project.

    Open the resulting proj.xpr file in windows with the file explorer or in Linux with "vivado proj.xpr".

    Click on run simulation in the Vivado GUI. ...

5. Interact with the ILA

    Chipscope is called ILA in Vivado.

    cd to ./implement/ila_proj and open proj.xpr.

    On the lower left hit "Open Hardware Manager".

    At the top select "Open Target" then "Auto Connect".

    Use the ILA to trigger and display some data.

    Use the "write_hw_ila_data" command to save ILA data. Good luck parsing the output.


   
    


