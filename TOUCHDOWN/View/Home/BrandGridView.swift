//
//  BrandGridView.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 05.01.23.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                ForEach(brands){ brand in
                    BrandItemView(brand: brand)
                }
                
            }
            .frame(height: UIScreen.screenWidth / 2  + 15)
            .padding(15)
        }
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
