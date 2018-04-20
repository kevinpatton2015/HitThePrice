using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Recommend 的摘要说明
/// </summary>
public class Recommend
{
    private string rawTag;
    private string[] userTag;
    string[] computerRepo =
    {
        "【抽券再减500】华硕飞行堡垒FX63学生吃鸡游戏本 i7笔记本电脑",
        "Apple/苹果 MacBook Air MQD32CH/A 13寸超薄笔记本电脑D42 MMGF2",
        "昂台曲面屏一体机电脑新品台式主机全套家用游戏独显27英寸i5高配",
        "GreatWall/长城 19-24英寸台式家用办公独显游戏T2001一体机",
        "【12期免息】2018新款 Apple/苹果 9.7英寸ipad智能平板电脑A10",
        "Huawei/华为 平板 M5 10.8英寸全网通pc二合一安卓平板电脑M5Pro",
        "荣耀 荣耀畅玩平板2正品4G通话10智能电脑安卓吃鸡手机8英寸T3",
        "Teclast/台电 A10S平板电脑安卓10英寸新款吃鸡平板超薄游戏pad"
    };

    private string[] brandTag =
    {"华硕","戴尔","宏基","苹果","机械革命"};

    private string[] itemTag =
    {"笔记本","电脑","台式机","显卡","打印机","扫描仪","平板电脑"};

    private int[] brandScore =
    {0,0,0,0,0 };

    private int[] itemScore =
    {0,0,0,0,0,0,0 };

    public Recommend(string tagString)
    {
        this.rawTag = tagString;
        this.userTag = tagString.Split(',');
    }
    /* add tag for item */
    private void addItemTag()
    {
        for (int i = 0; i < computerRepo.Length;i++)
        {
            for (int j = 0; i < brandTag.Length; i++)
            {
                if (computerRepo[i].Contains(brandTag[j]))
                {
                    computerRepo[i] += "|" + brandTag[j];
                }
            }

            for (int k = 0; i < itemTag.Length; i++)
            {
                if (computerRepo[i].Contains(itemTag[k]))
                {
                    computerRepo[i] += "|" + itemTag[k];    
                }
            }
        }
    }
    /* find the most frequent brand */
    private string findMatchedBrand()
    {
        foreach (string originTag in userTag)
        {
            for (int i = 0; i < brandTag.Length; i++)
            {
                if (originTag.Contains(brandTag[i]))
                {
                    brandScore[i]++;
                }
            }
        }
        int brandMaxScore = brandScore[0];
        int retID = 0;
        foreach (int brand_score in brandScore)
        {
            if (brand_score > brandMaxScore) { brandMaxScore = brand_score; retID = Array.IndexOf(brandScore,brandMaxScore); }
        }
        return brandTag[retID];
    }
    /* find the most frequent item */
    private string findMatcheditem()
    {
        foreach (string originTag in userTag)
        {
            for (int i = 0; i < itemTag.Length; i++)
            {
                if (originTag.Contains(itemTag[i]))
                {
                    itemScore[i]++;
                }
            }
        }
        int itemMaxScore = brandScore[0];
        int retID = 0;
        foreach (int item_score in brandScore)
        {
            if (item_score > itemMaxScore) { itemMaxScore = item_score; retID = Array.IndexOf(itemScore, itemMaxScore); }
        }
        return itemTag[retID];
    }

    public string generateKeyword()
    {        
        return findMatchedBrand() + findMatcheditem(); ;
    }
}