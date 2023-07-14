//
//  NavigationSandboxView.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/14.
//

import SwiftUI

struct NavigationSandboxView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Show Navigation Item Group") {
                    NavigationSandbox_ItemGroup()
                }
                .buttonStyle(.bordered)
            }
            .navigationBarTitle("Navigation Title", displayMode: .inline)
            .navigationBarItems(leading: Button(action: {}) {
                Image(systemName: "xmark")
                    .imageScale(.large)
            }, trailing: Button(action: {}) {
                Image(systemName: "checkmark")
                    .imageScale(.large)
            })
        }
    }
}

struct NavigationSandboxView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSandboxView()
    }
}
