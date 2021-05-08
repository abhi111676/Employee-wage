#!/bin/bash

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
