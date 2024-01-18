class Solution(object):
    def minPartitions(self, n):
        """
        :type n: str
        :rtype: int
        """
        lst = []
        for i in n:
            lst.append(int(i))
            
        return max(lst)