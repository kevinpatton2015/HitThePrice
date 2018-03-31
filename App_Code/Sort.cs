using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrawlUtils
{
    class Sort
    {
        private List<Item> array = new List<Item>();

        public Sort()
        {

        }

        public List<Item> BubbleSort(List<Item> array)
        {
            List<Item> SortedArray = array;
            Item tmp;
            for (int i = 0; i < SortedArray.Count - 1; i++)
                for (int j = SortedArray.Count - 1; j > i; j--)
                {
                    if (double.Parse(SortedArray[j].price) < double.Parse(SortedArray[j - 1].price))
                    {
                        tmp = SortedArray[j];
                        SortedArray[j] = SortedArray[j - 1];
                        SortedArray[j - 1] = tmp;
                    }
                }
            return SortedArray;
        }
    }
}
