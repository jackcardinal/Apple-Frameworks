//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by Jack Cardinal on 8/8/22.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    
    let framework: Framework
    var isShowingDetailView: Binding<Bool>
    @Published var isShowingSafarView = false
    
    init (framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
    }
    
    
}
