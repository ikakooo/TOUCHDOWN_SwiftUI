//
//  Shop.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 08.01.23.
//

import Foundation

class Shop: ObservableObject {
  @Published  var showingProduct: Bool = false
  @Published  var selectedProduct: Product? = nil
}
