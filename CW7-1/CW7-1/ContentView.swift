//
//  ContentView.swift
//  CW7-1
//
//  Created by Deem on 21/09/2022.
//

import SwiftUI

struct CastMember: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}



struct MovieInfo: Identifiable {
    let id = UUID()
    let imageName: String
    let name: String
    let cast: [CastMember]

}

struct ContentView: View {
    
    let movies = [
        MovieInfo(imageName: "Interstellar", name: "Interstellar", cast: [
        CastMember(name: "Cooper", imageName: "Cooper1"),
        CastMember(name: "Dr. Brand", imageName: "brand"),
        CastMember(name: "Murph", imageName: "Murph"),
        CastMember(name: "Professor Brand", imageName: "Prof"),
        CastMember(name: "TARS", imageName: "Tars")
        
        
        ]),
        
        MovieInfo(imageName: "Dark Knight", name: "The Dark Knight", cast:[
            CastMember(name: "Bruce Wayne (Batman)", imageName: "Batman"),
        CastMember(name:"The Joker", imageName: "Joker"),
            CastMember(name: "Dr. Jonathan Crane (Scarecrow)", imageName: "Scarecrow"),
            CastMember(name: "Two-Face", imageName: "2f")
            
        
        
        ] ),
        
        MovieInfo(imageName: "ThePurge", name: "The Purge: Anarchy", cast: [
        
            CastMember(name: "Leo Barnes", imageName:"leoB"),
            CastMember(name: "Cali Sanchez ", imageName:"Cali"),
            CastMember(name: "Carmelo Johns", imageName:"carmelo")
        
        
        
        ])
    
    
    
    ]
    
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(movies) { movie in
                    NavigationLink(destination: MovieEditing(movie: movie)) {
                        
                        movieList(movie: movie)
                        
                        
                        
                    }
                    
                    
                }
                
                
            }
            
//            List {
//
//                MovieListItem(
//                name: "Interstellar",
//                imageName: "Interstellar"
//
//                )
//
//                MovieListItem(
//                name: "The Purge",
//                imageName: "The Purge"
//
//                )
//                MovieListItem(
//                name: "The Dark Knight",
//                imageName: "The Dark Night"
//
//                )
//
//            }
            .navigationTitle("Movies")
                .font(.largeTitle)
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MovieEditing: View {
//
//    let name: String
//    let imageName: String
    let movie: MovieInfo
    var body: some View {
        
        
        ZStack {
            
            Image(movie.imageName)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .blur(radius: 20)
            
            
            
            
            VStack {
                
                Image(movie.imageName)
                    .resizable()
                    .frame(width: 200, height: 300, alignment: .top)
                    .border(.white, width: 5)
        
                
                Text(movie.name)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .bold()
                
                
                
                Spacer()
                
                ScrollView(.horizontal) {
                    
                    HStack {

                        
                        ForEach(movie.cast) { CastMember in
                            VStack {

                                Image(CastMember.imageName)
                                    .resizable()
                                    .frame(width: 200, height: 150)



                                Text(CastMember.name)
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .bold()
                            }

                        }
                    } .padding()
                    
                    
                }
                
            
            }
            
        }
        

        
        
    }
    
    
}


struct movieList: View {
     
    let movie: MovieInfo
    
    var body: some View {
        
        HStack {
            
            Image(movie.imageName)
                .resizable()
                .frame(width: 90, height: 90, alignment: .top)
                .cornerRadius(50)
    
            
            Text(movie.name)
                .font(.system(size: 20))
                .bold()
            
            
        }
        
    }
    
    
}
//struct MovieListing: View {
//
//
//    var body: some View {
//
//
//
//            HStack {
//
//                MovieInfo(imageName: "Interstellar", name: "")
//
//            }
//
//
//
//    }
//
//
//
//}


//
//
//struct MovieInfo: View {
//
//
//    var body: some View {
//
//        HStack {
//
//            MovieListItem(name: "Interstellar", imageName: "Interstellar" )
//            MovieListItem(name: "The Dark Knight", imageName: "The Dark night")
//            MovieListItem(name: "The Purge", imageName: "The Purge")
//
//        }
//
//
//
//    }
//
//
//
//}
//
//
//struct showMovieFirst: View {
//
//    var body: some View {
//
//        VStack {
//
//            Image("Interstellar")
//                .resizable()
//                .frame(width: 300, height: 70, alignment: .center)
//                .cornerRadius(50)
//
//            Spacer()
//
////            ScrollView (.horizontal) {
////
////                Image("Cooper1")
////                    .resizeable()
////                    .frame()
////
////
////            }
//
//
//        }
//    }
//
//
//
//}
