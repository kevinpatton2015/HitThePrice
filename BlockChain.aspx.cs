using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BlockChain : System.Web.UI.Page
{
    public string userId;
    public int price;
    public static int flag = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["userID"] != null)
        {
            userId = Session["userID"].ToString();
            if (Session["price"] != null)
            {
                price = Convert.ToInt32(Session["price"]);
                if (BlockGenerator._blockChain.Count == 0)
                {
                    Block firstBlock = new Block()
                    {
                        Index = 0,
                        TimeStamp = BlockGenerator.CalculateCurrentTimeUTC(),
                        BPM = 0,
                        Price = 0,
                        Hash = string.Empty,
                        PrevHash = string.Empty
                    };
                    BlockGenerator._blockChain.Add(firstBlock);
                }
                if (Convert.ToInt32(Session["flag"])>1)
                {
                    Block oldBlock = BlockGenerator._blockChain.Last();
                    Block newBlock = BlockGenerator.GenerateBlock(oldBlock, oldBlock.BPM,price);
                    if (BlockGenerator.IsBlockValid(newBlock, oldBlock))
                    {
                        List<Block> newBlockChain = new List<Block>();
                        foreach (var block in BlockGenerator._blockChain)
                        {
                            newBlockChain.Add(block);
                        }
                        newBlockChain.Add(newBlock);
                        BlockGenerator.SwitchChain(newBlockChain);
                    }
                }
            }
        }       
    }
}

public struct Block
{
    /// <summary>
    /// 区块位置
    /// </summary>
    public int Index { get; set; }
    /// <summary>
    /// 区块生成时间戳
    /// </summary>
    public string TimeStamp { get; set; }
    /// <summary>
    /// 心率数值
    /// </summary>
    public int BPM { get; set; }
    /// <summary>
    /// 当前价格
    /// </summary>
    public int Price { get; set; }
    /// <summary>
    /// 区块 SHA-256 散列值
    /// </summary>
    public string Hash { get; set; }
    /// <summary>
    /// 前一个区块 SHA-256 散列值
    /// </summary>
    public string PrevHash { get; set; }
}
public static class BlockGenerator
{
    public static List<Block> _blockChain = new List<Block>();
    /// <summary>
    /// 计算区块 HASH 值
    /// </summary>
    /// <param name="block">区块实例</param>
    /// <returns>计算完成的区块散列值</returns>
    public static string CalculateHash(Block block)
    {
        string calculationStr = string.Format("{0}{1}{2}{3}{4}", block.Index,block.TimeStamp,block.BPM,block.Price,block.PrevHash);
        SHA256 sha256Generator = SHA256.Create();
        byte[] sha256HashBytes = sha256Generator.ComputeHash(Encoding.UTF8.GetBytes(calculationStr));

        StringBuilder sha256StrBuilder = new StringBuilder();
        foreach (byte @byte in sha256HashBytes)
        {
            sha256StrBuilder.Append(@byte.ToString("x2"));
        }

        return sha256StrBuilder.ToString();
    }
    /// <summary>
    /// 生成新的区块
    /// </summary>
    /// <param name="oldBlock">旧的区块数据</param>
    /// <param name="BPM">心率</param>
    /// <returns>新的区块</returns>
    public static Block GenerateBlock (Block oldBlock, int BPM,int Price)
    {
        Block newBlock = new Block()
        {
            Index = oldBlock.Index + 1,
            TimeStamp = CalculateCurrentTimeUTC(),
            BPM = BPM,
            Price = Price,
            PrevHash = oldBlock.Hash
        };

        newBlock.Hash = CalculateHash(newBlock);
        return newBlock;
    }
    /// <summary>
    /// 计算当前时间的 UTC 表示格式
    /// </summary>
    /// <returns>UTC 时间字符串</returns>
    public static string CalculateCurrentTimeUTC()
    {
        DateTime startTime = new DateTime(1970, 1, 1, 0, 0, 0, 0);
        DateTime nowTime = DateTime.Now;

        long unixTime = (long)Math.Round((nowTime - startTime).TotalMilliseconds, MidpointRounding.AwayFromZero);
        return unixTime.ToString();
    }
    /// <summary>
    /// 检验区块是否有效
    /// </summary>
    /// <param name="newBlock">新生成的区块数据</param>
    /// <param name="oldBlock">旧的区块数据</param>
    /// <returns>有效返回 TRUE，无效返回 FALSE</returns>
    public static bool IsBlockValid(Block newBlock, Block oldBlock)
    {
        if (oldBlock.Index + 1 != newBlock.Index) return false;
        if (oldBlock.Hash != newBlock.PrevHash) return false;
        if (CalculateHash(newBlock) != newBlock.Hash) return false;

        return true;
    }
    /// <summary>
    /// 如果新的区块链比当前区块链更新，则切换当前区块链为最新区块链
    /// </summary>
    /// <param name="newBlockChain">新的区块链</param>
    public static void SwitchChain(List<Block> newBlockChain)
    {
        if (newBlockChain.Count > _blockChain.Count)
        {
            _blockChain = newBlockChain;
        }
    }

}