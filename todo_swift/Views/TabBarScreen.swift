//
//  TabBarScreen.swift
//  todo_swift
//
//  Created by Roshan Shrestha on 09/11/2022.
//

import SwiftUI

struct TabBarScreen: View {
    var body: some View {
        ZStack {
            // Background color and ignoring notch used safe area
            Color.lightPink.ignoresSafeArea()
            TabView {
                HomeScreen()
                    .tabItem {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.midnightDark)
                    }
                Text("Saved notes")
                    .tabItem {
                        Image(systemName: "folder.fill")
                            .foregroundColor(.midnightDark)
                    }
                Text("To do list")
                    .tabItem {
                        Image(systemName: "list.bullet.clipboard")
                            .foregroundColor(.midnightDark)
                    }
                Text("Reminders")
                    .tabItem {
                        Image(systemName: "calendar.badge.exclamationmark")
                            .foregroundColor(.midnightDark)
                    }
            }.accentColor(.midnightDark)
        }
    }
}



struct TabBarScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabBarScreen()
    }
}
