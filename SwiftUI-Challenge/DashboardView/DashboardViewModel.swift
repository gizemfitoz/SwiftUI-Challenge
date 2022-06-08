//
//  DashboardViewModel.swift
//  SwiftUI-Challenge
//
//  Created by Gizem Fitoz on 08/06/2022.
//

import Foundation

enum Interval: String, CaseIterable, Identifiable {
  case hour, day, week
  
  var id: Self { self }

  var amount: String {
    switch self {
    case .hour:
      return "€1.23"
    case .day:
      return "€29.41"
    case .week:
      return "€205.88"
    }
  }
}

final class DashboardViewModel: ObservableObject {
  @Published var selectedInterval: Interval = .hour
}
