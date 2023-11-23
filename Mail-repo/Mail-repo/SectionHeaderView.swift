//
//  SectionHeaderView.swift
//  Mail-repo
//
//  Created by Eleonora Esposito on 16/11/23.
//

import SwiftUI

struct SectionHeaderView: View {
    
    @State var title: String
     @Binding var isOn: Bool
     @State var onLabel: String
     @State var offLabel: String
     
     var body: some View {
       Button(action: {
         withAnimation {
           isOn.toggle()
         }
       }, label: {
         if isOn {
           Text(onLabel)
         } else {
           Text(offLabel)
         }
       })
       .font(Font.caption)
       .foregroundColor(.accentColor)
       .frame(maxWidth: .infinity, alignment: .trailing)
       .overlay(
         Text(title),
         alignment: .leading
       )
     }
   }

#Preview {
    SectionHeaderView(title: "ciao", isOn: .constant(true), onLabel: "ciao", offLabel: "ciao")
}
