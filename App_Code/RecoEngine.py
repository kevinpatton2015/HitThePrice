import os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import ItemCF
import UserCF
import BayesNet
import TFIDF
import SVMClassifer

def MIXEngine(user_id, usertype, trainSet):
    result = dict()
    if type == 1:
        # 由C# RECOMMEND类 直接处理 （数据缺失）
        result = -1
    if type == 2:
        # CF
        W1 = dict()
        W1 = ItemSimilarity(trainSet)
        W2 = dict()
        W2 = ItemSimilarity_v2(trainSet)
        K= W.len
        result = ItemCF.Recommend(user_id, trainSet, W1, K)
    if type == 3:
        # MIX
        # TF-IDF热词提取
        wordlists=mid_text_dir() 
        getTextTermFreq(wordlists)
        argv='./'
        (allfile,path) = getFilelist(argv)
        for ff in allfile:
            print ("Using jieba on %s " % ff)
            divide(ff,path)

        Tfidf(allfile)
        # 贝叶斯网络分类
        NBN = NavieBayes()
        trainData, labels = nb.getTrainSet()
        features = [2, 'S']
        result = nb.classify(trainData, labels, features)
        # SVM分类
        SimpleSVMClassfier()
        
    return result

if __name__ == '__main__':            
    trainSet = pd.read_table('./RAW.txt')
    MIXEngine(user_id, usertype, trainSet)
