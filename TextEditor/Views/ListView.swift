//
//  SwiftUIView.swift
//  TextEditor
//
//  Created by Leonardo Lemos on 03/02/22.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("My Stuff")
                .font(.title3)
                .padding()
            
            ForEach(NavigationActions, id: \.self) { option in
                HStack {
                    Image(systemName: option.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 14)
                        .foregroundColor(.blue)
                    Text(option.title)
                    
                    Spacer()
                }
                .padding()
            }
            Spacer()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
