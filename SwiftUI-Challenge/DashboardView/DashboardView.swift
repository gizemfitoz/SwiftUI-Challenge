//
//  DashboardView.swift
//  SwiftUI-Challenge
//
//  Created by Gizem Fitoz on 08/06/2022.
//

import SwiftUI
import Foundation

struct DashboardView: View {
  @StateObject private var viewModel = DashboardViewModel()
  
    var body: some View {
      VStack {
        SettingsView()
        
        RemainingDaysView()
        
        CircleView()
          .padding(.trailing, -200)
          .padding(.top, 20)
        
        VStack {
          Text("You can approximately spend")
            .foregroundColor(Color(hex: "0b5394"))
            .padding(.bottom, 5)
          
          Text(viewModel.selectedInterval.amount)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color(hex: "0b5394"))
            .padding(.bottom, 5)
          
          Text("until the 24 Jun 2022")
            .foregroundColor(Color(hex: "0b5394"))
          
          Picker("", selection: $viewModel.selectedInterval) {
            ForEach(Interval.allCases) { interval in
              Text(interval.rawValue.capitalized)
            }
          }
          .pickerStyle(.segmented)
          .padding([.leading, .trailing], 50)
        }
        .padding(.top, 20)
        
        Spacer()
      }
      .background(Color(hex: "f4cccc"))
    }
}

struct SettingsView: View {
  var body: some View {
    HStack {
      Spacer()
      Image(systemName: "gear")
        .resizable()
        .frame(width: 32, height: 32)
        .foregroundColor(Color(hex: "741b47"))
        .padding(.trailing, 20)
    }
  }
}

struct RemainingDaysView: View {
  var body: some View {
    HStack {
      Spacer()
      VStack {
        Text("17")
          .font(.largeTitle)
          .fontWeight(.bold)
          .padding(.bottom, 5)
        
        Text("days left")
          .font(.subheadline)

      }.foregroundColor(Color(hex: "0b5394"))

      Spacer()
    }
  }
}

struct CircleView: View {
  var body: some View {
    ZStack {
      Circle()
        .fill(Color(hex: "ea9999"))
        .frame(width: 300, height: 300)
      
      Image("cactus")
        .padding(.trailing, -60)
        .padding(.top, -60)
    }
  }
}

//struct AmountView: View {
//  var body: some View {
//
//  }
//}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
