//
//  NavigationDrawerAction.swift
//  TextEditor
//
//  Created by Leonardo Lemos on 03/02/22.
//

import Foundation

// In the ListView file, we iterate a collection of NavigationAction
// and we identify by a \.self.  That’s why we extend the Hashable
// protocol onto this struct :)

struct NavigationAction: Hashable {
    let title: String
    // Use imageName that corresponds to the systemName (an SF Symbol)
    // which renders an icon to the UI.
    let imageName: String
}
