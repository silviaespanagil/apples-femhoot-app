//
//  UserDataView.swift
//  Femhoot
//
//  Created by Irene on 23/1/22.
//

import SwiftUI

struct UserDataView : View {
  @State var title : String
  @Binding var dynamicData : String
  
  var body: some View {
    HStack {
      Text(title)
        .bold()
        .font(Font.system(size: 21, design: .default))
        .foregroundColor(Color.pink)
      
      
      Text(dynamicData)
        .font(Font.system(size: 18, design: .default))
      
    }
    .padding()
    .background(RoundedRectangle(cornerRadius: 12)
                  .stroke(Color.pink, lineWidth: 1))
  }
}
