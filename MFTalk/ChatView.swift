//
//  ChatView.swift
//  MFTalk
//
//  Created by B on 30/12/25.
//

import SwiftUI
import SwiftData

struct ChatView: View {
    @State var chatName: String
    @State var currentMsg = ""
    
    var body: some View {
        Spacer()
        HStack{
            HStack {
                TextField("Message \(chatName)...", text: $currentMsg)
                    .textFieldStyle(.plain)
                    .padding()
                Spacer()
                Button(action: sendMsg) {
                    Image(systemName: "arrow.up")
                        .foregroundColor(.orange)
                }
                .glassEffect()
            }
            .glassEffect()

            Spacer()
        }
    }
    func sendMsg() {
        print("message sent!")
    }
}
