class Solution(object):
    def numberOfBeams(self, bank):
        """
        :type bank: List[str]
        :rtype: int
        """
        rows = []
        for i in range(len(bank)):
            rows.append((list(bank[i]).count('1')))

        while 0 in rows:
            rows.remove(0)


        result = 0
        for i in range(len(rows) -1):
            result += (rows[i] * rows[i+1])

        
        return result