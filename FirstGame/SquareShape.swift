//
//  SquareShape.swift
//  FirstGame
//
//  Created by Екатерина Колесникова on 06.11.14.
//  Copyright (c) 2014 KKate. All rights reserved.
//

class SquareShape:Shape {

    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(0, 0), (1, 0), (0, 1), (1, 1)],
            Orientation.OneEighty: [(0, 0), (1, 0), (0, 1), (1, 1)],
            Orientation.Ninety: [(0, 0), (1, 0), (0, 1), (1, 1)],
            Orientation.TwoSeventy: [(0, 0), (1, 0), (0, 1), (1, 1)]
            ]
    }

    // #3
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:       [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty:  [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety:     [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]]
            ]
    }
}
