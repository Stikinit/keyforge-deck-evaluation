import pandas as pd
from tqdm import tqdm
from ds_utils import *

n_categories = 10
examples_per_category = 30000
examples_fraction = 0.1

def build_raws(categories_path, files_dest, mode="dist"):
    """Using the divided RAW source files, creates a training and testing 
    dataset based on a strategy.

    Parameters:
    categories_path (string): Path of the source files
    files_dest (string): Destination path
    mode (string): creation strategy.
                        Can be:
                                dist (Default):picks a fixed percentage of decks from each category file
                                wise: tries to pick the same number of decks from each category file
   """
    train_df = pd.DataFrame()
    test_df = pd.DataFrame()

    print("\n\nFor each category, randomly picking a number of decks to add to the raw datasets:")
    for i in tqdm(range(n_categories)):
        df_c = pd.read_csv(categories_path+"/RAW_Decks_CoA_H_"+str(i+1)+".csv")[["sas_rating", "house_names_string" ,"card_names"]]
        
        train = df_c.sample(frac=0.9)
        test = df_c.drop(train.index).sample(frac=1)

        if mode == "dist":
            train = train.sample(frac=examples_fraction) # take fixed percentage
        elif mode == "wise":
            if(len(df_c) >= examples_per_category):
                train = train.sample(examples_per_category)
        
        test = test.sample(frac=examples_fraction) # Test DS is always created using DIST strategy
    
        train_df = train_df.append(train)
        test_df = test_df.append(test)

    train_df["card_names"] = train_df["card_names"].apply(tokenize_cards_rows)
    test_df["card_names"] = test_df["card_names"].apply(tokenize_cards_rows)
    
    train_df.to_csv(files_dest+"_Training.csv", index=False)
    test_df.to_csv(files_dest+"_Testing.csv", index=False)

def tokenize_cards_rows(cards):
    """Organizes raw card info in a tokenizable way for future operations 

    Returns: a complete dataset row
   """
    res_row = ''
    initial_tokens = [ t for t in cards.split('~') if t]    # Avoid empty tokens
    final_tokens = []
    for t in initial_tokens:
        if t.endswith('1'):
            t = t[:len(t)-1] + '|'
            final_tokens.append(t)
        elif t.endswith('12'):
            t = t[:len(t)-2] + '|' + t[:len(t)-2] + '|'
            final_tokens.append(t)
        elif t.endswith('123'):
            t = t[:len(t)-3] + '|' + t[:len(t)-3] + '|' + t[:len(t)-3] + '|'
            final_tokens.append(t)
        elif t.endswith('1234'):
            t = t[:len(t)-4] + '|' + t[:len(t)-4] + '|' + t[:len(t)-4] + '|' + t[:len(t)-4] + '|'
            final_tokens.append(t)
        elif t.endswith('12345'):
            t = t[:len(t)-5] + '|' + t[:len(t)-5] + '|' + t[:len(t)-5] + '|' + t[:len(t)-5] + '|' + t[:len(t)-5] + '|'
            final_tokens.append(t)
        elif t.endswith('123456'):
            t = t[:len(t)-6] + '|' + t[:len(t)-6] + '|' + t[:len(t)-6] + '|' + t[:len(t)-6] + '|' + t[:len(t)-6] + '|' + t[:len(t)-6] + '|'
            final_tokens.append(t)
        elif t.endswith('1234567'):
            t = t[:len(t)-7] + '|' + t[:len(t)-7] + '|' + t[:len(t)-7] + '|' + t[:len(t)-7] + '|' + t[:len(t)-7] + '|' + t[:len(t)-7] + '|' + t[:len(t)-7] + '|'
            final_tokens.append(t)
    res_row = ''.join(final_tokens)
    res_row = res_row[:len(res_row)-1]
    return res_row

def build_ds(ds, card_db):
    """Using a raw dataset, create a complete one with the
    accurate card information using the Card Database and the other deck stats

    Parameters:
    ds (DataFrame): raw dataset
    card_db (CardDB): card dataset

    Returns: The complete dataset (DataFrame)
    """
    list_rows = []
    print("\nAdding stats for each card of each deck and building the complete dataset...")
    for i, row in tqdm(ds.iterrows()):    # Build one row
        creature_count = 0
        artifact_count = 0
        upgrade_count = 0
        action_count = 0
    
        res_row = []
        res_row.append(row["sas_rating"])
        res_row.extend(one_hot_houses(row["house_names_string"]))

        cards_in_deck = row["card_names"].split('|')
    
        for i in range(36):     # every deck has 36 cards
            card = card_db.get_card(cards_in_deck[i])
            res_row.extend(card.get_stats())
            
            creature_count += card.type.creature
            artifact_count += card.type.artifact
            upgrade_count += card.type.upgrade
            action_count += card.type.action

        res_row.extend([creature_count, artifact_count, upgrade_count, action_count])
        list_rows.append(res_row)

    return pd.DataFrame(list_rows, columns=FEATURE_NUMBER) 