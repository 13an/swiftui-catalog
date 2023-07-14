//
//  Setting.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/14.
//

import SwiftUI

struct Setting: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Name") {
                    Setting_Name()
                }
                NavigationLink("Username") {
                    Setting_Name()
                }
                NavigationLink("Birthday") {
                    Setting_Name()
                }
                NavigationLink("Joined At") {
                    Setting_Name()
                }
                NavigationLink("Bio") {
                    Setting_Name()
                }
            }
            .navigationTitle("Setting")
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
