//
//  IdolCardView.swift
//  swipe close grid
//
//  Created by Susumu Hoshikawa on 2021/01/31.
//

import SwiftUI

struct IdolCardView: View {
    
    var idol: Idol
    var namespace: Namespace.ID
    
    var body: some View {
        
        VStack {
            
            Image(idol.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "\(idol.id)-image", in: namespace)
            
            Text(idol.name)
                .font(.body)
                .bold()
                .foregroundColor(idol.color.accessibleFontColor)
                .matchedGeometryEffect(id: "\(idol.id)-title", in: namespace)
        }
        .padding(8.0)
        .background(
            idol.color
                .cornerRadius(16.0)
                .matchedGeometryEffect(id: "\(idol.id)-bg", in: namespace)
        )
    }
}

struct IdolCardView_Previews: PreviewProvider {
    
    @Namespace static var namespace
    
    static var previews: some View {
        Group {
            
            IdolCardView(idol: idols[28], namespace: namespace)
                .previewLayout(.fixed(width: 300, height: 300))
            
            HomeView()
        }
    }
}
