//
//  HeaderDetailView.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 07.01.23.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES
    
    var product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6 ) {
            Text("Protective Gear")
            
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VStack
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(product: products.first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
