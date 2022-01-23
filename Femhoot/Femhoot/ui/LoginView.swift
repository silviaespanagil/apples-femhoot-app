//
//  LoginView.swift
//  Femhoot
//
//  Created by Irene on 23/1/22.
//

import SwiftUI

struct LoginView: View {
  @State var name: String = ""
  @State var moveToNextScreen: Bool = false

  
    var body: some View {
      VStack(alignment: .leading) {
        Text("Femhoot")
          .bold()
          .font(Font.system(size: 32, design: .default))
          .frame(alignment: .topLeading)
          .foregroundColor(.pink)
          .padding()
          .frame(maxWidth: .infinity, alignment: .center)
        
        LottieView(name: "apple", loopMode: .loop)
                   .frame(width: 250, height: 250)
                   .frame(maxWidth: .infinity, alignment: .center)
                   .padding()
        
        Text("Name")
          .bold()
          .font(Font.system(size: 18, design: .default))
          .frame(alignment: .topLeading)
          .foregroundColor(.pink)
          .padding(.horizontal)
        
        TextField("Name", text: $name)
          .padding()
          .background(RoundedRectangle(cornerRadius: 12)
                        .stroke(.pink, lineWidth: 2))
          .foregroundColor(.black)
          .font(Font.system(size: 18, design: .default))
          .padding(.horizontal)
          .accentColor(Color.lila)
        

        Button(action: {
          if(!name.isEmpty){
            self.moveToNextScreen = true
          }
        }, label: {
          Text("Next")
          .bold()
          .font(Font.system(size: 18, design: .default))
          .foregroundColor(.white)
            .padding()
            .padding(.horizontal, 20)
            .background(RoundedRectangle(cornerRadius: 12)
                            .fill(Color.lila))
                                    
          })
          .padding()
          .frame(maxWidth: .infinity, alignment: .trailing)

        
        Spacer()
        
      }
      .background(Color.noWhite)
      .preferredColorScheme(.light)
      .navigate(to: FemhootView(viewModel: QuestionsViewModel(), name: name), when: $moveToNextScreen)
    }
}
