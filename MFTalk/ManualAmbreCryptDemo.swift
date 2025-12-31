//
//  ContentView.swift
//  MFTalk
//
//  Created by B on 27/10/25.
//

import SwiftUI
import SwiftData

struct ManualAmbreCryptDemo: View {
    @State var titl = "hello world!"

    var body: some View
    {
        Text(String(cString: amberCencrypt(titl, "pizzalover122", 98589289234, 843948934993445)))
            .font(.largeTitle.monospaced().bold())
        
        Spacer()
        TextField("Plaintext", text: $titl)
            .textFieldStyle(.roundedBorder)
            .padding()
            .onSubmit { titl = titl }
    }
}
