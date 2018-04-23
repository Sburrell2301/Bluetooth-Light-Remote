//
//  FixErrors?ViewController.swift
//  Bluetooth Remote
//
//  Created by Sam Burrell on 4/18/18.
//  Copyright © 2018 Sam Burrell. All rights reserved.
//
import Foundation

extension Data {
    static func dataWithValue(value: Int8) -> Data {
        var variableValue = value
        return Data(buffer: UnsafeBufferPointer(start: &variableValue, count: 1))
    }
    
    func int8Value() -> Int8 {
        return Int8(bitPattern: self[0])
    }
}
