//
//  ChatsOverviewView.swift
//  MFTalk
//
//  Created by B on 22/12/25.
//

import SwiftUI
import SwiftData

struct ChatsOverviewView: View
{
    struct Contact {
        var username: String
        var profilepic: Image
    }
    
    @State private var contacts: [Contact] = [
        Contact(username: "alfred", profilepic: Image(systemName:"globe")),
        Contact(username: "hans peter", profilepic: Image("NoProfilePic")),
        Contact(username: "ueli", profilepic: Image("NoProfilePic"))
    ]
    
    // **MAIN UI**
    var body: some View {
        NavigationStack {
            
            List {
                
                ForEach(0..<contacts.count, id: \.self) { i in
                    HStack {
                        insertProfilePic(image: contacts[i].profilepic)
                        NavigationLink(contacts[i].username) {
                            ChatView(chatName: contacts[i].username)
                        }
                        Spacer()
                    }
                }
                .onDelete(perform: delContact)
            }
            .listStyle(.inset)
            .navigationTitle(
                "MFTalk"
            )
            
        }
    }
    
    // **FUNCTIONS**
    
    func delContact(at offsets: IndexSet) {
        contacts.remove(atOffsets: offsets)
    }
    
    func insertProfilePic(image: Image) -> some View {
        image
            .resizable()
            .frame(width: 45, height: 45, alignment: .topLeading)
            .clipShape(.circle)
            .overlay {
                Circle().stroke(.orange, lineWidth: 2)
            }

    }
}

