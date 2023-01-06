//
//  TopPartDetailView.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 07.01.23.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - PROPERTIES
    
    var product: Product
    
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // PRICE
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(product.formatedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : 50)
            
            Spacer()
            
            // PHOTO
            Image(product.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        } //: HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView(product: products.first!)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
