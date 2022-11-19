//
//  DynamicIslandWidgetBundle.swift
//  DynamicIslandWidget
//
//  Created by 김종권 on 2022/11/19.
//

import WidgetKit
import SwiftUI

@main
struct DynamicIslandWidgetBundle: WidgetBundle {
    var body: some Widget {
        DynamicIslandWidget()
        DynamicIslandWidgetLiveActivity()
    }
}
