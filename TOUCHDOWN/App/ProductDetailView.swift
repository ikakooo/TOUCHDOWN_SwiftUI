//
//  ProductDetailView.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 06.01.23.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    
    func unwrapedProduct()-> Product{
         shop.selectedProduct ?? products.first!
    }
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //: NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //: HEADER
            HeaderDetailView(product: unwrapedProduct())
                .padding(.horizontal)
            
            //: DETAIL TOP PART
            TopPartDetailView(product: unwrapedProduct())
                .zIndex(1)
            
            //: DETAIL BOTOM PART
            VStack(alignment: .center, spacing: 0) {
                
                //: RATING + SIZES
                RaitingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                //: DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(unwrapedProduct().description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                //: QUANTITY + FAVORITE
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                //: ADD TO CART
                AddToCartDetailView(product: unwrapedProduct())
                    .padding(.bottom, 20)
                
            } //: VStack
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape())
                    .padding(.top, -150)
            )
            
            
            
        } //: VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(unwrapedProduct().convertedColor.ignoresSafeArea(.all, edges: .all))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
