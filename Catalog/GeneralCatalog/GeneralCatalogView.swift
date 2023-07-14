//
//  GeneralCatalogView.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/14.
//

import SwiftUI

struct GeneralCatalogView: View {
    @EnvironmentObject private var hapticEngine: HapticEngine // 共有の HapticEngine インスタンスを参照する

    @State private var selectedSegment = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            getSelectedSegmentView(selectedSegment)
            
            HStack {
                Picker("", selection: $selectedSegment) {
                    Text("Text").tag(0)
                    Text("Image").tag(1)
                    Text("Video").tag(2)
                    Text("Haptics").tag(3)
                }
                .pickerStyle(.segmented)
                .background(.white)
                .cornerRadius(8)
                .onAppear {
                    hapticEngine.prepareHaptics()
                }
                .onChange(of: selectedSegment) { segment in
                    hapticEngine.hapticFeedbackLightDouble()
                }
                .environmentObject(hapticEngine)
            }
            .padding(24)
        }
    }
    
    private func getSelectedSegmentView(_ index: Int) -> some View {
        switch index {
            case 0:
                return AnyView(TextCatalog())
            case 1:
                return AnyView(ImageCatalog())
            case 2:
                return AnyView(VideoCatalog())
            case 3:
                return AnyView(HapticsView())
            default:
                return AnyView(EmptyView())
            }
    }
}

struct GeneralCatalogView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralCatalogView()
    }
}
