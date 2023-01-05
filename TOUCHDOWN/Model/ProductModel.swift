//
//  ProductModel.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 05.01.23.
//

import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var formatedPrice: String { "$\((price))" }
    var convertedColor: Color { Color(red: color[0], green: color[1], blue: color[2]) }
}
