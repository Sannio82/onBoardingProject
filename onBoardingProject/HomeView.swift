//
//  ContentView.swift
//  onBoardingProject
//
//  Created by Sanna Johansson on 2022-09-12.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
      
            
    
                VStack {
                    Text("Testing testing!")
                        .font(.largeTitle)
                    Button("Hej hej allihopa") {
                }
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                }
        
  
}
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}

