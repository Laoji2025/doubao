//
//  ContentView.swift
//  aivoicedemodoubao
//
//  Created by Laoji Zhang on 2025/2/7.
//
// ContentView.swift
import SwiftUI

struct ContentView: View {
    @State private var isFullScreen = false // 新增状态变量，用于控制悬浮窗是否全屏显示

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

            // 新增悬浮窗小图标，点击可切换全屏状态
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .onTapGesture {
                    isFullScreen.toggle()
                }
                .padding()
                .zIndex(1)

            // 根据 isFullScreen 状态决定是否显示全屏悬浮窗
            if isFullScreen {
                FloatingWindow()
                    .edgesIgnoringSafeArea(.all) // 让悬浮窗内容铺满全屏
            }
        }
    }
}
