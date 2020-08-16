# KDAT
Android system.new.dat image unpacking tool called KitchenDat

## Usage (Linux)
1. In terminal, enter any directory (for example, homedir)
> cd ~/
2. Download the tool
> git clone https://github.com/Xsanori/KDAT.git -b master KDAT
3. Enter the downloaded folder
> cd KDAT
4. Make all files executable
> chmod u+x *
5. Place system.transfer.list, system.new.dat into the KDAT folder
6. Run unpack-mount script
> ./UNPACK.sh
7. To pack the system back, place file_contexts into the KDAT folder and run pack script
> ./PACK.sh
