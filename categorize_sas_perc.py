
def categorize_SAS_three_perc(sas):
    if sas <= 55:
        return 1
    if sas >= 68:
        return 3
    return 2

def categorize_SAS_five_perc(sas):
    if sas <= 43:
        return 1
    elif sas in range(44,55):
        return 2
    elif sas in range(55,68):
        return 3
    elif sas in range(68,81):
        return 4
    elif sas >= 81:
        return 5

def categorize_SAS_ten_perc(sas):
    if sas <= 40:
        return 1
    elif sas in range(41,44):
        return 2
    elif sas in range(44,49):
        return 3
    elif sas in range(49,55):
        return 4
    elif sas in range(55,59):
        return 5
    elif sas in range(59,68):
        return 6
    elif sas in range(68,73):
        return 7
    elif sas in range(73,81):
        return 8
    elif sas in range(81,87):
        return 9
    elif sas >= 87:
        return 10
