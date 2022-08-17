//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Jack Cardinal on 1/17/22.
//

import SwiftUI

struct AFButton: View {
    let name: String
    var body: some View {
        Text(name)
            .font(.headline)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50, alignment: .center)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(20.0)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(name: "Learn More")
    }
}
