#region
import json
import pandas as pd
import matplotlib.pyplot as plt
#endregion


PATH = 'exp10/log.txt'

data = []
with open(PATH ) as f:
    for line in f:
        data.append(json.loads(line))


data2 = pd.DataFrame.from_dict(data)
data2.drop('test_coco_eval_bbox', inplace=True, axis=1)
data2.to_csv('resultexp10.csv',index=False)

