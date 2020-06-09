#!/usr/bin/env python3

import pandas as pd
import numpy as np

df = pd.read_csv('2007.csv')

a = df['ArrDelay'][df['Origin'] == 'SFO'].head(3)

print("a) The first 3 of the Arrival Delay data for the flights that depart from San Francisco Airport: \n", a)


b = df['Dest'].value_counts().head(3)

print("b) The top 3 destination airports with the count of arriving planes: \n", b)
