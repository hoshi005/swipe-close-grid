//
//  HomeViewModel.swift
//  swipe close grid
//
//  Created by Susumu Hoshikawa on 2021/01/31.
//

import Foundation

final class HomeViewModel: ObservableObject {
    
    @Published var showDetail = false
    @Published var selectedIdol = idols[0]
}
