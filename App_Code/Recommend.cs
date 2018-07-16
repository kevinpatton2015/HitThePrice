using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Xml;

/// <summary>
/// 推荐引擎 v-0.1
/// 对用户粗分类对应不同推荐方法
/// </summary>
public class Recommend
{
    private static readonly int length = 1024;

    private static readonly string brandpath = "../../brand.txt";
    private static readonly string itempath = "../../item.xml";
    private static readonly string selfitempath = "../../selfitem.txt";

    private static readonly string keywordlistpath = "../../keywordlist.txt";
    private static readonly string keywordcountpath = "../../keywordcount.txt";

    private readonly string userID;
    private static readonly int deepUserThreshold = 100;
    private int userType;

    private string[] brandTag;
    private string[] itemTag;
    private string[,] itemRepository;

    private int[] brandScore;
    private int[] itemScore;

    private string[] keywordlist;
    private string rawTag;
    private string[] segTag;

    public Recommend(string userID, string tagString)
    {
        this.userID = userID;
        this.rawTag = tagString;
        this.segTag = getSeg(rawTag);
        if (!(segTag == null || segTag.Length == 0)) { writeSearchWords(keywordlistpath);writeSearchCount(keywordcountpath); }
        this.userType = getUserType(keywordcountpath);
        this.brandTag = read(brandpath);
        this.itemTag = readXML(itempath);
        this.keywordlist = read(keywordlistpath);
        this.itemRepository = readSelfRepo(selfitempath);
    }

    /* generate a possible keyword4Crawl */
    public string generateKeyword()
    {
        switch (this.userType)
        {
            case 0:
                //寻找热门商品
                return findMatchedBrand() + findMatcheditem();
            case 1:
                //利用协同过滤 UserCF ItemCF
                return findMatchedBrand() + findMatcheditem();
            case 2:
                //利用大数据
                return findMatchedBrand() + findMatcheditem();
            default:
                return null;
        }
    }

    /* recommend selfRepo items */
    public string[] generateRecoSelfItem()
    {
        string[] list = new string[length / 32];
        int id = 0;
        string attempt1 = generateKeyword();
        string attempt2 = findMatchedBrand();
        string attempt3 = findMatcheditem();
        for (int i = 0; i < itemRepository.GetLength(0); i++)
        {
            if (itemRepository[i, 6].Contains(attempt1)) { list[id++] = itemRepository[i, 0]; }
            if (i + 1 > list.Length) { Array.Resize(ref list, 2 * length + 10); }
        }
        for (int i = 0; i < itemRepository.GetLength(1); i++)
        {
            if (itemRepository[i, 6].Contains(attempt2)) { list[id++] = itemRepository[i, 0]; }
            if (i + 1 > list.Length) { Array.Resize(ref list, 2 * length + 10); }
        }
        for (int i = 0; i < itemRepository.GetLength(1); i++)
        {
            if (itemRepository[i, 6].Contains(attempt3)) { list[id++] = itemRepository[i, 0]; }
            if (i + 1 > list.Length) { Array.Resize(ref list, 2 * length + 10); }
        }
        Array.Resize(ref list, id);
        return list;
    }

    /* get the user type */
    private int getUserType(string path)
    {
        if (this.rawTag == null) { return 0; }
        else
        {
            int result = -1;
            StreamReader sr = new StreamReader(path, Encoding.UTF8);
            String line;
            while ((line = sr.ReadLine()) != null)
            {
                if (line.Contains(this.userID))
                { int len = line.IndexOf("|"); result = int.Parse(line.Substring(len + 1, line.Length - len - 1)); break; }               
            }
            sr.Close();
            return result <= deepUserThreshold ? 1 : 2;
        }
    }

    /* find the most frequent brand by keyword */
    private string findMatchedBrand()
    {
        brandScore = new int[brandTag.Length];
        foreach (string originTag in segTag)
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

    /* find the most frequent item by keyword */
    private string findMatcheditem()
    {
        itemScore = new int[itemTag.Length];
        foreach (string originTag in segTag)
        {
            for (int i = 0; i < itemTag.Length; i++)
            {
                if (originTag.Contains(itemTag[i]))
                {
                    itemScore[i]++;
                }
            }
        }
        int itemMaxScore = itemScore[0];
        int retID = 0;
        foreach (int item_score in itemScore)
        {
            if (item_score > itemMaxScore) { itemMaxScore = item_score; retID = Array.IndexOf(itemScore, itemMaxScore); }
        }
        return itemTag[retID];
    }

    /* generate a user-matrix */
    private double[,] generateUserMatrix()
    {
        double[,] matrix = new double[1,1];
        return matrix;
    }

    /* caculate similarity of users matrix */
    private double[] cacluateSimilarity(double[,] userMatrix, int which, int choice)
    {
        int row = userMatrix.GetLength(0), col = userMatrix.GetLength(1);
        double[] CosSimilarity = new double[row];
        double[] sum = new double[col], mean = new double[col];
        double numo = 0.0 ,x2 = 0.0, y2 = 0.0;
        for (int i = 0; i < row; i++)
        {
            for (int j = 0; j < col; j++)
            { sum[j] += userMatrix[i, j]; }
        }
        for (int i = 0; i < col; i++)
        { mean[i] = sum[i]/row; }
        for (int i = 0; i < row; i++)
        {
            for (int j = 0; j < col; j++)
            { userMatrix[i, j] -= mean[j]; }
        }
        for (int i = 0; i < row; i++)
        {
            for (int j = 0; j < col; j++)
            {
                numo += userMatrix[which,j] * userMatrix[i,j];
                x2 += userMatrix[which,i] * userMatrix[i,j];
                y2 += userMatrix[which,i] * userMatrix[i,j];
            }
            CosSimilarity[i] = numo / (Math.Sqrt(x2) * Math.Sqrt(y2));
            if (CosSimilarity[i] == 1) { i--; }//找到对应样本本身，回退到上一样本
        }
        return CosSimilarity;
    }

    /* generate correctional seg from keyword */
    private string[] getSeg(string rawTag)
    {
        string[] segments = rawTag.Split(',');
        for (int i = 0; i < segments.Length; i++)
        {
            string lowseg = segments[i].ToLower();
            if (lowseg.Contains("iphone")) { segments[i] += "苹果手机"; }
            if (lowseg.Contains("macbook")) { segments[i] += "苹果笔记本电脑"; }
            if (lowseg.Contains("imac")) { segments[i] += "苹果一体机"; }
            if (lowseg.Contains("mac mini")) { segments[i] += "苹果台式电脑"; }
            if (lowseg.Contains("ipad")) { segments[i] += "苹果平板电脑"; }
            if (lowseg.Contains("ipod")) { segments[i] += "苹果便携式数字多媒体播放器MP3"; }
            if (lowseg.Contains("itouch")) { segments[i] += "苹果MP3MP4"; }
            if (lowseg.Contains("iwatch")) { segments[i] += "苹果手表"; }
            if (lowseg.Contains("airpods")) { segments[i] += "苹果无线耳机"; }
        }
        return segments;
    }

    /* add tag for item in selfRepo */
    private void addItemTag()
    {
        for (int i = 0; i < itemRepository.GetLength(0); i++)
        {
            for (int j = 0; i < brandTag.Length; i++)
            {
                if (itemRepository[i, 6].Contains(brandTag[j]))
                {
                    itemRepository[i, 6] += "|" + brandTag[j];
                }
            }

            for (int k = 0; i < itemTag.Length; i++)
            {
                if (itemRepository[i, 6].Contains(itemTag[k]))
                {
                    itemRepository[i, 6] += "|" + itemTag[k];
                }
            }
        }
    }

    /* read file from path */
    private string[] read(string path)
    {
        string[] result = new string[length];
        int i = 0;
        StreamReader sr = new StreamReader(path, Encoding.UTF8);
        String line;
        while ((line = sr.ReadLine()) != null)
        {
            if (!(line.Equals("A") || line.Equals("B") || line.Equals("C") || line.Equals("D") || line.Equals("E") || line.Equals("F") || line.Equals("G")
                || line.Equals("H") || line.Equals("I") || line.Equals("J") || line.Equals("K") || line.Equals("L") || line.Equals("M") || line.Equals("N")
                || line.Equals("O") || line.Equals("P") || line.Equals("Q") || line.Equals("R") || line.Equals("S") || line.Equals("T") || line.Equals("U")
                || line.Equals("V") || line.Equals("W") || line.Equals("X") || line.Equals("Y") || line.Equals("Z")))
            {
                if (i + 1 > result.Length) { Array.Resize(ref result, 2*length + 10); }
                result[i++] = line.ToString();
            }
        }
        sr.Close();
        Array.Resize(ref result, i);
        return result;
    }

    /* read xml from path */
    private string[] readXML(string path)
    {
        int i = 0;
        string[] result = new string[length];
        XmlDocument doc = new XmlDocument();
        doc.Load(path);
        XmlNode itemRepository = doc.SelectSingleNode("itemRepository");
        XmlNodeList libraries = itemRepository.ChildNodes;
        foreach (XmlNode library in libraries)
        {
            XmlNodeList stocks = library.ChildNodes;
            foreach (XmlNode stock in stocks)
            {
                XmlNodeList itemtypes = stock.ChildNodes;
                foreach (XmlNode itemtype in itemtypes)
                {
                    if (i + 1 > result.Length) { Array.Resize(ref result, 2 * length + 10); }
                    result[i++] = itemtype.InnerText;
                }
            }
        }
        Array.Resize(ref result, i);
        return result;
    }

    /* read selfitem from path */
    private string[,] readSelfRepo(string path)
    {
        string[,] selfRepo = new string[14,8];
        int i = 0;
        StreamReader sr = new StreamReader(path, Encoding.UTF8);
        String line;
        while ((line = sr.ReadLine()) != null)
        {
            string[] tmp = line.Split('|');
            selfRepo[i, 0] = tmp[0];
            selfRepo[i, 1] = tmp[1];
            selfRepo[i, 2] = tmp[2];
            selfRepo[i, 3] = tmp[3];
            selfRepo[i, 4] = tmp[4];
            selfRepo[i, 5] = tmp[5];
            selfRepo[i, 6] = tmp[6];
            selfRepo[i, 7] = tmp[7]; 
            i++;
        }
        sr.Close();
        return selfRepo;
    }

    /* write keyword to keywordlist */
    private void writeSearchWords(string path)
    {
        if (File.Exists(path))
        {
            bool flag = false;
            string s;
            int index = this.userID.Length + 1;
            List<string> lines = new List<string>(File.ReadAllLines(path));
            for (int i = 0; i < lines.Count; i++)
            {
                if (lines[i].Contains(this.userID))
                {
                    flag = true;
                    s = lines[i].Substring(index) + rawTag;
                    lines.RemoveAt(i);
                    lines.Insert(i, this.userID + "|" + s);
                    FileStream fs = new FileStream(path, FileMode.Create);fs.Close();
                    break;
                }
                if (flag == false)
                {
                    lines.Add(this.userID + "|" + segTag);
                }
            }
            File.WriteAllLines(path, lines.ToArray(), Encoding.UTF8);
        }
    }

    /* count++ in keywordlist the user serched */
    private void writeSearchCount(string path)
    {
        if (File.Exists(path))
        {
            bool flag = false;
            int count = 0;
            int index = this.userID.Length + 1;
            List<string> lines = new List<string>(File.ReadAllLines(path));
            for (int i = 0; i < lines.Count; i++)
            {
                if (lines[i].Contains(this.userID))
                {
                    flag = true;
                    count = int.Parse(lines[i].Substring(index))+segTag.Length;
                    lines.RemoveAt(i);
                    lines.Insert(i,this.userID+"|"+count);
                    FileStream fs = new FileStream(path, FileMode.Create);
                    fs.Close();
                    break;
                }
                if (flag == false)
                {
                    lines.Add(this.userID+"|"+segTag.Length);
                }
            }
            File.WriteAllLines(path, lines.ToArray(), Encoding.UTF8);
        }
    }

    /* test of reader method */
    public void show()
    {
        for (int i = 0; i < itemRepository.GetLength(0); i++)
        {
            Console.WriteLine(itemRepository[i, 0] + itemRepository[i,1] + itemRepository[i, 2] + itemRepository[i, 3] + itemRepository[i, 4]);
        }

    }
}