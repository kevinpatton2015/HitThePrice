import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.cross_validation import train_test_split
from sklearn import svm


def SimpleSVMClassfier():
    #数据读取
    risk_data=pd.read_table('./data_all.txt')
    
    #数据清洗 去重 杂项
    risk_data = risk_data.drop('Iphone',axis=1)
    
    #数据归一化
    risk_data_mm = risk_data.max()-risk_data.min()
    risk_data_scale = pd.DataFrame([])
    for i in range(len(risk_data.columns)):
        new_columns = (risk_data.iloc[:,i]-risk_data.iloc[:,i].min())/risk_data_mm[i]
        risk_data_scale = pd.concat([risk_data_scale,pd.DataFrame(new_columns)],axis=1)

    #split data（数据切分为训练集和测试集）
    train_data,test_data = train_test_split(risk_data_scale,test_size = 0.3)
    train_badcase = train_data[train_data['tag']==1]
    train_goodcase = train_data[train_data['tag']!=1]
    sample_value=(10*train_badcase.count()[0])
    train_goodcase_sample = train_goodcase.sample(n=sample_value)
    train_data_update = pd.concat([train_badcase,train_goodcase_sample],axis = 0) 
    y=train_data_update['tag']
    x=train_data_update.iloc[:,1:len(train_data_update.columns)]

    #svm（linear、rbf、sigmoid为核的SVM）
    clf_linear = svm.SVC(kernel='linear').fit(x,y)
    clf_rbf = svm.SVC(kernel='rbf').fit(x,y)
    clf_sigmoid = svm.SVC(kernel='sigmoid').fit(x,y)

    #test，训练数据处理
    y_test = test_data[['tag']]
    x_test = test_data.iloc[:,1:len(test_data.columns)]

    #模型效果
    #linear
    test_pred=clf_linear.predict(x_test)
    y_test.index = range(y_test.count())
    union_actual_pred = pd.concat([y_test,pd.DataFrame(test_pred)],axis = 1)

    # RES=?
    recall = union_actual_pred[union_actual_pred.iloc[:,0]==1][union_actual_pred.iloc[:,1]==1].count()/union_actual_pred[union_actual_pred.iloc[:,0]==1].count()
    percison = union_actual_pred[union_actual_pred.iloc[:,0]==1][union_actual_pred.iloc[:,1]==1].count() / union_actual_pred[union_actual_pred.iloc[:,1]==1].count()
    correction = union_actual_pred[union_actual_pred.iloc[:,0]==union_actual_pred.iloc[:,1]].count()/union_actual_pred.iloc[:,0].count()

    print 'linear svm , recall is %s' %recall
    print 'linear svm , percison is %s' %percison
    print 'linear svm , correction is %s' %correction

    # RBF
    test_pred=clf_rbf.predict(x_test)
    y_test.index = range(y_test.count())
    union_actual_pred = pd.concat([y_test,pd.DataFrame(test_pred)],axis = 1)

    # RES=?
    recall = union_actual_pred[union_actual_pred.iloc[:,0]==1][union_actual_pred.iloc[:,1]==1].count()/union_actual_pred[union_actual_pred.iloc[:,0]==1].count()
    percison = union_actual_pred[union_actual_pred.iloc[:,0]==1][union_actual_pred.iloc[:,1]==1].count() / union_actual_pred[union_actual_pred.iloc[:,1]==1].count()
    correction = union_actual_pred[union_actual_pred.iloc[:,0]==union_actual_pred.iloc[:,1]].count()/union_actual_pred.iloc[:,0].count()

    print 'linear svm , recall is %s' %recall
    print 'alinear svm , percison is %s' %percison
    print 'linear svm , correction is %s' %correction


    # sigmoid
    test_pred=clf_sigmoid.predict(x_test)
    y_test.index = range(y_test.count())
    union_actual_pred = pd.concat([y_test,pd.DataFrame(test_pred)],axis = 1)

    #s RES=?    
    recall = union_actual_pred[union_actual_pred.iloc[:,0]==1][union_actual_pred.iloc[:,1]==1].count()/union_actual_pred[union_actual_pred.iloc[:,0]==1].count()
    percison = union_actual_pred[union_actual_pred.iloc[:,0]==1][union_actual_pred.iloc[:,1]==1].count() / union_actual_pred[union_actual_pred.iloc[:,1]==1].count()
    correction = union_actual_pred[union_actual_pred.iloc[:,0]==union_actual_pred.iloc[:,1]].count()/union_actual_pred.iloc[:,0].count()

    print 'linear svm , recall is %s' %recall
    print 'alinear svm , percison is %s' %percison
    print 'alinear svm , the correction is %s' %correction

