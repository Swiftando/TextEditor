//
//  MainView.swift
//  TextEditor
//
//  Created by Leonardo Lemos on 03/02/22.
//

import SwiftUI

struct MainView: View {
    
    private static var defaultDisplayFileName: String = "Untitled File.txt"
    private static var defaultDisplayFolderName: String = "TextEditor Folder"
    
    @State
    public var saved: Bool = false
    
    @State
    private var fileName: String = MainView.defaultDisplayFileName
    
    @State
    private var folderName: String = MainView.defaultDisplayFolderName
    
    @State
    private var content: String = ""
    
    // Returns the first folder that corresponds to the
    // document directory and that is under the user’s
    // domain.
    private func getFolder() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask);
        
        return paths[0];
    }
    
    private func changeName(folderName: String, fileName: String) {
    }
    
    private func saveTextFile() {
        let url = getFolder().appendingPathComponent("\(folderName)/\(fileName)")
        
        do {
            try content.write(to: url, atomically: true,
                              encoding: .utf8)
        } catch {
            // should handle an error hereby \_(-_-)_/
        }
    }
    
    var body: some View {
        
        VStack (alignment: .leading) {

            HStack (alignment: .center) {
                ContentHeader(fileName: self.fileName,
                              folderName: self.folderName)
                
                Button(action: saveTextFile) {
                    Text("Save")
                }
                .controlSize(.large)
                
            }
            .padding(EdgeInsets(top: 8, leading: 8,
                                bottom: 0, trailing: 0))
            
            TextEditor(text: $content)
                .padding(EdgeInsets(top: 4, leading: 2,
                                    bottom: 4, trailing: 2))
                .font(.body)
                .animation(.easeIn, value: 1.0)
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
