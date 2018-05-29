//
//  ViewController.swift
//  GeoCalcApp
//
//  Created by Brian on 5/27/18.
//  Copyright © 2018 Brian. All rights reserved.
//

import UIKit
//import Foundation
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var latP1: UITextField!
    @IBOutlet weak var longP1: UITextField!
    @IBOutlet weak var latP2: UITextField!
    @IBOutlet weak var longP2: UITextField!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var bearingLabel: UILabel!
    
    @IBAction func calcStats(_ sender: Any) {
        let P1x = Double(latP1.text!)
        let P1y = Double(longP1.text!)
        let P2x = Double(latP2.text!)
        let P2y = Double(longP2.text!)

        let c1 = CLLocation(latitude: P1x!, longitude: P1y!)
        let c2 = CLLocation(latitude: P2x!, longitude: P2y!)
        
        let distanceInMeters = c1.distance(from: c2)
        distanceLabel.text = "Distance: \(distanceInMeters)"
        
        let radP1x = degreesToRadians(degrees: P1x!)
        let radP1y = degreesToRadians(degrees: P1y!)
        let radP2x = degreesToRadians(degrees: P2x!)
        let radP2y = degreesToRadians(degrees: P2y!)
        
        let dLon = radP2y - radP1y
        
        let y = sin(dLon) * cos(radP2x)
        let x = cos(radP1x) * sin(radP2x) - sin(radP1x) * cos(radP2x) * cos(dLon)
        let radiansBearing = atan2(y, x)
        
        bearingLabel.text = "Bearing: \(radiansToDegrees(radians: radiansBearing))"
        
        
    }

    
    @IBAction func clearButton(_ sender: Any) {
        latP1.text = ""
        longP1.text = ""
        latP2.text = ""
        longP2.text = ""
        distanceLabel.text = "Distance:"
        bearingLabel.text = "Bearing:"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.latP1.delegate = self
        //self.longP1.delegate = self
        //self.latP2.delegate = self
        //self.longP2.delegate = self
        //view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func degreesToRadians(degrees: Double) -> Double { return degrees * .pi / 180.0}
    func radiansToDegrees(radians: Double) -> Double { return radians * 180 / .pi}


}




