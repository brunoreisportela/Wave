//
//  LayerBasicChain.swift
//  Wave
//
//  Created by Khoa Pham on 27/05/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

import UIKit

public extension Layer {

  public final class BasicChain: Chainable {

    public var actions: [Action] = []
    public let layer: CALayer

    public init(layer: CALayer) {
      self.layer = layer
    }
  }
}

public extension Layer.BasicChain {

  public func keyPath(keyPath: String) -> Layer.BasicChain {
    return configure { (inout action: Layer.BasicAnimation) in
      action.animation.keyPath = keyPath
    }
  }
}
