export PATH="/Applications/VMware Fusion.app/Contents/Library":$PATH
for r in {1..4}
do 
    vmrun start /Volumes/SG_Archive/ericr/vmware/kubnode${r}x.vmwarevm/kubnode${r}x.vmx
done
