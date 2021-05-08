#!/bin/bash

#use Case 1--
CheckAttendance()
{
    Attendance=$(($RANDOM%2))
		if(($Attendance<1))
		then
            		echo "Employee is present:"
			return 0
	        else
        		echo "Employee is Absent:"
			return 1
        	fi
}
CheckAttendance
