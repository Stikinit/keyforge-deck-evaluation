import pandas as pd
from CardDB import *

# Features sequnces based on position in the Dataset 
list_features_head = ["sas_rating", "brobnar", "dis", "logos","mars","sanctum","shadows", "untamed"]
list_features_one_card = ["Creature", "Artifact", "Upgrade", "Action", "RA", "Power", "Armor", 
                        "Skirmish", "Elusive", "Poison", "Taunt", "Assault", "Hazardous", "Play", "Reap", 
                        "Action", "Fight", "Omni", "Destroyed", "AmberC","CardC","CreatureC"]
list_features_tail = ["creatures", "artifacts", "upgrades", "actions"]

def put_index(el, i):
    return "C"+str(i)+"-"+el

def one_hot_houses(names):
    """One Hot encoding of the decks' houses feature

        Parameters:
        names (string): the three houses of the deck

        Return: List(int)
    
   """
    houses = [0,0,0,0,0,0,0]
    if "Brobnar" in names:
        houses[0] = 1
    if "Dis" in names:
        houses[1] = 1
    if "Logos" in names:
        houses[2] = 1
    if "Mars" in names:
        houses[3] = 1
    if "Sanctum" in names:
        houses[4] = 1
    if "Shadows" in names:
        houses[5] = 1
    if "Untamed" in names:
        houses[6] = 1
    return houses
 
def get_used_features():
    """Used features in the dataset based on the card Database

        Return: List(str)
    
   """
    list_features = list_features_head
    for i in range(36):
        temp = list_features_one_card
        temp = map(lambda el: put_index(el, i+1) ,temp)
        list_features.extend(temp)
    list_features.extend(list_features_tail)
    return list_features

FEATURE_NUMBER = get_used_features()