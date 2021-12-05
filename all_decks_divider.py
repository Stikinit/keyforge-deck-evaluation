import pandas as pd
from tqdm import tqdm
from categorize_sas_perc import categorize_SAS_five_perc, categorize_SAS_ten_perc
from categorize_sas_gauss import categorize_SAS_five_gauss, categorize_SAS_ten_gauss

# This script divides the .csv file containing all the decks' info 
# into multiple files for each SAS gategory.
# The available options are 5 or 10 categories.

def decks_divider_5_categories(all_decks_file, files_dest, dist_type="gauss"):
    """5 categories division for the all_decks file. Creates 5 files.

    Parameters:
    all_decks_file (string): Path of the source file
    files_dest (string): Destination path
    dist_type (string): distribution type of the categorization.
                        Can be:
                                gauss (Default): Gaussian distribution
                                perc: Percetile distribution
   """
    ad = pd.read_csv(all_decks_file)[['sas_rating','house_names_string', 'card_names']]

    if dist_type == "gauss":
        ad["grade"] = ad["sas_rating"].apply(categorize_SAS_five_gauss)
    elif dist_type == "perc":
        ad["grade"] = ad["sas_rating"].apply(categorize_SAS_five_perc)
    
    rls = [[], [], [], [], []]
    for i, row in tqdm(ad.iterrows()):
        sas_grade = row[3]
        rls[sas_grade-1].append(row)
    
    for i in tqdm(range(5)):
        pd.DataFrame(rls[i]).to_csv(files_dest+"/RAW_Decks_CoA_H_"+str(i+1)+".csv", index=False)

def decks_divider_10_categories(all_decks_file, files_dest, dist_type="gauss"):
    """10 categories division for the all_decks file. Creates 10 files.

    Parameters:
    all_decks_file (string): Path of the source file
    files_dest (string): Destination path
    dist_type (string): distribution type of the categorization.
                        Can be:
                                gauss (Default): Gaussian distribution
                                perc: Percetile distribution
   """
    ad = pd.read_csv(all_decks_file)[['sas_rating','house_names_string', 'card_names']]
    
    if dist_type == "gauss":
        ad["grade"] = ad["sas_rating"].apply(categorize_SAS_ten_gauss)
    elif dist_type == "perc":
        ad["grade"] = ad["sas_rating"].apply(categorize_SAS_ten_perc)

    rls = [[], [], [], [], [], [], [], [], [], []]
    print("Total number of decks:")
    for i, row in tqdm(ad.iterrows()):
        sas_grade = row[3]
        rls[sas_grade-1].append(row)
    
    print("\nDividing all decks into 10 category files:")
    for i in tqdm(range(10)):
        pd.DataFrame(rls[i]).to_csv(files_dest+"/RAW_Decks_CoA_H_"+str(i+1)+".csv", index=False)

#decks_divider_10_categories("./Resources/AllDecks_CoA.csv", "./MultipleFeaturesDS/RAWs")