export PATH="/Applications/VMware Fusion.app/Contents/Library":$PATH
for r in $(vmrun list|tail -n +2); 
do 
    echo $r: $(vmrun getGuestIPAddress $r)
    hostname=$(echo $r | cut -d '/' -f 6 | cut -d '.' -f 1)
    #vmrun -gu dadmin -gp foobie777 runProgramInGuest $r /usr/bin/sudo /bin/hostname $hostname
    vmrun -gu dadmin -gp foobie777 runProgramInGuest $r /usr/bin/sudo bash -c "echo $hostname > /etc/hostname < /dev/null 2> /dev/null"
    vmrun stop $r
    vmrun start $r
done
