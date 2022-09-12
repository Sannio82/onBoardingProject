//
//  OnboardingView.swift
//  onBoardingProject
//
//  Created by Sanna Johansson on 2022-09-12.
//

import SwiftUI

struct OnboardingView: View {

    @StateObject private var manager = OnboardingManager()
    
    var body: some View {
        
        ZStack {
            Color.blue.ignoresSafeArea()
            
            if !manager.items.isEmpty {
            
            TabView{
                
                ForEach(manager.items) { item in
                    OnboardingInfoView(item: item)
                
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
              
                
        }
        }
        .onAppear(perform: manager.load)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
