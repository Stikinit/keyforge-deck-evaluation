def categorize_SAS_five_gauss(sas):
    if sas <= 50:
        return 1
    elif sas in range(51,65):
        return 2
    elif sas in range(65,79):
        return 3
    elif sas in range(78,93):
        return 4
    elif sas >= 93:
        return 5

def categorize_SAS_ten_gauss(sas):
    if sas <= 43:
        return 1
    elif sas in range(44,51):
        return 2
    elif sas in range(51,58):
        return 3
    elif sas in range(58,65):
        return 4
    elif sas in range(65,72):
        return 5
    elif sas in range(72,79):
        return 6
    elif sas in range(79,86):
        return 7
    elif sas in range(86,93):
        return 8
    elif sas in range(93,100):
        return 9
    elif sas >= 100:
        return 10
