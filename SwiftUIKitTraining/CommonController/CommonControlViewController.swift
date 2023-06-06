//
//  CommonControlViewController.swift
//  SwiftUIKitTraining
//
//  Created by Ashwin A U on 31/05/23.
//

import UIKit

class CommonControlViewController: UIViewController {
    
    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var strpperLabel: UILabel!
    @IBOutlet weak var stepperButton: UIStepper!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    var toggleTitle: String {
        return "toggle is \(toggle.isOn)"
    }
    var stepperValue: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    @IBAction func toggleAction(_ sender: UISwitch) {
        print("toggle value is \(sender.isOn)")
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func segementAction(_ sender: UISegmentedControl) {
        print(sender.numberOfSegments)
        print(sender.selectedSegmentIndex)
    }
    
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        stepperValue = sender.value
        strpperLabel.text = "\(stepperValue)"
    }
}
