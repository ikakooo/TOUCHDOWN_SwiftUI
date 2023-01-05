//
//  ProductItemView.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 05.01.23.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTIES
    
    var product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .background(product.convertedColor)
                .cornerRadius(20)
            
            Text(product.name)
                .font(.title2)
                .fontWeight(.heavy)
                
            Text(product.formatedPrice)
                .foregroundColor(.gray)
        } //: VStack
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products.first!)
            .previewLayout(.fixed(width: 200, height: 300))
    }
}
