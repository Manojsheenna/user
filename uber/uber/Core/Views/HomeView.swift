//
//  HomeView.swift
//  uber
//
//  Created by Manoj Amsavel on 7/21/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapviewRepresentable()
            .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
