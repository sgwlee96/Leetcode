class Solution(object):
    def kthFactor(self, n, k):
        """
        :type n: int
        :type k: int
        :rtype: int
        """
        # find a list of factors of an integer n
         # n % i == 0
        lst = []
        for i in range(1, n+1):
            if n % i == 0:
                lst.append(i)
        # sort a list in ASC order
        if len(lst) >= k:
            return lst[k - 1]

        
        # if len(factor_list) > k
            # then return -1
        elif len(lst) < k:
            return -1
        
        # find 3rd factor