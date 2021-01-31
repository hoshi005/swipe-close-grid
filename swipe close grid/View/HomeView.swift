//
//  HomeView.swift
//  swipe close grid
//
//  Created by Susumu Hoshikawa on 2021/01/31.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    @Namespace var namespace
    
    let columns = Array(repeating: GridItem(.flexible(), spacing: 8.0), count: 2)
    
    var body: some View {
        
        ZStack {
            
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
                            
                            IdolCardView(idol: idol, namespace: namespace)
                                .onTapGesture {
                                    withAnimation(.default) {
                                        viewModel.selectedIdol = idol
                                        viewModel.showDetail = true
                                    }
                                }
                        }
                    }
                    .padding()
                }
                .zIndex(0.0)
            }
            
            // フラグが立ったら詳細画面を前面に表示.
            if viewModel.showDetail {
                IdolDetailView(idol: viewModel.selectedIdol, namespace: namespace)
                    .onTapGesture {
                        withAnimation(.default) {
                            viewModel.showDetail = false
                        }
                    }
                    .zIndex(3.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
