//
//  ContentView.swift
//  ExLiveActivity
//
//  Created by 김종권 on 2022/11/19.
//

import SwiftUI
import ActivityKit

struct ContentView: View {
  var body: some View {
    Button("Start") {
      let dynamicIslandWidgetAttributes = DynamicIslandWidgetAttributes(name: "test")
      let contentState = DynamicIslandWidgetAttributes.ContentState(value: 7)
      
      do {
        let activity = try Activity<DynamicIslandWidgetAttributes>.request(
          attributes: dynamicIslandWidgetAttributes,
          contentState: contentState
        )
        print(activity)
      } catch {
        print(error)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
