//
//  LayerKeyframeAction.swift
//  Wave
//
//  Created by Khoa Pham on 27/05/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

import UIKit

public extension Layer {

  public struct KeyframeAction {

    var animation = CAKeyframeAnimation()
  }
}

extension Layer.KeyframeAction: Action {

  public func run(nextActions: [Action]) {
    Wave.run(nextActions)
  }
}