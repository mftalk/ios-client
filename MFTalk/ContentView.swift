//
//  ContentView.swift
//  MFTalk
//
//  Created by B on 27/10/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var someRandomStuff = ["hello", "blabla", ":-D", "oh yeah, you can swipe me!", "\(Image("NoProfilePic"))"]
    
    var body: some View
    {
        Text("Welcome to MFTalk")
        Spacer()
        List(){
            ForEach(0..<someRandomStuff.count, id: \.self) { itm in
                Text(someRandomStuff[itm])
                    .swipeActions(edge: .leading){
                        Button("You did it! \(someRandomStuff[itm])", systemImage: "pointer.arrow.ipad"){

                        }
                        .tint(.yellow)
                    }
                    .swipeActions(edge: .trailing){
                        Button("You wanna delete \(someRandomStuff[itm])?!", systemImage: "trash"){
                            someRandomStuff.remove(at: itm)
                        }
                        .tint(.red)
                    }
                
            }
        }
    }
}
