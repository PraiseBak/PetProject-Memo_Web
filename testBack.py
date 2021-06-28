

def solve():
    maxAlpha = input()
    maxAlpha = int(maxAlpha)
    inputStr = input()
    maxLen = 0

    for i in range(len(inputStr)):
        result = 0
        tmpDict = dict()
        for j in range(i,len(inputStr)):
            tmpDict[inputStr[j]] = 1
            if len(tmpDict) > maxAlpha:
                break
            result+=1
        maxLen = max(maxLen,result)
    print(maxLen)


if __name__ =="__main__":
    solve()


