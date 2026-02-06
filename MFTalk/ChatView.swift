//
//  ChatView.swift
//  MFTalk
//
//  Created by B on 30/12/25.
//

import SwiftUI
import SwiftData

struct ChatView: View {
    @Environment(\.colorScheme) var darkMode
    @State var chatName: String
    @State var currentMsg = ""
    
    var body: some View {
        Spacer()
        HStack {
            TextField("Message \(chatName)...", text: $currentMsg)
                .textFieldStyle(.plain)
                .padding()
                .background()
                .clipShape(.capsule)
                .glassEffect()
            Spacer()
            Button(
                action: {sendMsg(msg: currentMsg)},
                label: {
                    Label("Send", systemImage: "arrow.up")
                        .tint(darkMode == .dark ? .black : .white)
                        .labelStyle(.iconOnly)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                 }
            )
            .background(.accentOrange)
            .clipShape(Circle())
            .buttonStyle(.borderless)
        }
        // distance between keyboard and message field (&send button).
        .padding(10)
        
    }
    func sendMsg(msg: String) {
        print("message sent!")
    }
}
