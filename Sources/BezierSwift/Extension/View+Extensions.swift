//
//  View+Extensions.swift
//
//  Created by Jam on 2022/12/02.
//

import SwiftUI

extension View {
  @ViewBuilder
  func ifApply<Content: View>(_ conditional: Bool, content: (Self) -> Content) -> some View {
    if conditional {
      content(self)
    } else {
      self
    }
  }
}
