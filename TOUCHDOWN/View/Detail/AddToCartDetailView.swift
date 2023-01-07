//
//  AddToCartDetailView.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 07.01.23.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    
    var product: Product
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            
        }, label: {
            Spacer()
            Text("ADD to cart".uppercased())
                .font(.system(.title2,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) //: BUTTON
        .padding(15)
        .background( product.convertedColor)
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView(product: products.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
