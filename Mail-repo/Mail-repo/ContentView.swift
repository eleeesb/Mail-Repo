//
//  ContentView.swift
//  Mail-repo
//
//  Created by Eleonora Esposito on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedOption: String = "Option 1"
    @State private var topExpanded: Bool = true
    
    @State private var isFedExpanded: Bool = true
    
    var body: some View {
        
            NavigationStack {
                List {
                    Section {
                        HStack{
                            NavigationLink(destination: {
                                IncomingMails()}, label:{
                                    Image(systemName: "tray")
                                        .foregroundStyle(.blue)
                                    Text("Incoming")
                                    Spacer(minLength: 180)
                                    
                                    Text("2")
                                        .foregroundStyle(.gray)
                                }
                            )}
                        HStack{
                            NavigationLink(destination: {
                                IncomingMails()}, label:{
                                    Image(systemName: "star")
                                        .foregroundColor(.yellow)
                                    Text("VIP")
                                    Spacer(minLength: 227)
                                    Text("1")
                                        .foregroundStyle(.gray)
                                    
                                }
                            )}
                    } header: {
                    }
                    Section("fed.idserve.net", isExpanded: $isFedExpanded) {
                            HStack {
                                NavigationLink(destination: {
                                    IncomingMails()}, label:{
                                        Image(systemName: "doc")
                                            .foregroundStyle(.blue)
                                        Text("Drafts")
                                    }
                                )}
                            HStack {
                                NavigationLink(destination: {
                                    IncomingMails()}, label:{
                                        Image(systemName: "paperplane")
                                            .foregroundStyle(.blue)
                                        Text("Sent")
                                    }
                                )}
                            HStack {
                                NavigationLink(destination: {
                                    IncomingMails()}, label:{
                                        Image(systemName: "trash")
                                            .foregroundStyle(.blue)
                                        Text("Trash")
                                    }
                                )}
                            HStack {
                                NavigationLink(destination: {
                                    IncomingMails()}, label:{
                                        Image(systemName: "xmark.bin")
                                            .foregroundStyle(.blue)
                                        Text("Bin")
                                    }
                                )}

                    } // header: {
//                        Text("fed.idserve.net")
//                            .font(.title3)
//                            .frame(width: 150, alignment: .topLeading)
//                            .foregroundColor(.black)
//                            .bold()
//                            .textCase(.lowercase)
//
//                    }
                }
                .listStyle(.sidebar)
                .navigationTitle("Mailboxes")

                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            // Perform an Action
                            print("Add Item")
                        } label: {
                            Text("Edit")
                        }
                    }
                    ToolbarItemGroup(placement: .bottomBar) {
                        HStack(spacing: 85) {
                            Spacer()
                            Text("Updated Just Now")
                                .font(.system(size: 12, weight: .light, design: .default))
                                .foregroundStyle(.black)
                            Button {
                                // Perform an Action
                                print("Add item tapped")
                            } label: {
                                Image(systemName: "square.and.pencil")
                                
                            }
                            
                        }
                    }
                }
                
            }
        
        
    }
}



#Preview {
    ContentView()
}
