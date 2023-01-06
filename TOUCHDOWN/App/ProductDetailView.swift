//
//  ProductDetailView.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 06.01.23.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    
    var product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //: NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //: HEADER
            HeaderDetailView(product: product)
                .padding(.horizontal)
            
            //: DETAIL TOP PART
            TopPartDetailView(product: product)
            
            //: DETAIL BOTOM PART
            //: RATING + SIZES
            //: DESCRIPTION
            //: QUANTITY + FAVORITE
            //: ADD TO CART
            
            Spacer()
            
        } //: VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(product.convertedColor.ignoresSafeArea(.all, edges: .all))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: products.first!)
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
