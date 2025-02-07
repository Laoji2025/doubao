//
//  FloatingWindowView.swift
//  aivoicedemodoubao
//
//  Created by Laoji Zhang on 2025/2/7.
//


import SwiftUI

struct FloatingWindowView: View {
    @Binding var isExpanded: Bool
    @Binding var showWindow: Bool
    @Binding var message: String
    
    var body: some View {
        if showWindow {
            ZStack {
                if isExpanded {
                    // 全屏半透明背景
                    Color.black.opacity(0.3)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            withAnimation {
                                isExpanded = false
                            }
                        }
                    
                    // 全屏展开内容
                    VStack {
                        Text(message)
                            .foregroundColor(.white)
                            .padding()
                        
                        Button("Send Message to Main") {
                            message = "Message from Floating Window"
                        }
                        .padding()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.clear)
                } else {
                    // 收缩状态下的图标
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                        .onTapGesture {
                            withAnimation {
                                isExpanded = true
                            }
                        }
                        .padding()
                }
            }
        }
    }
}