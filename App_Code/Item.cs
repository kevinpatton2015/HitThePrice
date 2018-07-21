using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrawlUtils
{
    /* 定义商品单品 商品属性 包括所属网站 品名、价格、图片、超链接 */
    public class Item
    {
        public string tag;
        public string title;
        public string price;
        public string picUrl;
        public string detailUrl;

        public Item(string tag, string title, string price, string picUrl, string detailUrl)
        {
            this.tag = tag;
            this.title = title;
            this.price = price;
            this.picUrl = picUrl;
            this.detailUrl = detailUrl;
        }
    }

    class ItemComparer : IEqualityComparer<Item>, IComparer<Item>
    {
        public bool Equals(Item x, Item y)
        {
            if (x == null || y == null) { return false; }
            return (x.detailUrl == y.detailUrl);
        }

        public int GetHashCode(Item obj)
        {
            return 1;
        }

        public int Compare(Item x, Item y)
        {
            if (double.Parse(x.price) < double.Parse(y.price)) { return -1; }
            if (double.Parse(x.price) == double.Parse(y.price)) { return 0; }
            return 1;
        }
    }
}
