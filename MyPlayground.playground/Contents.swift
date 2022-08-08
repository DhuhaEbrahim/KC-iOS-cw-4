import UIKit

var Name = "Dhuha"
var BirthdayYear = 2004
var CurrentYear = 2022
var Age : Int
Age = CurrentYear - BirthdayYear

print("Hello my name is \(Name) and I'm \(Age) years old")

if Age >= 14 && Age <= 18
{ print("نعم يمكنك المشاركة في الكويت تبرمج")}
else
{ print("لا يمكنك المشاركة في الكويت تبرمج")}

//Task2

var Num1 : String = "8"
var Num2 : Int = 4
var result : Double = (Double(Num1) ?? 0) + Double(Num2)




