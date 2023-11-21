//
//  FloatingMenu.swift
//  Mail-repo
//
//  Created by Eleonora Esposito on 17/11/23.
//

import Foundation
import SwiftUI

struct FloatingMenu: Identifiable {
    var id = UUID()
    var icon: String
    var title: String
}

let floatingMenuData: [FloatingMenu] = [
     FloatingMenu(icon: "draft", title: "Draft"),
     FloatingMenu(icon: "paperplane", title: "Sent")
]
