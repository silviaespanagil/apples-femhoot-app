//
//  FactsView.swift
//  Femhoot
//
//  Created by Silvia España on 23/1/22.
//

import SwiftUI

struct FactsView: View {
  
  @StateObject var viewModel: FactsViewModel
  
  var body: some View {
    
    HStack {
      
      Text(viewModel.randomFact)
        .font(.body)
        .fixedSize(horizontal: false, vertical: true)
      
      Spacer()
      
      Button(action: {
        viewModel.getFact()
      }){
        
        Image(systemName: viewModel.imageSystemName)
          .frame(width: 20, height: 20)
          .padding(5)
          .font(.footnote)
          .foregroundColor(Color.noWhite)
          .background(Color.lila)
          .clipShape(Circle())
      }
    }
    .padding()
    .onAppear {
      viewModel.getFact()
    }
  }
}

struct FactsView_Previews: PreviewProvider {
  static var previews: some View {
    FactsView(viewModel: FactsViewModel())
  }
}
