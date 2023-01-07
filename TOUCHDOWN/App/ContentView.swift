//
//  ContentView.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 01.01.23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
       // NavigationView {
            ZStack {
                if shop.showingProduct == false && shop.selectedProduct == nil {
                    VStack(spacing: 0) {
                        NabigationBarView()
                            .padding(.horizontal, 15)
                            .padding(.bottom)
                            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                            .background(Color.white)
                            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                            
                        
                        ScrollView(.vertical, showsIndicators: false, content: {
                            VStack(spacing: 0){
                                FeaturedTabView()
                                    .padding(.vertical, 20)
                                    .frame(height: UIScreen.screenHeight / 3)
                                
                                CategoryGridView()
                                
                                TitleView(title: "Helmets")
                                
                                LazyVGrid(columns: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                                    ForEach(products) { product in
//                                        NavigationLink(destination: ProductDetailView(product: product)){
                                            ProductItemView(product: product)
                                            .onTapGesture {
                                                feedback.impactOccurred()
                                                
                                                withAnimation(.easeInOut(duration: 1)){
                                                    shop.selectedProduct = product
                                                    shop.showingProduct = true
                                                }
                                            }
                                      //  }
                                       // .listRowBackground(Color.clear)
                                           
                                    } //: LOOP
                                } //: GRID
                                .padding(15)
                                
                                TitleView(title: "Brands")
                                
                                BrandGridView()
                                
                                FooterView()
                                    .padding(.horizontal)
                            }
                        })
                        
                        
                    } //: VSTACK
                    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                } else {
                    ProductDetailView()
                }
            } //: ZSTACK
            .ignoresSafeArea(.all, edges: .top)
        }
  //  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
