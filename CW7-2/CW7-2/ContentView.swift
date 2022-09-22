//
//  ContentView.swift
//  CW7-2
//
//  Created by Deem on 22/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var click = false
    
    
    @State var chosenmajor = ""
    
    @State var majors = ["Computer Engineering", "Computer Science", "Electrical Engineering" , "Other"]
    
    var body: some View {
        
        
        VStack {
            
            
            Spacer()
//            .font(Font.custom("Amiri-Regular", size: 30))
            
            HStack {
                
                Text("Choose Your Major")
                    .font(Font.custom("Changa-Bold", size: 30))
                    .bold()
                    .padding()
                
                
                Image(systemName: click ? "minus.circle.fill" : "plus.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                
            } .onTapGesture {
                withAnimation(.easeIn(duration: 0.4)){
                    
                      click.toggle()
                }
                
            }
                
                if click {
                    
                    
                
                    VStack {
                        
                        Text("Computer Engineering")
                            .font(.system(size: 25))
                            .bold()
                            .frame(width: 300, height: 70, alignment: .center)
                            .background(.blue)
                            .cornerRadius(30)
                            .padding()
                            .onTapGesture {
                                chosenmajor = "Computer Engineering"
                            }
                        
                        Text("Computer Science")
                            .font(.system(size: 25))
                            .bold()
                            .frame(width: 300, height: 70, alignment: .center)
                            .background(.blue)
                            .cornerRadius(30)
                            .padding()
                            .onTapGesture {
                                chosenmajor = "Computer Science"
                            }
                        
                        
                        Text("Electrical Engineering")
                            .font(.system(size: 25))
                            .bold()
                            .frame(width: 300, height: 70, alignment: .center)
                            .background(.blue)
                            .cornerRadius(30)
                            .padding()
                            .onTapGesture {
                                chosenmajor = "Electrical Engineering"
                            }
                        
                        
                        Text("Other")
                            .font(.system(size: 25))
                            .bold()
                            .frame(width: 300, height: 70, alignment: .center)
                            .background(.blue)
                            .cornerRadius(30)
                            .padding()
                            .onTapGesture {
                                chosenmajor = "Other"
                            }
                        
                        
                        
                    }

                    
                    
                    
                    
//                    List {
//
//                        ForEach(majors, id: \.self) { major in
//                            VStack {
//
//
//                                Text(major)
//                                    .font(.system(size: 25))
////                                    .foregroundColor(.white)
////                                    .background(.pink)
//                                    .onTapGesture {
//
//                                       chosenmajor = major
//                                    }
//
//
//                            }
//
//
//
//                        }
//
//
//                    }
                    
                }
                
                
                

            
            Spacer()
   
            HStack {
                
                Text("Your Major: \(chosenmajor)")
                    .font(.system(size: 30))
                    .bold()
                    .padding()
                
                
//                Text(chosenmajor)
//                    .font(.system(size: 30))
//                    .bold()
//                    .padding()
//
                
                
                
            }
            
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
