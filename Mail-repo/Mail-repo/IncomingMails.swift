//
//  IncomingMails.swift
//  Mail-repo
//
//  Created by Eleonora Esposito on 14/11/23.
//

import SwiftUI

struct IncomingMails: View {
    
    @State private var searchText = ""
    @State var showModal = false
    
    
    var body: some View {
            NavigationStack {
                List {
                        ForEach(incomingMailData) { item in
                            NavigationLink(destination: ShownMailView()) {
                                VStack(alignment: .leading) {
                                    Text(item.title)
                                        .bold()
                                    Text(item.subtitle)
                                    Text(item.content)
                                        .foregroundStyle(.gray)
                                        .lineLimit(2)

                                }
                            }
                        }
                }
                .listStyle(PlainListStyle())
                .navigationTitle("Inbox")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button("Edit") {
                        }
                            
                        }
                    }
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        HStack {
                            Button {
                                // Perform an Action
                                print("Filter")
                            } label : {
                                Image(systemName: "line.3.horizontal.decrease.circle")
                                    .foregroundStyle(.blue)
                            }
                            Spacer()
                            VStack {
                                Text("Updated Just Now")
                                    .font(.system(size: 11, weight: .light, design: .default))
                                Text("1 unread")
                                    .font(.system(size: 10, weight: .light, design: .default))
                                    .foregroundStyle(.gray)
                            }
                        Spacer()
                            Button(action: {
                                // Perform an Action
                                self.showModal.toggle()
                            }) {
                                Image(systemName: "square.and.pencil")
                            }
                            .sheet(isPresented: $showModal) {
                                NewMessageView()
                            }
                        }  .searchable(text: $searchText)

                        //.padding()
                    }
                
                }
                }
           
        }
    }

#Preview {
    IncomingMails()
}
