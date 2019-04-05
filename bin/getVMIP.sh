export PATH="/Applications/VMware Fusion.app/Contents/Library":$PATH
for r in $(vmrun list|tail -n +2); 
do 
    if [ -z "$1" ]
    then 
        echo $(vmrun getGuestIPAddress $r) $(echo $r | cut -d '/' -f 6 | cut -d '.' -f 1)
    else
        echo $(vmrun getGuestIPAddress $r)
    fi
done
