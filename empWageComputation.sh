#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$((RANDOM%3));
if [ $isFullTime -eq $randomCheck ];
then
echo "Employee is full-time present"
empHrs=8
elif [ $isPartTime -eq $randomCheck ]
then
echo "Employee is part-time present"
empHrs=4
else
echo "Employee is absent"
empHrs=0
fi
salary=$(($empHrs*$empRatePerHr))
