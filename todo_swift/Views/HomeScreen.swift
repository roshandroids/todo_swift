//
//  HomeScreen.swift
//  todo_swift
//
//  Created by Roshan Shrestha on 08/11/2022.
//

import SwiftUI

struct HomeScreen: View {
    @State private var searchText: String = ""
    @State private var showSearchSheet: Bool = false
    var body: some View {
        NavigationView{
            ZStack {
                // Background color and ignoring notch used safe area
                Color.lightPink.ignoresSafeArea()
                
                ScrollView(){
                    LazyVStack(alignment: .leading,spacing: 0){
                        
                        Text("Tasks for today:")
                            .bold()
                            .font(.largeTitle)
                            .foregroundColor(.midnightDark).padding(.horizontal,15).padding(.top,20)
                        
                        Spacer().frame(height: 10)
                        
                        HStack{
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                            
                            Spacer().frame(width: 10)
                            
                            Text("5 available").font(.title3)
                        }.padding(.horizontal,15)
                        
                        Spacer().frame(height: 25)
                        
                        HStack{
                            
                            TextField("Search",text: $searchText)
                                .padding([
                                    .leading,.trailing,])
                            
                            Image(systemName: "magnifyingglass").padding(.trailing)
                        }
                        .frame(height: UIScreen.main.bounds.height/13).frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius:  10).fill(.white)).padding(.horizontal,15)
                        
                        Spacer().frame(height: 35)
                        
                        HStack{
                            Text("Last connections").fontWeight(.semibold).font(.title3).foregroundColor(.midnightDark)
                            
                            Spacer()
                            
                            Text("See all").foregroundColor(.gray).fontWeight(.medium)
                        }.padding(.horizontal,15)
                        
                        Spacer().frame(height: 20)
                        
                        LastConnections()
                        
                        
                        VStack{
                            HStack{
                                Text("Active projects").fontWeight(.semibold).font(.title3).foregroundColor(.midnightDark)
                                
                                Spacer()
                                
                                Text("See all").foregroundColor(.gray).fontWeight(.medium)
                            }
                            
                            Spacer().frame(height: 20)
                            
                            LazyVStack {
                                ForEach(0...5, id: \.self) { index in
                                    ActivityCard()
                                }
                            }
                            
                        }.padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius:  10)
                                .fill(.white)).cornerRadius(20, corners: [.topLeft, .topRight])
                        
                        
                        
                    }
                }
            }.sheet(isPresented: $showSearchSheet){
                Text("No notifications available")
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    AppBarLeading()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "bell.badge.fill").foregroundColor(.midnightDark).onTapGesture {
                        showSearchSheet.toggle()
                    }
                }
            }
        }
    }
}

struct AppBarLeading: View {
   
    var body: some View {
        HStack(alignment: .center) {
            
            AsyncImage(url: URL(string:"https://i.pravatar.cc/")){ image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Color.purple.opacity(0.1)
            }
            .frame(width:60, height: 60)
            .clipShape(Circle())
            .shadow(radius: 30)
            
            Spacer().frame(width: 10)
            
            Text("Hi, Kira!").foregroundColor(.gray).font(.body)
        }
    }
}
struct ActivityCard: View {
    var body: some View {
        VStack(alignment:.leading) {
            HStack {
                Text("Numero 10").foregroundColor(.gray).fontWeight(.medium)
                
                Spacer()
                
                Text("4h").foregroundColor(.gray).fontWeight(.medium)
            }
            
            Spacer().frame(height: 8)
            
            Text("Blog and social posts").fontWeight(.bold).foregroundColor(.midnightDark).font(.title3)
            
            Spacer().frame(height: 25)
            
            HStack(alignment:.top){
                Image(systemName: "exclamationmark.circle")
                
                Text("Deadline is today").fontWeight(.regular)
            }
        }.padding()
            .background(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.5))
            )
    }
}

struct LastConnections: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHStack {
                ForEach(0...5, id: \.self) { index in
                    
                    AsyncImage(url: URL(string:"https://i.pravatar.cc/")){ image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        Color.purple.opacity(0.1)
                    }
                    .frame(width:70, height: 70)
                    .clipShape(Circle()) .shadow(radius: 2)
                }
            }
        }.padding(.bottom).padding(.horizontal,15)
    }
}
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
