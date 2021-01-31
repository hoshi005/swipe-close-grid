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
        Text(idol.name)
    }
}

struct IdolCardView_Previews: PreviewProvider {
    static var previews: some View {
        IdolCardView(idol: idols[28])
    }
}
