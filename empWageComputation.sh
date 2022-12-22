#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

isPartTime=1
isFullTime=2
empRatePerHr=20
totalSalary=0
numWorkingDays=20
for (( day1; day<=$numWorkingDays; day++))
do
empCheck=$((RANDOM%3));
case $empCheck in
$isFullTime)
echo "Employe is full-time present"
empHrs=8
;;
$isPartTime)
echo "Employee is part-time present"
empHrs=4
;;
*)
echo "Employee is absent"
empHrs=0
;;
esac
salary=$(($empHrs*$empRatePerHr))
totalSalary=$(($totalSalary+$salary))
done
