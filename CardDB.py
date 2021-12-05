import pandas as pd
import re
import numpy as np
import random

# This script reads all the cards from the database file and organizes them
# using python classes in a Card Database.

class Type():
    def __repr__(self) -> str:
        return "| Type: [C"+str(self.creature)+",Ar"+str(self.artifact)+",U"+str(self.upgrade)+",Ac"+str(self.action)+"]"
    creature = 0
    artifact = 0
    upgrade = 0
    action = 0

class Abilities():
    def __repr__(self) -> str:
        return "| Abilities: [Sk"+str(self.skirmish)+",El"+str(self.elusive)+",Po"+str(self.poison)+",Ta"+str(self.taunt)+",As"+str(self.assault)+",Ha"+str(self.hazardous)+"]"
    skirmish = 0
    elusive = 0
    poison = 0
    taunt = 0
    assault = 0
    hazardous = 0

class Actions():
    def __repr__(self) -> str:
        return "| Actions: [P"+str(self.play)+",R"+str(self.reap)+",A"+str(self.action)+",F"+str(self.fight)+",O"+str(self.omni)+",D"+str(self.destroyed)+"]"
    play = 0
    reap = 0
    action = 0
    fight = 0
    omni = 0
    destroyed = 0

class ControlTypes():
    def __repr__(self) -> str:
        return "| ControlTypes: [A"+str(self.amber)+",E"+str(self.efficiency)+",C"+str(self.creature)+"]"
    amber = 0
    efficiency = 0
    creature = 0

class Card():
    """Class that defines a single Card"""
    def __repr__(self) -> str:
        return self.name+" | "+str(self.id)+" "+repr(self.type)+" | RA: "+str(self.raw_amber)+" | P,A: "+str(self.power)+","+str(self.armor)+" "+repr(self.abilities)+" "+repr(self.actions)+" "+repr(self.control)
    
    def get_stats(self):
        """Returns: Ordered List of elements that represent a card"""
        return [self.type.creature, self.type.artifact, self.type.upgrade, self.type.action,
                self.raw_amber, self.power, self.armor, self.abilities.skirmish, self.abilities.elusive,
                self.abilities.poison, self.abilities.taunt, self.abilities.assault, self.abilities.hazardous,
                self.actions.play, self.actions.reap, self.actions.action, self.actions.fight, 
                self.actions.omni, self.actions.destroyed,
                self.control.amber, self.control.efficiency, self.control.creature]
    
    name = ""
    id = 0
    raw_amber = 0
    power = 0
    armor = 0

    type = Type()
    abilities = Abilities()
    actions = Actions()
    control = ControlTypes()

class CardDB():
    def __init__(self, db_filepath) -> None:
        self.efficiency_keywords = ["Draw", "draw ", "Discard", "discard ", "discards ", "Archive", "archive ", "archives "]
        self.creature_keywords = ["Destroy", "destroy ", "Stun", "stun ", "Purge", "purge "]
        db = pd.read_csv(db_filepath) # Reads all cards from the .csv source file
        self.cards = {}
        for i, row in db.iterrows():
            card = self.__read_cards(row)
            card.id = i+1
            self.cards[card.name] = card

    def __read_cards(self, card_row):
        """Reads one card from the source file and creates a Card object

    Parameters:
    card_row (int): current index of the .csv source file
    
    Returns: a Card object
   """
        c = Card()
        card_text = card_row["Text"]
        c.name = card_row["Name"]

        c.raw_amber = card_row["Raw Amber"]
        c.power = self.__check_nans(card_row["Power"])
        c.armor = self.__check_nans(card_row["Armor"])
        c.type = self.__get_type(card_row["Type"])
        c.abilities = self.__get_abilities(card_text)
        c.actions = self.__get_actions(card_text)
        c.control = self.__get_control(card_text)

        return c

    def __get_type(self, type_text):
        type = Type()
        if type_text == "Creature":
            type.creature = 1
        elif type_text == "Artifact":
            type.artifact = 1
        elif type_text == "Upgrade":
            type.upgrade = 1
        elif type_text == "Action":
            type.action = 1
        return type

    def __get_abilities(self, card_text):
        abilities = Abilities()
        if any(s in card_text for s in ["Skirmish", "skirmish"]): abilities.skirmish = 1
        if any(s in card_text for s in ["Elusive", "elusive"]): abilities.elusive = 1
        if any(s in card_text for s in ["Poison", "poison"]): abilities.poison = 1
        if any(s in card_text for s in ["Taunt", "taunt"]): abilities.taunt = 1
        if any(s in card_text for s in ["Assault", "assault"]): abilities.assault = 1
        if any(s in card_text for s in ["Hazardous", "hazardous"]): abilities.hazardous = 1
        return abilities
        

    def __get_actions(self, card_text):
        actions = Actions()
        if "Play" in card_text: actions.play = 1
        if "Reap" in card_text: actions.reap = 1
        if "Action" in card_text: actions.action = 1
        if "Omni" in card_text: actions.omni = 1
        if "Destroyed" in card_text: actions.destroyed = 1
        if "Fight" in card_text: actions.fight = 1
        return actions

    def __get_control(self, card_text):
        control = ControlTypes()
        if re.search("\d<*A>*", card_text) or " A " in card_text:
            control.amber = 1
        if any(substring in card_text for substring in self.efficiency_keywords):
            control.efficiency = 1
        if  re.search("\d<*D>*", card_text) or any(substring in card_text for substring in self.creature_keywords):
            control.creature = 1
        return control
        
    def __check_nans(self, number):
        if np.isnan(number):
            return 0.0
        return number
    
    def get_card(self, card_name) -> Card:
        return self.cards[card_name]
