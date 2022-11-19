//
//  DynamicIslandWidgetLiveActivity.swift
//  DynamicIslandWidget
//
//  Created by 김종권 on 2022/11/19.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct DynamicIslandWidgetAttributes: ActivityAttributes {
  public struct ContentState: Codable, Hashable {
    // Dynamic stateful properties about your activity go here!
    var value: Int
  }
  
  // Fixed non-changing properties about your activity go here!
  var name: String
}

struct DynamicIslandWidgetLiveActivity: Widget {
  var body: some WidgetConfiguration {
    ActivityConfiguration(for: DynamicIslandWidgetAttributes.self) { context in
      // Lock screen/banner UI goes here
      VStack {
        Text("Hello")
        Text("iOS 앱 개발 알아가기")
        Text("Jake1")
        Text("Jake2")
        Text("Jake3")
        Text("Jake4")
        Text("Jake5")
        Text("Jake6")
        Text("Jake7")
        Text("Jake8")
      }
      .activityBackgroundTint(Color.cyan)
      .activitySystemActionForegroundColor(Color.black)
      
    } dynamicIsland: { context in
      DynamicIsland {
        // Expanded UI goes here.  Compose the expanded UI through
        // various regions, like leading/trailing/center/bottom
        DynamicIslandExpandedRegion(.leading) {
          Text("Leading")
        }
        DynamicIslandExpandedRegion(.trailing) {
          Text("Trailing")
        }
        DynamicIslandExpandedRegion(.center) {
          Text("Center")
        }
        DynamicIslandExpandedRegion(.bottom) {
          VStack {
            Text("Bottom")
            Text("Content1")
            Text("Content2")
            Text("Content3")
          }
        }
      } compactLeading: {
        Text("This is leading")
      } compactTrailing: {
        Text("This is trailing")
      } minimal: {
        Text("Min")
      }
      .widgetURL(URL(string: "http://www.apple.com"))
      .keylineTint(Color.white)
    }
  }
}
