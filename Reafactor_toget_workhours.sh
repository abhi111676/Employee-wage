#!/bin/sh

CheckAttendance()
{
    	Attendance=$(($RANDOM%2))
		if(($Attendance<1))
		then
            		return 0
        	else
            		return 1
        	fi
}

WorkHour()
{
count=0
        for((i=0; i<20; i++))
	do
		CheckAttendance
		res=$?
		if(($res==0))
		then
			count=$(($count+1))
		fi
	done
	echo "Total Working Hour Of an Employee"
	echo -e "1.Full Time employee \n2.Part Time Employee"
	echo "Enter a option"
	read option
		if(($option==1))
		then
			TotalWorkHour=$((8*$count))
		elif(($option==2))
		then
			TotalWorkHour=$((4*$count))
		else
			echo "Enter a Valid option."
		fi
		return $TotalWorkHour
}
WorkHour
echo "Total Working Hour of Employee is $?"
echo 
