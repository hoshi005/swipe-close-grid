//
//  HomeView.swift
//  swipe close grid
//
//  Created by Susumu Hoshikawa on 2021/01/31.
//

import SwiftUI

struct HomeView: View {
    
    let columns = Array(repeating: GridItem(.flexible(), spacing: 8.0), count: 2)
    
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
            .zIndex(1.0)
            
            ScrollView {
                
                LazyVGrid(columns: columns, spacing: 8.0) {
                    
                    ForEach(idols) { idol in
                        
                        IdolCardView(idol: idol)
                    }
                }
                .padding()
            }
            .zIndex(0.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
