export PATH="/Applications/VMware Fusion.app/Contents/Library":$PATH
for r in $(vmrun list|tail -n +2); 
do 
    vmrun stop $r
done
