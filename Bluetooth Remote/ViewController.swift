//
//  ViewController.swift
//  Bluetooth Remote
//
//  Created by Sam Burrell on 4/3/18.
//  Copyright © 2018 Sam Burrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var simpleBluetoothIO: SimpleBluetoothIO!
    
    @IBOutlet weak var onOffButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        simpleBluetoothIO = SimpleBluetoothIO(serviceUUID: "Light API", delegate: self as! SimpleBluetoothIODelegate)
    }

    @IBAction func onOffActionButton(_ sender: Any) {
        simpleBluetoothIO.writeValue(value: 1)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


