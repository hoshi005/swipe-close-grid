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
                                .scaleEffect(viewModel.showDetail && viewModel.selectedIdol.id == idol.id ? viewModel.scale : 1)
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
                    .scaleEffect(viewModel.scale)
                    .offset(viewModel.offset)
                    .gesture(
                        DragGesture()
                            .onChanged(onChanged(value:))
                            .onEnded(onEnded(value:))
                    )
                    .onTapGesture {
                        withAnimation(.default) {
                            viewModel.showDetail = false
                        }
                    }
                    .zIndex(3.0)
            }
        }
    }
    
    func onChanged(value: DragGesture.Value) {
        
        // 下方向へのスワイプの場合のみ操作する.
        if 0 < value.translation.height {
            
            viewModel.offset = value.translation
            
            // スワイプ量に応じてサイズを小さくしていく(最小でも0.5まで).
            let screenHeight = UIScreen.main.bounds.height - 50
            let progress = viewModel.offset.height / screenHeight
            viewModel.scale = max(0.5, 1 - progress)
        }
    }
    
    func onEnded(value: DragGesture.Value) {
        
        withAnimation(.default) {
            
            // 下方向に大きく（300pt）スワイプしたら閉じる.
            if 300 < value.translation.height {
                viewModel.showDetail = false
            }
            
            // リセット.
            viewModel.offset = .zero
            viewModel.scale = 1.0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
