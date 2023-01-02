//
//  NabigationBarView.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 02.01.23.
//

import SwiftUI

struct NabigationBarView: View {
    // MARK: - PROPERTIES
    
    @State private var isAnimated: Bool = false
    
    // MARK: - BODY
    var body: some View {
        
        HStack{
            
            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) //: BUTTON
            
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                })
            Spacer()
            
            Button(action: {
                
            }, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10 )
                }
            }) //: BUTTON
        }
    }
}

// MARK: - PREVIEW

struct NabigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NabigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
