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

echo "1.DailyWages \n 2.Partime Wage"
echo "Enter one Option:"
read option
case $option in
	1)
		DailyWage
		echo Employee Daily Wage is Rs $?
		;;
	2)
		PartTime_Wage
		echo Part Time Wage Of a Employee is Rs $?
		;;
	*)
		echo "Enter a Valid option"
		;;
esac

MonthlyWage()
{
	for((i=0; i<20; i++))
	do
		CheckAttendance
		res=$?
		if(($res==0))
		then
			count=$((count+1))
		fi
	done
echo -e "1.Monthly DailyWage \n2.Monthly Partime Wage"
echo "Enter one Option:"
read option
case $option in
	1)
		DailyWage
		wages=$?
		echo "Monthly wage of a Full time Employee is Rs"$(($wages*$count))
		;;
	2)
		PartTime_Wage
		wages=$?
		echo "Monthly wage of PartTime employee is Rs"$(($wages*$count))
		;;
	*)
		echo "Enter a Valid option"
		;;
esac
}
MonthlyWage
