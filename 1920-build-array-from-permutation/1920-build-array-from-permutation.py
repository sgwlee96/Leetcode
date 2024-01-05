class Solution(object):
    def buildArray(self, nums):
        """
        :type nums: List[int]
        :rtype: List[int]
        """
        n = len(nums)
        ans = [0] * n

        for i in nums:
            ans[i] = nums[nums[i]]
            
        return ans