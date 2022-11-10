//
//  LandingScreen.swift
//  todo_swift
//
//  Created by Roshan Shrestha on 08/11/2022.
//

import SwiftUI

struct LandingScreen: View {
    var body: some View {
        ZStack {
            
            // Background color and ignoring notch used safe area
            Color.mintGreen.ignoresSafeArea()
            
            VStack {
                HStack{
                    Image(systemName: "map")
                        .accentColor(Color.midnightDark)
                        .font(.system(size:30)).padding(.trailing)
                    
                    Text("Dayzer").font(.largeTitle).bold().foregroundColor(Color.midnightDark)
                    
                    Spacer()
                    
                    Image(systemName: "sparkles")
                        .foregroundColor(Color.white)
                        .font(.system(size: 30))
                    
                }.padding()
                
                Text("To simplify the way you work")
                    .bold()
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Spacer()
                
                Image("LandingImage")
                    .frame(maxWidth: .infinity,maxHeight: UIScreen.main.bounds.height/3)
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("Controlling deliveries in reliable and no-hassle way.")
                    .font(.title3)
                    .multilineTextAlignment(.center).padding(.horizontal,50)
                
                NavigationLink(
                    destination:
                        TabBarScreen().navigationBarBackButtonHidden(true)
                ) {
                    Text("Get free trial")
                        .bold()
                        .font(.title3)
                        .foregroundColor(Color.white)
                    
                        .frame(height: UIScreen.main.bounds.height/15)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10)
                            .fill(Color.midnightDark)
                        ).padding(.horizontal)
                }
            }
        }
    }
}

struct LandingScreen_Previews: PreviewProvider {
    static var previews: some View {
        LandingScreen()
    }
}
