//
//  ContentView.swift
//  TextEditor
//
//  Created by Leonardo Lemos on 03/02/22.
//

import SwiftUI

struct ContentView: View {
    // We create the NavigationView with a minimum width and
    // height because whether we set it strictly, the window
    // where the app is running in won’t allow the user to
    // resize it as they please.
    private var minWidth: CGFloat = 600.0
    private var minHeight: CGFloat = 400.0
    
    var body: some View {
        NavigationView {
            ListView()
            
            MainView()
        }
        .frame(minWidth: self.minWidth, minHeight: self.minHeight)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
