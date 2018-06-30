using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// User-Item 类
/// </summary>
public class User_Item
{
    private string user_name;
	private string[] keyword;
    private string[] field;
    private string[] item;
	private int[] duration;
    private string[] process;
    public User_Item(string user_name, string[] keyword, string[] field, string[] item, int[] duration, string[] process)
    {
        this.user_name = user_name;
        this.keyword = keyword;
        this.field = field;
        this.item = item;
        this.duration = duration;
        this.process = process;
    }
}