import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression


def cross_sectional_regression(data,yChoose):
    coef = []
    index_list = data.index.unique()
    for i in index_list:
      data1 = data.loc[i]
      X = data1[['SIZE', 'SIZENL', 'LIQUIDITY',
         'BETA', 'RESVOL', 'MOMENTUM', 'LEVERAGE', 'VALUE', 'EARNYLD', 'GROWTH',
         'LTREV', 'STREV', 'price']]
      y = data1[yChoose]

      model = LinearRegression()
      model.fit(X, y)
      coef.append(model.coef_)
    return coef

def Into_dataframe(data,name,index):
    clist = ['SIZE', 'SIZENL', 'LIQUIDITY',
         'BETA', 'RESVOL', 'MOMENTUM', 'LEVERAGE', 'VALUE', 'EARNYLD', 'GROWTH',
         'LTREV', 'STREV', 'price']
    new_clist = ['fr_'+name+'_'+clist[i] for i in range(len(clist))]
    result = pd.DataFrame(data,columns=new_clist,index = index)
    return result

# Main function
if __name__ == "__main__":
    df = pd.read_parquet('df_reponse_daily_train.parquet')
    ylist = ['21d_next_raw', '10d_next_raw', '5d_next_raw', '1d_next_raw',
        '21d_next_mktAdj', '10d_next_mktAdj', '5d_next_mktAdj',
        '1d_next_mktAdj', '21d_next_styAdj', '10d_next_styAdj',
        '5d_next_styAdj', '1d_next_styAdj']

    data_list = []
    for i in ylist:
        yFR = Into_dataframe(cross_sectional_regression(df,i),i,df.index.unique())
        data_list.append(yFR) 

    final_df = pd.concat(data_list,axis=1)

    print(final_df)
    # final_df.to_csv('factor_return.csv')