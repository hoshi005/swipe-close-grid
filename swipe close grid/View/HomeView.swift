//
//  HomeView.swift
//  swipe close grid
//
//  Created by Susumu Hoshikawa on 2021/01/31.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        VStack(spacing: 0.0) {
            
            HStack {
                Text("アイドル一覧")
                    .font(.title)
                    .bold()
                    .foregroundColor(.primary)
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.primary)
                })
            }
            .padding()
            .background(Color.white)
            .shadow(color: Color.primary.opacity(0.08), radius: 5, x: 0, y: 5)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
