//
//  SwiftUIView.swift
//  TextEditor
//
//  Created by Leonardo Lemos on 03/02/22.
//

import SwiftUI

struct ListView: View {
    
    @State
    private var activeNavigationAction: String = NavigationActions[0].title;
    
    func onChange(action: NavigationAction) {
        self.activeNavigationAction = action.title
    }
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("My Stuff")
                .font(.title3)
                .padding()
            
            ForEach(NavigationActions, id: \.self) { option in
                
                
                let isActive: Bool = activeNavigationAction == option.title;
                
                    HStack {
                        
                        Image(systemName: option.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 14)
                            .foregroundColor(isActive ? Color.accentColor : Color.white)
                        Text(option.title)
                        
                        Spacer()
                    }
                    .onTapGesture {
                        onChange(action: option)
                    }
                }
                .padding()
            Spacer()
        }
        .background(Color.secondary)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
