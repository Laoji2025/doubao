//
//  FloatingWindowView.swift
//  aivoicedemodoubao
//
//  Created by Laoji Zhang on 2025/2/7.
//

import SwiftUI

struct FloatingWindow: View {
    var body: some View {
        VStack(spacing: 0) {
            // 顶部的空白间隔，高度为屏幕高度的 1/12，用于避开苹果手机顶部的黑框
            Spacer()
                .frame(height: UIScreen.main.bounds.height * (1.0 / 12.0))

            // 最上面的文本框
            TextField("上面的文本框", text: .constant(""))
                .padding()
                .frame(
                    width: UIScreen.main.bounds.width * 0.9,
                    height: UIScreen.main.bounds.height * (1.0 / 3.0)
                )
                .border(Color.gray, width: 1) // 添加外边框
                .background(Color.gray.opacity(0.2))

            // 两个文本框之间的空白间隔，高度为屏幕高度的 1/12
            Spacer()
                .frame(height: UIScreen.main.bounds.height * (1.0 / 12.0))

            // 中间的文本框
            TextField("下面的文本框", text: .constant(""))
                .padding()
                .frame(
                    width: UIScreen.main.bounds.width * 0.9,
                    height: UIScreen.main.bounds.height * (1.0 / 3.0)
                )
                .border(Color.gray, width: 1) // 添加外边框
                .background(Color.gray.opacity(0.2))

            HStack {
                // 三个按钮，采用苹果常用按钮样式
                Button(action: {
                    // 打断按钮的操作
                }, label: {
                    Text("打断")
                        .padding()
                })
                .buttonStyle(.borderedProminent)

                Button(action: {
                    // 开始按钮的操作
                }, label: {
                    Text("开始")
                        .padding()
                })
                .buttonStyle(.borderedProminent)

                Button(action: {
                    // 返回按钮的操作
                }, label: {
                    Text("返回")
                        .padding()
                })
                .buttonStyle(.borderedProminent)
            }
            .frame(height: UIScreen.main.bounds.height * (1.0 / 6.0))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // 让悬浮窗内容铺满全屏
        .background(Color.black.opacity(0.5)) // 设置背景颜色为半透明的黑色
    }
}

