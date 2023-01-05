//
//  BrandItemView.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 05.01.23.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPERTIES
    
    var brand: Brand
    
    // MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .frame(width: UIScreen.screenWidth / 5 , height: UIScreen.screenWidth / 5)
            .padding(5)
            .background(Color.white.cornerRadius(UIScreen.screenWidth / 30))
            .background(
                    RoundedRectangle(cornerRadius: UIScreen.screenWidth / 30)
                        .stroke(.gray, lineWidth: 1)
                )
           // .shadow(radius: UIScreen.screenWidth / 30)
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands.first!)
            .previewLayout(.sizeThatFits)
            .padding(20)
    }
}
