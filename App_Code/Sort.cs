using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrawlUtils
{
    public class Sort
    {
        private const double baseRange = 20.00;
        private List<Item> array = new List<Item>();
        private int[] quanCnt = new int[6] { 0,0,0,0,0,0 };//0.01~[0] 0.1~[1] 1.0~[2] ....

        public Sort()
        {

        }

        public List<Item> SimpleFilter(List<Item> array)
        {
            int i;
            double tmpPrice;
            List<Item> tmp = new List<Item>();
            for (i = 0; i < array.Count; i++)//统计分位分布,以10为权重
            {
                tmpPrice = double.Parse(array[i].price);
                if (tmpPrice <= 1.00) { quanCnt[0]++; }
                else if (1.00 < tmpPrice && tmpPrice <= 10.00) { quanCnt[1]++; }
                else if (10.00 < tmpPrice && tmpPrice <= 100.00) { quanCnt[2]++; }
                else if (100.00 < tmpPrice && tmpPrice <= 1000.00) { quanCnt[3]++; }
                else if (1000.00 < tmpPrice && tmpPrice <= 10000.00) { quanCnt[4]++; }
                else if (10000.00 < tmpPrice && tmpPrice <= 100000.00) { quanCnt[5]++; }
            }
            int maxIndex = 0;//主要价位分位
            for (i = 1; i < quanCnt.Length; i++) { if (quanCnt[i] > quanCnt[maxIndex]) { maxIndex = i; } }
            bool valid;
            double sum = 0.0, ave = 0.0;
            int cnt = 0;
            for (i = 0; i < array.Count; i++)//价格合理判定，计算合理均价
            {
                valid = false;
                tmpPrice = double.Parse(array[i].price);
                switch (maxIndex)
                {
                    case 0: if (tmpPrice <= 1.00) { valid = true; } break;
                    case 1: if (1.00 < tmpPrice && tmpPrice <= 10.00) { valid = true; } break;
                    case 2: if (10.00 < tmpPrice && tmpPrice <= 100.00) { valid = true; } break;
                    case 3: if (100.00 < tmpPrice && tmpPrice <= 1000.00) { valid = true; } break;
                    case 4: if (1000.00 < tmpPrice && tmpPrice <= 10000.00) { valid = true; } break;
                    case 5: if (10000.00 < tmpPrice && tmpPrice <= 100000.00) { valid = true; } break;
                }
                if (valid == true) { tmp.Add(array[i]);sum += double.Parse(array[i].price);cnt++;valid = false; }
            }
            ave = sum / cnt;//若在分界值附近波动，则根据正态分布继续添加Item
            int tmp_i;           
            if (100.00-baseRange < ave && ave <= 100.00+ baseRange)
            {
                for (i=0;i<array.Count;i++)
                {
                    tmpPrice = double.Parse(array[i].price);
                    tmp_i = Contains(tmp, array[i]);
                    if (ave - baseRange < tmpPrice && tmpPrice <= ave + baseRange)
                    {
                        if (tmp_i != -1) { tmp.RemoveAt(tmp_i); }
                        else { tmp.Add(array[i]); }
                    }
                    else if (tmp_i != -1) { tmp.RemoveAt(tmp_i); }
                }
            }
            else if (1000.00- baseRange*10 < ave && ave <= 1000.00+ baseRange*10)
            {
                for (i = 0; i < array.Count; i++)
                {
                    tmpPrice = double.Parse(array[i].price);
                    tmp_i = Contains(tmp, array[i]);
                    if (ave - baseRange*10 < tmpPrice && tmpPrice <= ave + baseRange*10)
                    {
                        if (tmp_i != -1) { tmp.RemoveAt(tmp_i); }
                        else { tmp.Add(array[i]); }
                    }
                    else if (tmp_i != -1) { tmp.RemoveAt(tmp_i); }
                }
            }
            else if (10000.00- baseRange*100 < ave && ave <= 10000.00+ baseRange*100)
            {
                for (i = 0; i < array.Count; i++)
                {
                    tmpPrice = double.Parse(array[i].price);
                    tmp_i = Contains(tmp, array[i]);
                    if (ave - baseRange * 100 < tmpPrice && tmpPrice <= ave + baseRange * 100)
                    {
                        if (tmp_i != -1) { tmp.RemoveAt(tmp_i); }
                        else { tmp.Add(array[i]); }
                    }
                    else if (tmp_i != -1) { tmp.RemoveAt(tmp_i); }
                }
            }
            else if (100000.00- baseRange*1000 < ave && ave <= 100000.00+ baseRange*1000)
            {
                for (i = 0; i < array.Count; i++)
                {
                    tmpPrice = double.Parse(array[i].price);
                    tmp_i = Contains(tmp, array[i]);
                    if (ave - baseRange * 1000 < tmpPrice && tmpPrice <= ave + baseRange * 1000) {
                        if (tmp_i != -1) { tmp.RemoveAt(tmp_i); }
                        else { tmp.Add(array[i]); }
                    }
                    else if (tmp_i != -1) { tmp.RemoveAt(tmp_i); }
                }
            }
            return tmp.Distinct(new ItemComparer()).ToList();
        }

        private int Contains(List<Item> array, Item value)
        {
            int index = -1;
            for (int i = 0; i < array.Count; i++)
            {
                if (array[i] == value) { index = i;break; }
            }
            return index;
        }

        private static void swap(List<Item> array, int i, int j)
        {
            Item tmp = array[i];
            array[i] = array[j];
            array[j] = tmp;
        }

        public List<Item> BubbleSort(List<Item> array)
        {
            List<Item> SortedArray = SimpleFilter(array);
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

        public List<Item> QuickSort(List<Item> array)
        {
            List<Item> SortedArray = SimpleFilter(array);
            quicksort(SortedArray, 0, array.Count - 1);
            return SortedArray;
        }

        private static void quicksort(List<Item> array, int left, int right) 
        { 
            if (left < right) 
            { 
                Item middle = array[(left + right) / 2]; 
                int i = left - 1; 
                int j = right + 1; 
                while (true) 
                { 
                    while (double.Parse(array[++i].price) < double.Parse(middle.price));
                    while (double.Parse(array[--j].price) > double.Parse(middle.price)); 
                    if (i >= j) 
                        break; 
                    swap(array, i, j); 
                } 
                quicksort(array, left, i - 1); 
                quicksort(array, j + 1, right); 
            } 
        } 

        public List<Item> MergeSort(List<Item> array) 
        {
            List<Item> SortedArray = SimpleFilter(array);
            return mergesort(SortedArray);   
        }

        public static List<Item> mergesort(List<Item> array)
        {
            if (array.Count <= 1)
            {
                return array;
            }
            int mid = array.Count / 2;
            List<Item> left = new List<Item>();
            List<Item> right = new List<Item>();
    
            for (int i = 0; i < mid; i++)
            {
                left.Add(array[i]);
            }
            for (int j = mid; j < array.Count; j++)
            {
                right.Add(array[j]);
            }
            left = mergesort(left);
            right = mergesort(right);
            return merge(left, right);
        }

        public static List<Item> merge(List<Item> left, List<Item> right)
        {
            List<Item> temp = new List<Item>();
            while (left.Count > 0 && right.Count > 0)
            {
                if (double.Parse(left[0].price) <= double.Parse(right[0].price))
                {
                    temp.Add(left[0]);
                    left.RemoveAt(0);
                }
                else
                {
                    temp.Add(right[0]);
                    right.RemoveAt(0);
                }
            }
            if (left.Count > 0)
            {
                for (int i = 0; i < left.Count; i++)
                {
                    temp.Add(left[i]);
                }
            }
            if (right.Count > 0)
            {
                for (int i = 0; i < right.Count; i++)
                {
                    temp.Add(right[i]);
                }
            }
            return temp;
        }
    }
}
