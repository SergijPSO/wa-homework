//
//  ViewController.swift
//  Assignment3
//
//  Created by User on 01.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view.

        //MARK: Task1
        //Variables declarationa
        let islandPrice = 24
        let currentYear = 2021
        let yearIslandWasSold = 1826
        let bankPercantagePeriod = currentYear - yearIslandWasSold
        let banksPercentForYear:Double = (24 * 6) / 100
        let finalAmount = banksPercentForYear * Double(bankPercantagePeriod) + Double(islandPrice)
        //Displaying answear
        print("First task result = \(finalAmount)")

        //MARK: Task2  - Solution 1
        //I left this soolution to compare it with the next one
        let spentsForAFirstMonth:Double = 1000
        //Variables declaration
        let percentsForAFirstMonth = Double(spentsForAFirstMonth) * 0.03
        let spentsForSecondMonth = Double(spentsForAFirstMonth) + percentsForAFirstMonth

        let percentsForThirdMonth = spentsForSecondMonth * 0.03
        let spentsForThirdMonth = percentsForThirdMonth + spentsForSecondMonth

        let percentsForFourthMonth = spentsForThirdMonth * 0.03
        let spentsForFourthMonth = percentsForFourthMonth + spentsForThirdMonth

        let percentsForFifthMonth = spentsForFourthMonth * 0.03
        let spentsForFifthMonth = percentsForFifthMonth + spentsForFourthMonth

        let percentsForSixhMonth = spentsForFifthMonth * 0.03
        let spentsForSixMonth = percentsForSixhMonth + spentsForFifthMonth

        let percentsForSevensMonth = spentsForSixMonth * 0.03
        let spentsForSevensMonth = percentsForSevensMonth + spentsForSixMonth

        let percentsForEighthMonth = spentsForSevensMonth * 0.03
        let spentsForEightMonth = percentsForEighthMonth + spentsForSevensMonth

        let percentsForNinesMonth = spentsForEightMonth * 0.03
        let spentsForNinesMonth = percentsForNinesMonth + spentsForEightMonth

        let percentsForTensMonth = spentsForNinesMonth * 0.03
        let spentsForTensMonth = percentsForTensMonth + spentsForNinesMonth

        var totalAmount = spentsForTensMonth + spentsForNinesMonth + spentsForEightMonth + spentsForSevensMonth + spentsForSixMonth + spentsForFifthMonth + spentsForFourthMonth + spentsForThirdMonth + spentsForSecondMonth + spentsForAFirstMonth

        let scholarshipAmount = 700 * 10
        let spentsSum = totalAmount

        let result = spentsSum - Double(scholarshipAmount)
        //Displaying answear
        print("Second task solution 1 result = \(Double(round(100 * result)/100))")

        //MARK: Task2  - Solution 2(Which is shorter than Task2  - Solution 1)
        //Variables declaration
        let studentsScholarshipAmount = 700 * 10
        var spentsForAMonth: Double = 1000
        var totalSpentsAmount = spentsForAMonth
        let increasingSpentsPercent = 0.03

        //Cycle which is counting increasing prices for each month and sum them
        for _ in 0...8 {
            spentsForAMonth = spentsForAMonth * (1 + increasingSpentsPercent)
            totalSpentsAmount += spentsForAMonth
        }

        let allSpentsSum = Double(round(100 * totalSpentsAmount)/100)
        let necessaryAmount = allSpentsSum - Double(studentsScholarshipAmount)
        //Displaying answear
        print("Second task solution 2 result = \(round(100 * necessaryAmount)/100)")

        //MARK: Task3
        //Variables declaration
        var studentsSavingsAmount = 2400
        let studentsScolarshipForEachMonth = 700
        var livedMonthes = 0

        var spentsForMonth:Double = 1000
        var totalSpentsForMonth:Double = spentsForMonth
        let increasingPricesPercent:Double = 0.03

        //Counting cycle
        while 0 < Int(studentsSavingsAmount) {
            livedMonthes += 1

            spentsForMonth = spentsForMonth * (Double(1) + increasingPricesPercent)
            totalSpentsForMonth += spentsForMonth

            studentsSavingsAmount = studentsSavingsAmount + studentsScolarshipForEachMonth
            studentsSavingsAmount -= Int(spentsForMonth)
        }
        //Displaying answear
        print("Second task 3 result = \(livedMonthes)")

        //MARK: Task4
        var convertedNumber = ""
        func reversedNumber(number:Int) {
            convertedNumber = String(number)
            convertedNumber = String(convertedNumber.reversed())
            let finalNumber: Int = Int(convertedNumber)!

            //Displaying answear
            print("Second task 4 result = \(finalNumber)")
        }
        //Function call
        reversedNumber(number:25)
    }
}

