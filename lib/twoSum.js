var nums = [2,7,11,15]
var target = 9

var twoSum = function(nums, target) {
    for(let firstIndex in nums) {
        for(let secondIndex in nums) {
            if(firstIndex == secondIndex) { continue }

            if(nums[firstIndex] + nums[secondIndex] == target) {
                return [firstIndex, secondIndex]
            }
        }
    }
};