//
//  ViewController.swift
//  Assignment8
//
//  Created by User on 04.10.2021.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Outlets and variables declaretion
    @IBOutlet weak var tapsLabel: UILabel!
    @IBOutlet weak var blackView: UIView!

    var counter = 0

    //MARK: - Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        blackView.center = view.center
    }

    //MARK: - UIGesture recognizer
    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        //Increasing counter to count taps
        counter += 1
        //Cehckig state of tap gestere
        if sender.state == .ended {

            //Getting sizes of blackView from storyboard
            let width = blackView.frame.size.width
            let height = blackView.frame.size.height

            //Getting area sizes
            let frame = view.safeAreaLayoutGuide.layoutFrame

            //Distructurising sizes
            let frameX = frame.width
            let frameY = frame.height

            //Setting random coordinates that not bigger than screen height and width
            let xPosition = CGFloat.random(in: 1..<(frameX - width))
            let yPosition = CGFloat.random(in: 1..<(frameY - height))

            //Changing blackView position
            self.blackView.frame = CGRect(x: xPosition, y: yPosition, width: width, height: height)
            tapsLabel.text = "\(counter)"
        }

    }
}
