//
//  IdolDetailView.swift
//  swipe close grid
//
//  Created by Susumu Hoshikawa on 2021/01/31.
//

import SwiftUI

struct IdolDetailView: View {
    
    var idol: Idol
    
    var body: some View {
        
        VStack {
            
            Image(idol.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(idol.name)
                .font(.largeTitle)
                .bold()
                .foregroundColor(idol.color.accessibleFontColor)
            
            Spacer()
        }
        .padding(8.0)
        .background(idol.color.ignoresSafeArea())
    }
}

struct IdolDetailView_Previews: PreviewProvider {
    static var previews: some View {
        IdolDetailView(idol: idols[28])
    }
}
