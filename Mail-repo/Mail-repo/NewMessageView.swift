//
//  NewMessageView.swift
//  Mail-repo
//
//  Created by Eleonora Esposito on 20/11/23.
//

import SwiftUI

struct NewMessageView: View {
    
    @Environment(\.dismiss) var cancel
    @State private var isEditing = false
    @State private var toText: String = ""
    @State private var fromText: String = ""
    @State private var objectText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("New Message")
                        .bold()
                        .font(.largeTitle)
                        .padding(.horizontal, 17)
                    Spacer(minLength: -10)
                    Button {
                    } label: {
                        Image(systemName: "arrow.up.circle.fill")
                            .foregroundStyle(.gray, .fill)
                            .scaleEffect(2.4)
                            .padding(.horizontal, 30)
                            .imageScale(.medium)
                    }
                
                }
                Spacer(minLength: 20)
                HStack {
                    List {
                        HStack {
                            
                            Text("To:")
                                .foregroundStyle(.gray)
                            Spacer(minLength: 5)
                            TextField(text: $toText) {
                                EmptyView()
                            }
                            Button {
                            } label: {
                                Image(systemName: "plus.circle")
                                    .foregroundStyle(.blue)
                                    .imageScale(.large)
                                    
                            }
                        }
                        HStack {
                            Text("Cc/Bcc, From:")
                                .foregroundStyle(.gray)
                            TextField(text: $fromText) {
                                EmptyView()
                            }
                        }
                        HStack {
                            Text("Object:")
                                .foregroundStyle(.gray)
                            TextField(text: $objectText) {
                                EmptyView()
                            }
                        }
                    }
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            Button("Cancel") {
                                cancel()
                            }
                        }
                    }
                    .listStyle(.plain)
                }
            }
            
        }
        
    }
    
}

#Preview {
    NewMessageView()
}
