//
//  IdolCardView.swift
//  swipe close grid
//
//  Created by Susumu Hoshikawa on 2021/01/31.
//

import SwiftUI

struct IdolCardView: View {
    
    var idol: Idol
    
    var body: some View {
        
        VStack {
            
            Image(idol.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(idol.name)
                .font(.body)
                .bold()
                .foregroundColor(idol.color.accessibleFontColor)
        }
        .padding(8.0)
        .background(idol.color)
        .cornerRadius(16.0)
    }
}

struct IdolCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            IdolCardView(idol: idols[28])
                .previewLayout(.fixed(width: 300, height: 300))
            
            HomeView()
        }
    }
}
