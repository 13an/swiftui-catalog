//
//  NavigationSandbox_ItemGroup.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/14.
//

import SwiftUI

struct NavigationSandbox_ItemGroup: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Navigation Item Group")
            }
            .navigationTitle("NavigationStack")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .primaryAction) {
                    Button("About") {
                        print("About tapped!")
                    }
                    
                    Button("Help") {
                        print("Help tapped!")
                    }
                }
                
                ToolbarItemGroup(placement: .secondaryAction) {
                    Button("Settings") {
                        print("Credits tapped")
                    }
                    
                    Button("Email Me") {
                        print("Email tapped")
                    }
                }
            }
        }
    }
}

struct NavigationSandbox_ItemGroup_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSandbox_ItemGroup()
    }
}
