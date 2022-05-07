//
//  CoinModel.swift
//  ByteCoin
//
//  Created by yurim on 2021/01/10.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    let currency: String
    let rate: Double
    
    var rateString: String {
        return String(format: "%.2f",rate)
    }
}
