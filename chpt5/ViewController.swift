//
//  ViewController.swift
//  chpt5
//
//  Created by Iyalla Otonye on 2016-08-18.
//  Copyright © 2016 Iyalla Otonye. All rights reserved.
//

import UIKit

enum modes {
    case NOT_SET
    case ADDITION
    case SUBTRACTION
}

class ViewController: UIViewController {
    
    var labelString:String = "0"
    var currentMode: modes = modes.NOT_SET
    var savedNum:Int = 0
    var lastButtonWasMode:Bool = false
    
    @IBOutlet weak var label: UILabel!
    @IBAction func tapped0(sender: AnyObject) {tappedNumber(0)}
    @IBAction func tapped1(sender: AnyObject) {tappedNumber(1)}
    @IBAction func tapped2(sender: AnyObject) {tappedNumber(2)}
    @IBAction func tapped3(sender: AnyObject) {tappedNumber(3)}
    @IBAction func tapped4(sender: AnyObject) {tappedNumber(4)}
    @IBAction func tapped5(sender: AnyObject) {tappedNumber(5)}
    @IBAction func tapped6(sender: AnyObject) {tappedNumber(6)}
    @IBAction func tapped7(sender: AnyObject) {tappedNumber(7)}
    @IBAction func tapped8(sender: AnyObject) {tappedNumber(8)}
    @IBAction func tapped9(sender: AnyObject) {tappedNumber(9)}
    @IBAction func tappedPlus(sender: AnyObject) {//savedNum = Int(labelString)       // labelString = "\(0)"     //  updateText()
    }
    @IBAction func tappedMinus(sender: AnyObject) {
    }
    @IBAction func tappedEquals(sender: AnyObject) {
    }
    @IBAction func tappedClear(sender: AnyObject) {
        labelString = "\(0)"
        updateText()
    }
    
    func tappedNumber(num:Int){
        labelString = labelString.stringByAppendingString("\(num)")
        updateText()
    }
    func updateText() {
        guard let labelInt:Int = Int(labelString) else {
            label.text = "Convertion to Int failed"
            return
        }
        label.text = "\(labelInt)"
    }
    
    func changeMode(newMode: modes){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

