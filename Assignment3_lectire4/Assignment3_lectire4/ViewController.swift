//
//  ViewController.swift
//  Assignment3_lectire4
//
//  Created by User on 21.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view.

        //MARK: Task 1
        func countSymbols(nameString: String) -> Int {
            //Conting letters in string
            let result = nameString.count
            return result
        }
        //Displaying answear
        print("Result of task 1 = \(countSymbols(nameString:"PankivSergiyBohdanovich"))")

        //MARK: Task 2
        func checkNameSuffix(nameSuffix: String, stringName: String) -> String {
            var result: String
            //Checking if string have necessary suffix
            if stringName.hasSuffix(nameSuffix) {
                result = "Name string has suffix \(nameSuffix)"
            } else {
                result = "Name string has no suffix \(nameSuffix)"
            }

            return result
        }
        //Displaying answear
        print("Result of task 2 = \(checkNameSuffix(nameSuffix:"ich", stringName: "PankivSergiyBohdanovich"))")

        //MARK: Task 3
        func stringSeparation(fullName: String) {
            var bigLetter = ""
            //Searching for big letter
            for i in fullName {
                if i.isUppercase {
                    bigLetter = "\(i)"
                }
            }
            //Splitting string by big letter
            let splitted = fullName.split(separator: Character(bigLetter))

            if let firstName = splitted.first,
               let surname = splitted.last {
                print("Result of task 3 = \(firstName)")
                print("Result of task 3 = \(bigLetter + surname)")
            }
        }
        //Displaying answear
        stringSeparation(fullName: "PankivSergij")

        //MARK: Task 4
        func changeText(text: String) ->  String {
            //Creating new string
            var reversedText = String()

            if text.isEmpty {
                return "Text field is empty"
            } else{
                //Reversing string
                for character in text {
                    reversedText.insert(character, at: reversedText.startIndex)
                }
                //Return reversed string
                return reversedText
            }
        }
        //Displaying answear
        print("Result of task 4 = \(changeText(text: "Ось"))")

        //MARK: Task 5
        // Works for 1234567,123456,12345,1234
        func addCommas(stringOfNumbers: String) -> String {
            //reasining entire constant to mutable variable
            var newString = ""
            newString = stringOfNumbers
            //Looping cases
            switch stringOfNumbers.count {
            case 7:
                newString.insert(",",at:newString.index(newString.startIndex, offsetBy: 1))
                newString.insert(",",at:newString.index(newString.startIndex, offsetBy: 5))
            case 6:
                newString.insert(",",at:newString.index(newString.startIndex, offsetBy: 3))
            case 5:
                newString.insert(",",at:newString.index(newString.startIndex, offsetBy: 2))
            case 4:
                newString.insert(",", at: newString.index(after: newString.startIndex))
            default:
                break
            }
            return newString
        }
        //  Displaying task result
        print("Result of task 5a = \(addCommas(stringOfNumbers: "1234567"))")
        print("Result of task 5b = \(addCommas(stringOfNumbers: "123456"))")
        print("Result of task 5c = \(addCommas(stringOfNumbers: "12345"))")
        print("Result of task 5d = \(addCommas(stringOfNumbers: "1234"))")

        //MARK: Task 6
        func checkPasswordSafety(password: String) -> Int {
            //Declaration of empty safetyMark counter
            var safetyMark = 0
            // Creating ranges to check
            let numbersRange = password.rangeOfCharacter(from: .decimalDigits)
            let lowerCaseRange = password.rangeOfCharacter(from: CharacterSet.lowercaseLetters)
            let upperCaseRange = password.rangeOfCharacter(from: CharacterSet.uppercaseLetters)
            let symbolsRange =  password.range(of: ".*[^A-Za-z0-9].*", options: .regularExpression)

            //Checking if password contains Int
            if numbersRange != nil {
                safetyMark += 1
            }
            //Checking if password contains uppercase letters
            if lowerCaseRange != nil {
                safetyMark += 1
            }
            //Checking if password contains lowercase letters
            if upperCaseRange != nil {
                safetyMark += 1
            }
            //Checking if password contains special symbols
            if symbolsRange != nil {
                safetyMark += 1
            }
            //Checking if password contains all previous lested symbols
            if  symbolsRange != nil && upperCaseRange != nil && lowerCaseRange != nil && numbersRange != nil {
                safetyMark = 5
            }

            return safetyMark

        }
        //Displaying answear
        print("Result of task 6a = \(checkPasswordSafety(password: "123456"))")
        print("Result of task 6b = \(checkPasswordSafety(password: "qwertyui"))")
        print("Result of task 6c = \(checkPasswordSafety(password: "12345qwerty"))")
        print("Result of task 6d = \(checkPasswordSafety(password: "32556reWDr"))")
        print("Result of task 6e = \(checkPasswordSafety(password: "32556reWDr_"))")


        //MARK: Task 7
        func sortAndRemoveDuplicates(numbers: [Int]) -> [Int] {
            // Convert array into a set to get unique values.
            let uniqueNumbers = Set<Int>(numbers)
            // Convert set back into an Array of Ints.
            var result = Array<Int>(uniqueNumbers)

            let soretedArray = result.sorted { a, b in
                return b > a
            }

            return soretedArray
        }
        //Displaying answear
        print("Result of task 7 = \(sortAndRemoveDuplicates(numbers: [9, 1, 2, 5, 1, 7]))")

        //MARK: Task 8
        func cyrrilicToLatin(stringVariable: String) -> String {
            //Declaration of arrys with small letters
            var cyrrilicArr: [String] = ["а","б","в","г","д" ,"с", "я", "з", "ь", "м", "о", "р"]
            var latinArr: [String] = ["a","b","v","g","d", "c" ,"ya", "z", "", "m", "o", "r"]
            //Declaration of arrys with big letters
            var cyrrilicArrBig: [String] = ["А","Б","В","Г","Д" ,"Ц", "Я", "З", "Ь", "М", "О", "Р"]
            var latinArrBig: [String] = ["A","B","V","G","D", "C" ,"YA", "Z", "", "M", "O", "R"]

            //Variables declaration
            var symbol = ""
            var elPosition: Int
            var latinLetter = ""
            var newString = ""
            var bigLetterIndex: Int
            //Converting enetered word to an array
            var wordArr = Array(stringVariable)

            for i in wordArr {
                //Checking if enered word have lowercase letters
                if i.isLowercase {
                    symbol = String(i)
                    // Checking if word array contaons letters from array storages
                    if cyrrilicArr.contains(symbol) {
                        //Searching for element position and unwrapping it
                        elPosition = cyrrilicArr.firstIndex(of: symbol)!
                        //Replacing each matched letter from cyrrilic to latin
                        latinLetter = latinArr[elPosition]
                    }
                    symbol = latinLetter
                    //Creating a string from  latin letters
                    newString =  newString.appending(symbol)
                } else {
                    //Making all previous listed actions if letters are uppercase
                    symbol = String(i)
                    if cyrrilicArrBig.contains(symbol) {
                        elPosition = cyrrilicArrBig.firstIndex(of: symbol)!
                        latinLetter = latinArrBig[elPosition]
                    }
                    symbol = latinLetter
                    newString =  newString.appending(symbol)
                }

            }

            return newString
        }
        //Displaying answear
        print("Result of task 8 = \(cyrrilicToLatin(stringVariable: "ЯЗЗЬ"))")
        print("Result of task 8 = \(cyrrilicToLatin(stringVariable: "морДа"))")

        //MARK: Task 9
        func filterElements(arr: [String], element: String) -> [String] {
            //Filtering array elements
            let newArr = arr.filter { el in
                el.contains(element)
            }
            //Sorting filtered array
            let sortedArr = newArr.sorted {first, next in
                return next > first
            }
            return sortedArr
        }
        //Displaying answear
        print("Result of task 9 =  \(filterElements(arr: ["lada", "sedan", "baklazhan"], element:"da"))")

        //MARK: Task10
        func antiMat(phrase: String) -> String {
            //Creating storage of swear words
            let swearWordsArr: Set = [ "fak", "fuck" , "fucking", "faking"]
            //Converting phrase to [String]
            var phraseArr = phrase.components(separatedBy: " ")
            //Initializing of empty string variable
            var word = ""
            //Looping through the string array
            for i in swearWordsArr {
                //Searching for matches in converted phrase and awear words storage
                if phraseArr.contains(i) {
                    //Changing every swear word letters to *
                    for el in i {
                        word += "*"
                    }
                    //Searching for index of swear word
                    var position = phraseArr.firstIndex(of: i)!
                    //Reaplcaing swear word to created before template
                    phraseArr[position] = word
                }
            }
            //Converting [String] to String
            let stringFromArr = phraseArr.joined(separator: " ")
            return stringFromArr
        }
        //Displaying task result
        print("Result of task 10 = \(antiMat(phrase: "hello my fak"))")

    }
}

