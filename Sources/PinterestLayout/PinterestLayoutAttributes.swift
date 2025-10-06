//
//  PinterestLayoutAttributes.swift
//  PinterestLayout
//
//  Created by Roman Sorochak on 7/7/17.
//  Copyright © 2017 MagicLab. All rights reserved.
//

import UIKit

public class PinterestLayoutAttributes: UICollectionViewLayoutAttributes {
    public var imageHeight: CGFloat = 0

    override public func copy(with zone: NSZone? = nil) -> Any {
        let copy = super.copy(with: zone) as! PinterestLayoutAttributes
        copy.imageHeight = imageHeight
        return copy
    }

    override public func isEqual(_ object: Any?) -> Bool {
        guard let attributes = object as? PinterestLayoutAttributes else {
            return false
        }

        // Safely read actor-isolated state (imageHeight) from a nonisolated context
        let thisHeight = MainActor.assumeIsolated { self.imageHeight }
        let otherHeight = MainActor.assumeIsolated { attributes.imageHeight }

        if thisHeight == otherHeight {
            return super.isEqual(object)
        }
        return false
    }
}

