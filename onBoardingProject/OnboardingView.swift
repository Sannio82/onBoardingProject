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
            
            if !manager.items.isEmpty{
            // Här kan man säkert skriva ännu en if-sats, exempelvis if not aproved {
//                disabled(true)
                TabView{
                
                ForEach(manager.items) { item in
                    OnboardingInfoView(item: item)
                
                }
   // För att kunna ändra strl om man vill kunna se bakgrunden             .frame(height: 800)
            }
 // detta om man ej vill kunna swipea eller använda indexView               .disabled(true)
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
