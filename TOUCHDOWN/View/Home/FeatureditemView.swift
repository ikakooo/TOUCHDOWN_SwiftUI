//
//  FeatureditemView.swift
//  TOUCHDOWN
//
//  Created by IKAKOOO on 02.01.23.
//

import SwiftUI

struct FeatureditemView: View {
    // MARK: - PROPERTIES
    
    let player: Player
    
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeatureditemView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureditemView( player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
