#!/bin/sh

declare -A array
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
CheckAttendance

DailyWage()
{
	Wage_per_Hour=20
	FullDay_Hour=8
	Dailywage=$(($FullDay_Hour*$Wage_per_Hour))
	return $Dailywage
	echo "Employee Daily Wage is Rs$Dailywage of $FullDay_Hour hours"
}

PartTime_Wage()
{
	PartTime_Hour=4
	Wages_Per_Hour=20
	PartTime=$(($PartTime_Hour*$Wages_Per_Hour))
	return $PartTime
	echo "Part Time Wage Of a Employee is Rs$PartTime."
}
DailyAndTotalWages()
{
	echo -e "1.Full Time Employee \n2.Part Time Employee"
	echo "Enter an Option"
	read option
	case $option in
	1)
		i=0
		while((i<20))
		do
			CheckAttendance
			res=$?
			if(($res==0))
			then
				DailyWage
				wage=$?
				array[$i]=$wage
			else
				array[$i]=0
			fi
			i=$((i+1))
		done
		;;
	2)
		i=0
		while((i<20))
		do
			CheckAttendance
			res=$?
			if(($res==0))
			then
				PartTime_Wage
				wage=$?
				array[$i]=$wage
			else
				array[$i]=0
			fi
			i=$((i+1))
		done
		;;
	esac
		for((i=0; i<20; i++))
		do
			echo -n $((array[$i])) ""
			sum=$(($sum+array[$i]))

		done
			echo
			echo "Sum of Total Wages is Rs"$sum
}
DailyAndTotalWages
