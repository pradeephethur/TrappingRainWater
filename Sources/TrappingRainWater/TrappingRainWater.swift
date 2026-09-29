// The Swift Programming Language
// https://docs.swift.org/swift-book

public class TrappingRainWater {
    
    public init() {
        // initialization
    }
    
    public func trap(_ height: [Int]) -> Int {
        var totalWater = 0
        var left = 0
        var right = height.count - 1
        var leftMax = 0
        var rightMax = 0
        
        while left < right {
            if height[left] < height[right] {
                if height[left] >= leftMax {
                    leftMax = height[left]
                } else {
                    totalWater += leftMax - height[left]
                }
                left += 1
            } else {
                if height[right] >= rightMax {
                    rightMax = height[right]
                } else {
                    totalWater += rightMax - height[right]
                }
                right -= 1
            }
        }
        return totalWater
    }
}
