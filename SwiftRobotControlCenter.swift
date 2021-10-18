//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//all robor commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {


    //in this function change levelName
    override func viewDidLoad() {
        levelName = "L4H" // L4H/L55H/L555H
        super.viewDidLoad()
    }

    //write your code here
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        //MARK: Functions usage
        createPyramid()
        put()
    }

    //MARK: Functions declaration

    func createPyramid() {
        drawFirstLine()
        turnRight()
        turnRight()
        move()
        drawSecondLine()
        turnLeft()
        if frontIsClear {
            move()
            turnLeft()
            while rightIsClear {
                createPyramid()
            }
        }
    }
    //Draw first diagonal
    func drawFirstLine() {
        while rightIsClear {
            put()
            move()
            turnRight()
            move()
            turnLeft()
        }
        put()
    }
    //Draw second diagonal
    func drawSecondLine() {
        while frontIsClear {
            put()
            move()
            turnRight()
            move()
            turnLeft()
        }
        put()
    }
    // Turn robot left
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }

}
