//
//  IncomingMailsModel.swift
//  Mail-repo
//
//  Created by Eleonora Esposito on 17/11/23.
//

import Foundation
import SwiftUI

struct IncomingMail: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var content: String
}

let incomingMailData: [IncomingMail] = [
    IncomingMail(title: "Github", subtitle: "[GitHub] A personal access token (classic) has been added to your account", content: "Hey eleesb! A personal access token (classic) NC1 with admin gpg_key"),
    IncomingMail(title: "The Airtable Team", subtitle: "New this month: Improved app builder experience", content: "And more features to help you work faster whether it's managing a product roadmap, launching"),
    IncomingMail(title: "Apple Developer Academy", subtitle: "One last thing...", content: "Dear Students, we would like to share with you the opportunity to participate in the Ateneo Language Center's Original Language Cineforum at the Academy Astra Cinema"),
    IncomingMail(title: "App Store Connect", subtitle: "You've been invited to App Store Connect.", content: "Dear Eleonora, Guillaume Coquard has invited you to access App Store Connect so you can help distribute and manage their apps on the App Store."),
    IncomingMail(title: "Figma", subtitle: "Benedetta has invited you to edit the file Untitled", content: "You have been invited to edit the file Untitled."),
    IncomingMail(title: "The Airtable Team", subtitle: "Streamline your work with interfaces", content: "Interface Designer is the superpower you haven't discovered yet. With Interface Designer you can"),
    IncomingMail(title: "Domenico Mennillo via Miro", subtitle: "Chek out the project Reference for the presentation", content: "Domenico Mennillo has invited you to a project in Miro Reference for the presentation. Go to project")
]
