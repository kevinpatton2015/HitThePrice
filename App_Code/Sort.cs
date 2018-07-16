using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrawlUtils
{
    public class Sort
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

        public List<Item> QuickSort(List<Item> array)
        {
            List<Item> SortedArray = array;
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

        private static void swap(List<Item> array, int i, int j) 
        { 
            Item tmp = array[i]; 
            array[i] = array[j]; 
            array[j] = tmp; 
        }

        public List<Item> MergeSort(List<Item> array)
        {
            List<Item> SortedArray = array;           ;
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
