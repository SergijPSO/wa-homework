//
//  ViewController.swift
//  Assignment2
//
//  Created by User on 18.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Choose and uncomment function call to run app
//        blocksInRow(amountOfBoxes: 6)
//        pyramidStairs(pyramidLevel: 4)
        buildPyramid(pyramidLevel: 6)
    }

    func addBox(x:Int, y:Int) {
        let boxView = UIView()
        boxView.frame = CGRect(x: x, y: y, width: 50, height: 50)
        boxView.backgroundColor = .cyan
        view.addSubview(boxView)
    }

    func blocksInRow(amountOfBoxes: Int) {
        if amountOfBoxes == 0 || amountOfBoxes < 0 {
            return
        } else {
            var x: Int = 30
            var y: Int = 130
            for _ in 1...amountOfBoxes {
                addBox(x: x, y: y)
                x += 60
            }
        }
    }

    func pyramidStairs(pyramidLevel: Int) {
        if pyramidLevel == 0 ||  pyramidLevel < 0 {
            return
        } else {
            var amounOfBoxes = 1
            var x: Int = 30
            var y: Int = 130

            for _ in 1...pyramidLevel {
                for _ in 1...amounOfBoxes {
                    addBox(x: x, y: y)
                    x += 60
                }
                amounOfBoxes+=1
                x = 30
                y += 60
            }
        }
    }

    func buildPyramid(pyramidLevel: Int) {
        if pyramidLevel == 0 || pyramidLevel < 0 {
            return
        } else {
            var amountOfBoxes = 1
            var x: Int = 170
            var y: Int = 250
            var startX: Int = 170
            for _ in 1...pyramidLevel {
                for _ in 1...amountOfBoxes {
                    addBox(x: x, y: y)
                    x += 60
                }

                amountOfBoxes += 1
                x = startX - 30
                startX = x
                y += 60
            }
        }
    }

}

