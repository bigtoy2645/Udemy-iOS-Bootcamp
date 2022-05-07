//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by yurim on 2020/09/02.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

// 사용하지 않는다. 코드로 View 추가하는 샘플

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
