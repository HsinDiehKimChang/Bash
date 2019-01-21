#!/bin/bash


stat=1

while [ $stat -eq 1 ]; do
	echo "    "
	echo "Please select what you want to do"
	echo "i)Search for specific name and show the account"
	echo "ii)Show free memory of the system"
	echo "iii)Show status of hardware"
	echo "iv)Change file permission"
	echo "v)Exit"
	read i
	#echo $i
		case $i in
		i) echo "Please insert the account name:"
	           read name
		   grep $name /etc/passwd > tmp
		   n=`wc tmp| awk '{print $1}'`
		   #echo $n
		        if [ $n -eq 0 ]; then
			   echo "Account not found"
                        else
                           cat tmp
                        fi;;
                ii) mm=`free -m|tail -2 | awk '{print $3}' | head -1`
                     echo "Free memory is $mm (mb)";;
                iii) echo "Please select what type of hardware status you want to see"
                         echo "1)CPU information"
	                 echo "2)PCI information"
	                 echo "3)USB information"  
                         echo "4)Overview HW"  
		         read j
                               case $j in
                                    1) lscpu;;
                                    2) lspci;;
                                    3) lsusb;;
                                    4) lshw;;
                               esac;;
                iv) echo "Please insert the file location and name:(ex:/etc/passwd)"
		          read path
                    echo "Please insert the permission you want to change :(ex:777)"
		          read ppp
                    chmod $ppp $path
                    ls -l $path;;
                v) echo "Goodbye!"
		   stat=0;;      
		esac
done

rm tmp
