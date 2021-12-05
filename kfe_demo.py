import pandas as pd
pd.options.mode.chained_assignment = None  # default='warn'
import os
import numpy as np
import logging
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
logging.getLogger('tensorflow').setLevel(logging.FATAL)
import tensorflow as tf
import seaborn as sns
import matplotlib.pyplot as plt
from raw_ds_builder import tokenize_cards_rows
from dataset_creation import build_ds

def input_setup(df):
  df_houses = df.iloc[:, 0:7]
  df_type_counts = df.iloc[:, 799:804]
  df_deck = pd.concat([df_houses, df_type_counts], axis=1)

  df_cards = df.drop(df_houses, axis=1)
  df_cards.drop(df_type_counts, axis=1, inplace=True)

  tensor_cards = tf.convert_to_tensor(df_cards)
  tensor_cards = tf.reshape(tensor_cards, (len(df_cards), 36, 22))

  return [tensor_cards, df_deck]

model = tf.keras.models.load_model("Model\KF_Eval_model")
CoA_decks = pd.read_csv("Resources\AllDecks_CoA.csv")[['sas_rating','house_names_string', 'card_names']]

num = int(input("Decks to evaluate: "))
print("Evaluating {} decks...\n".format(num))

raw_decks = CoA_decks.sample(num)
raw_decks["card_names"] = raw_decks["card_names"].apply(tokenize_cards_rows)

decks = build_ds(raw_decks)
labels = decks.pop('sas_rating')

predictions = model.predict(input_setup(decks)).flatten()

correct = 0
i=0
for truth, prediction in zip(labels.to_numpy(), predictions):
  if truth in range(int(prediction-5), int(prediction+6)): correct+=1
  print("Deck {}:   {} | {}".format(i+1, int(prediction), truth))
  i+=1


  

print("Total Accuracy (-5;+5): {:5.2f}\n".format(correct/len(labels)))

plt.rcParams['figure.figsize'] = [8, 6]
plt.rcParams['figure.dpi'] = 60

error = np.array(list(map(int, predictions))) - labels
plt.scatter(labels, error)
plt.axhline(y=10)
plt.axhline(y=5)
plt.axhline(y=-5)
plt.axhline(y=-10)
plt.xlabel('True Values [SAS]')
plt.ylabel('Error [SAS]')
plt.axis('equal')
plt.axis('square')
plt.show()


