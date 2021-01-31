//
//  HomeViewModel.swift
//  swipe close grid
//
//  Created by Susumu Hoshikawa on 2021/01/31.
//

import Foundation
import CoreGraphics

final class HomeViewModel: ObservableObject {
    
    @Published var showDetail = false
    @Published var selectedIdol = idols[0]
    
    @Published var offset: CGSize = .zero
    @Published var scale: CGFloat = 1.0
}
