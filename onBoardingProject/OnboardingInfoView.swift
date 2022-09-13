//
//  OnboardingInfoView.swift
//  onBoardingProject
//
//  Created by Sanna Johansson on 2022-09-12.
//

import SwiftUI

struct OnboardingInfoView: View {
    
    let item: OnboardingItem
    
    var body: some View {
        VStack(spacing: 0) {
            
            Text(item.emoji)
                .font(.system(size: 150))
                .padding()
            
            Text(item.title)
                .font(.system(size: 35,
                              weight: .heavy,
                              design: .rounded))
                .padding(.bottom, 12)
            
            Text(item.content)
                .font(.system(size: 18,
                              weight: .light,
                              design: .rounded))
                .padding()

            
            Button {
                             print("Knappen tryckt!")
                         } label: {
                             Text("Gå framåt!")
                                 
                                 .font(.system(size: 25,
                                               weight: .bold,
                                               design: .rounded))
                                 .scaledToFit()
                                 .cornerRadius(32)
                                 .padding()
                                 .foregroundColor(.orange)
                                 .background(.white)
                                 .cornerRadius(8)
                             
                         }
                         .padding(50)
        }
        .multilineTextAlignment(.center)
        .foregroundColor(.white)
        .padding()
       
        
    }
}

struct OnboardingInfoView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingInfoView(item: .init(emoji: "👋",
                                       title: "Join the best app",
                                       content: "Här kommer texten stå som kommer som en utbytbar lista!"))
            .previewLayout(.sizeThatFits)
            .background(.blue)
    }
}
