//
//  ContentHeader.swift
//  TextEditor
//
//  Created by Leonardo Lemos on 03/02/22.
//

import SwiftUI

struct ContentHeader: View {
    
    public var fileName: String
    public var folderName: String
    
    var body: some View {
        HStack {
            Text(self.folderName)
                .controlSize(.small)
            
            Text("/")
                .controlSize(.mini)
            
            Text(self.fileName)
                .controlSize(.regular)
        }
        .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
        .background(.secondary)
        .cornerRadius(10)
        
    }
}

struct ContentHeader_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeader(
            fileName: "Filename.txt",
            folderName: "Documents"
        )
    }
}
