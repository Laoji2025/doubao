//
//  Main.swift
//  aivoicedemodoubao
//
//  Created by Laoji Zhang on 2025/2/7.
//


// Main.swift
import SwiftUI

struct Main: View {
    @State private var isFullScreen = false

    var body: some View {
        ZStack {
            VStack {
                Button("Button 1") {
                    // 按钮 1 的操作
                }
                Button("Button 2") {
                    // 按钮 2 的操作
                }
                Spacer()
            }
            .padding()

            // 悬浮窗小图标
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .onTapGesture {
                    isFullScreen.toggle()
                }
                .padding()
                .zIndex(1)

            if isFullScreen {
                FloatingWindow()
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
