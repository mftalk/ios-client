//
//  ContentView.swift
//  MFTalk
//
//  Created by B on 27/10/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var testelement = amberCencrypt("hello!","pizzalover122", 4728583, 843948934993445)

    //print(testelement)
    //var testelemt = "hello world"
    @State var titl = "kniggs"

    var body: some View
    {
        Text(String(cString: amberCencrypt(titl, "pizzalover122", 98589289234, 843948934993445)))
            .font(.largeTitle.monospaced().bold())
        
        Spacer()
        TextField("Plaintext", text: $titl)
            .textFieldStyle(.roundedBorder)
            .padding()
            .onSubmit {
                titl = titl
                print(titl)
            }
    }
}
