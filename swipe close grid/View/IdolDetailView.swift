//
//  IdolDetailView.swift
//  swipe close grid
//
//  Created by Susumu Hoshikawa on 2021/01/31.
//

import SwiftUI

struct IdolDetailView: View {
    
    var idol: Idol
    var namespace: Namespace.ID
    
    var body: some View {
        
        VStack {
            
            Image(idol.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "\(idol.id)-image", in: namespace)
            
            Text(idol.name)
                .font(.largeTitle)
                .bold()
                .foregroundColor(idol.color.accessibleFontColor)
                .matchedGeometryEffect(id: "\(idol.id)-title", in: namespace)
            
            Spacer()
        }
        .padding(8.0)
        .background(
            idol.color
                .matchedGeometryEffect(id: "\(idol.id)-bg", in: namespace)
                .ignoresSafeArea()
        )
    }
}

struct IdolDetailView_Previews: PreviewProvider {
    
    @Namespace static var namespace
    
    static var previews: some View {
        IdolDetailView(idol: idols[28], namespace: namespace)
    }
}
