//
//  IncomingMails.swift
//  Mail-repo
//
//  Created by Eleonora Esposito on 14/11/23.
//

import SwiftUI

struct IncomingMails: View {
    @State private var searchText = ""
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
                                }
                            }
                        }
                }
                .listStyle(PlainListStyle())
                .navigationTitle("Incoming")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button {
                            // Perform an Action
                            print("Incoming")
                        } label: {
                            Text("Edit")
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
                            Button {
                                // Perform an Action
                                print("Updated Just Now")
                            } label: {
                                Image(systemName: "square.and.pencil")
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
