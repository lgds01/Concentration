//
//  WinView.swift
//  Concentration
//
//  Created by δΉθ§ηη₯ on 2021/10/12.
//

import SwiftUI

struct WinView: View {
    @Environment(\.presentationMode) var presentationMode

    @ObservedObject var recordViewModel = RecordViewModel()

    @State private var username = ""

    var grade: Int

    var body: some View {
        GeometryReader { geometry in
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    
                    Text("ππζ­εδ½ ππ")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .bold()
                    Text("ππιθΏδΊζΈΈζππ")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .bold()
                    HStack {
                        TextField("", text: $username)
                            .textFieldStyle(.roundedBorder)
                            .font(.system(size: 40))
                            .frame(width:250)
                            .cornerRadius(30)
                        Button(action: {
                            recordViewModel.addRecord(username: username, grade: grade)
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("ηδΈδ½ ηδΌ θ―΄")
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                    Text("ζ·±θεδΈε")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .bold()
                        .onTapGesture { presentationMode.wrappedValue.dismiss() }

                    Spacer()
                }
                Spacer()
            }

        }
        .background(LinearGradient(colors: [.purple,.orange], startPoint: .bottomLeading, endPoint: .topTrailing))
    }
}
struct WinView_Previews: PreviewProvider {
    static var previews: some View {
        WinView(grade: 100)
    }
}
