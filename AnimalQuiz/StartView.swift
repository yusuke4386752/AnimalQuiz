//  58:35まで視聴
//  StartView.swift
//  AnimalQuiz
//
//  Created by 森永悠介 on 2025/03/15.
//

import SwiftUI

struct StartView: View {
    @State var isShowingQuizView = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("どうぶつ\nクイズ！")
                .font(.system(size: 70).bold())
                .foregroundStyle(.originalYellow)
                .stroke(color: .originalGreen, width: 5)
            Spacer()
            Button {
                isShowingQuizView = true
            } label: {
                Image(.startButton)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            }
            .fullScreenCover(isPresented: $isShowingQuizView) {
                QuizView()
            }
        }
        .padding()
        .backgroundImage()
    }
}

#Preview {
    StartView()
}
