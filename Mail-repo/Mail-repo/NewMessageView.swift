//
//  NewMessageView.swift
//  Mail-repo
//
//  Created by Eleonora Esposito on 20/11/23.
//

import SwiftUI

struct NewMessageView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    List {
                        HStack {
                            Text("To:")
                                .foregroundStyle(.gray)
                            Spacer(minLength: 5)
                            Button {
                            } label: {
                                Image(systemName: "plus.circle")
                                    .foregroundStyle(.blue)
                            }
                        }
                        .navigationTitle("New Message")
                        HStack {
                            Text("Cc/Ccn, From: eesposito23@fed.idserve.net")
                                .foregroundStyle(.gray)
                        }
                        Text("Object:")
                            .foregroundStyle(.gray)
                    }
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            Button {
                            } label: {
                                Text("Annulla")
                            }
                        }
                    }
                    .listStyle(.plain)
                }
                Text("Sent from Iphone")
                    Spacer(minLength: 480)
                
            }
            
                
        }
        
    }
    
}

#Preview {
    NewMessageView()
}
