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
        levelName = "L4H"
        super.viewDidLoad()
    }

    //write your code here
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        //MARK: Functions usage
        drawZebra()
    }

    func drawZebra() {
        runTheLine()
        turnRight()
        if (frontIsClear) {
            move()
            if (frontIsClear) {
                move()
                turnRight()
                runTheLine()
                turnLeft()
                if (frontIsClear) {
                    move()
                    if (frontIsClear) {
                        move()
                        turnLeft()
                        drawZebra()
                    }
                }
            }
        }
    }

    //Run a line
    func runTheLine () {
        while frontIsClear {
            put()
            move()
        }
        put()
    }

    //Turn robot to left
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }

}
