//
//  CategoryModel.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 05.01.23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
