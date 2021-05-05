//
//  ViewController.swift
//  UiKitApp
//
//  Created by Vlad Zinevich on 05.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup main label
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        // Setup segment control
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        // Setup slider
        slider.value = 1
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        
        mainLabel.text = String(slider.value)
    }

    @IBAction func changeSegment() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segment is selected"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "The second segment is selected"
            mainLabel.textColor = .blue
        case 2:
            mainLabel.text = "The third segment is selected"
            mainLabel.textColor = .green
        default:
            break
        }
    }
    
    @IBAction func sliderAction() {
        let backgroundColor = view.backgroundColor
        view.backgroundColor = backgroundColor?.withAlphaComponent(CGFloat(slider.value))
        mainLabel.text = String(slider.value)
    }
}

