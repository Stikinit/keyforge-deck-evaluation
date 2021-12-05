import pandas as pd
from tqdm import tqdm
import seaborn as sns
import matplotlib.pyplot as plt
from CardDB import *
from ds_utils import *
from raw_ds_builder import *
from all_decks_divider import *

# Paths
all_decks_file = './Resources/AllDecks_CoA.csv'
split_raws = './MultipleFeaturesDS/RAWs'
raw_ds_path = './MultipleFeaturesDS/CompleteRAWs/DS_RAW_CoA'
ds_dest_path = './MultipleFeaturesDS/DS_CoA'

card_db_filepath = './Resources/AllCards_CoA.csv'

# Card Database setup
card_db = CardDB(card_db_filepath)

"""# Divide the source .csv file into SAS categories
decks_divider_10_categories(all_decks_file, split_raws)

# Create raw datasets without card stats
build_raws(split_raws, raw_ds_path, mode="dist")"""

# Training Raw Dataset
rf_train = pd.read_csv(raw_ds_path+"_Training.csv")

# Testing Raw Dataset
rf_test = pd.read_csv(raw_ds_path+"_Testing.csv")

# Building final datasets
rf_res_train = build_ds(rf_train, card_db)
rf_res_test = build_ds(rf_test, card_db)

# Saving final datasets
rf_res_train.to_csv(ds_dest_path+"_Training.csv", index=False)
rf_res_test.to_csv(ds_dest_path+"_Testing.csv", index=False)

# Plot the SAS distribution of the training dataet
sns.set_style('white')
sns.set_context("paper", font_scale = 3)

sns.displot(data=rf_res_train, x="sas_rating", kind='hist')
plt.show()
