#Get device number
set dev $(xinput list | grep Elan | awk '{ print $6 }' | grep [0-9][0-9] -o)

#Get natural scrolling
set natscrol $(xinput list-props $dev | grep Natural | head -n1 | grep [0-9][0-9][0-9] -o)

#Set natural scrolling
xinput set-prop $dev $natscrol 1

#Get tapping
set tap $(xinput list-props $dev | grep Tapping | head -n1 | grep [0-9][0-9][0-9] -o)

#Set tapping
xinput set-prop $dev $tap 1

#Get disable while typing 
set dwt $(xinput list-props $dev | grep Disable | head -n1 | grep [0-9][0-9][0-9] -o)

#Set disable while typing 
xinput set-prop $dev $dwt 0
