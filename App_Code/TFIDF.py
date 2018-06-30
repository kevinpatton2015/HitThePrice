#-*- coding:utf-8 -*-
# TF-IDF 关键字获取 NLP所需
import codecs, os, shutil
import math,nltk
from nltk.corpus import *
import numpy as np
import pandas as pd
import sklearn

#读取原始素材
def readraw(path):
    with codecs.open(path,"r",encoding="utf-8") as f:
        content = f.read().strip()
    return content
 
#统计词频
def count_word(content):
    word_dic ={}
    words_list = content.split("/")
    del_word = ["\r\n","/s"," ","/n"]
    for word in words_list:
        if word not in del_word:
            if word in word_dic:
                word_dic[word] = word_dic[word]+1
            else:
                word_dic[word] = 1
    return word_dic
 
#遍历文件夹
def readfolders(path):
    filesArray = []
    for root,dirs,files in os.walk(path):
        for file in files:
            each_file = str(root+"//"+file)
            filesArray.append(each_file)
    return filesArray
 
 
#计算TF-IDF
def count_TFIDF(word_dic,words_dic,files_Array):
    word_idf={}
    word_tfidf = {}
    num_files = len(files_Array)
    for word in word_dic:
        for words in words_dic:
            if word in words:
                if word in word_idf:
                    word_idf[word] = word_idf[word] + 1
                else:
                    word_idf[word] = 1
    for key,value in word_dic.items():
        if key !=" ":
            word_tfidf[key] = value * math.log(num_files/(word_idf[key]+1))
 
    #降序排序
    values_list = sorted(word_tfidf.items(),key = lambda item:item[1],reverse=True)
    return values_list
 
#新建文件夹
def buildfolder(path):
    if os.path.exists(path):
        shutil.rmtree(path)
    os.makedirs(path)
    print("Folder Success！")
 
#写入文件
def out_file(path,content_list):
    with codecs.open(path,"a",encoding="utf-8") as f:
        for content in content_list:
            f.write(str(content[0]) + ":" + str(content[1])+"\r\n")
    print("well done!")
    

'''
TF-IDF 实现v2.0 --加速处理 重新构建函数
'''
def mid_text_dir():
    corpus_root=r".\segfile"
    wordlists=PlaintextCorpusReader(corpus_root, '.*')
    return wordlists

def getTextTermFreq(wordlists):
    filelist=wordlists.fileids()
    path='./'
    
    for file in filelist:
        word=wordlists.words(file)
        vocab=set(word)
        f1=open(path+file+'.txt', 'w+')
        tip="%d different words ,the sum of vocab is %d" % (len(vocab),len(word))
        print(tip)
       
        f1.write(tip)
        f1.write('----------------------\n\n')
        fdist=nltk.FreqDist(word)
        for w in vocab:
            f1.write(w.ljust(25)+str(fdist[w]).ljust(10)+str(fdist[w]/len(word))+'\n')
        f1.close()
        print(tip)

def getFilelist(path) : 
    filelist = []
    files = os.listdir(path)
    for f in files :
        if(f[0] == '.') :
            pass
        else :
            filelist.append(f)
    return filelist,path

def divide(argv,path) :     
    sFilePath = './'
    if not os.path.exists(sFilePath) : 
        os.mkdir(sFilePath)
    filename = argv
    try:
        f = open(path+filename,'r+', encoding= 'gbk')
        file_list = f.read()
    except UnicodeDecodeError:
        f = open(path+filename,'r+', encoding= 'utf-8')
        file_list = f.read()
    f.close()
    
    seg_list = jieba.cut(file_list,cut_all=True)
    result = []
    for seg in seg_list :
        seg = ' '.join(seg.split())
        if (seg != '' and seg != "\n" and seg != "\n\n") :
            result.append(seg)

    f = open(sFilePath+"/"+filename+"-res.txt","w+")
    f.write(' '.join(result))
    f.close()

def Tfidf(filelist) :
    path = './'
    corpus = [] 
    for ff in filelist :
        fname = path + ff
        f = open(fname,'r+')
        content = f.read()
        f.close()
        corpus.append(content)    

    vectorizer = CountVectorizer()    
    transformer = TfidfTransformer()

    x= vectorizer.fit_transform(corpus)
    print ("line of x.to arr:%d" % len(x.toarray()))
    print ("rows of x.to arr:%d" % len(x.toarray()[0]))

    tfidf = transformer.fit_transform(vectorizer.fit_transform(corpus))
    
    word = vectorizer.get_feature_names() 
    f = open('./Word.txt','w+')
    for i in word:
        f.write(i.ljust(20))
    f.close()

    
    Term_freq=x.toarray()
    for h in range(len(Term_freq)):
        temp_path="./Term_freq_text%d.txt" % h
        f = open(temp_path,'w+')
        for i in range(len(Term_freq[0])):
            f.write(word[i].ljust(25)+""+str(Term_freq[h][i])+"\n")
    f.close()

    weight = tfidf.toarray()             
    
    sFilePath = './tfidffile'
    if not os.path.exists(sFilePath) : 
        os.mkdir(sFilePath)

   
    for i in range(len(weight)) :
        print ("---All TF-IDF in the %d file to %s/re%d.txt---" % (i, sFilePath, i))
        path= "%s/re%d.txt" % (sFilePath, i)
        ##f = open(sFilePath+'/re'+i+'.txt','w+')
        f = open(path,'w+')
        for j in range(len(word)) :
            f.write(word[j].ljust(25)+""+str(weight[i][j])+"\n")
        f.close()
