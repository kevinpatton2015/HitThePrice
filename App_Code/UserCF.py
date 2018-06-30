# -*- coding: utf-8 -*-
# UserCF算法

import math

def UserSimilarity(trainSet):
    item_users = dict()
    for u,items in trainSet.items():
        for i in items.keys():
            if i not in item_users:
                item_users[i] = set()
            item_users[i].add(u)
    C = dict()
    N = dict()
    for i,users in item_users.items():
        for u in users:
            N[u] += 1
            for v in users:
                if u == v:
                    continue
                C[u][v] += 1
    W = dict()
    for u,related_users in C.items():
        for v,cuv in related_users.items():
            W[u][v] = cuv / math.sqrt(N[u] * N[v])
    return W

# User-IIF算法
def UserSimilarity_v2(trainSet):
    item_users = dict()
    for u,items in trainSet.items():
        for i in items.keys():
            if i not in item_users:
                item_users[i] = set()
            item_users[i].add(u)
    C = dict()
    N = dict()
    for i,users in item_users.items():
        for u in users:
            N[u] += 1
            for v in users:
                if u == v:
                    continue
                C[u][v] += 1 / math.log(1+len(users))
    W = dict()
    for u,related_users in C.items():
        for v,cuv in related_users.items():
            W[u][v] = cuv / math.sqrt(N[u] * N[v])
    return W


def Recommend(user,trainSet,W):
    rank = dict()
    interacted_items = trainSet[user]
    for v,wuv in sorted(W[u].items,key=itemgetter(1),reverse=True)[0:K]:
        for i,rvi in trainSet[v].items:
            if i in interacted_items:
                continue
            rank[i] += wuv*rvi
    return rank
