//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Jack Cardinal on 2/4/22.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
                
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label)) //adjusts to dark and light mode
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(false))
    }
}
