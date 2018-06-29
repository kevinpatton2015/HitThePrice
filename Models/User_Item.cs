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
    private string[] main_class;
    private string[] sub_class;
	private int[] duration;
    private string[] process;
    public Order(string user_name, string[] keyword, string[] main_class, string[] sub_class, string[] duration, string[] process)
    {
        this.user_name = user_name;
        this.main_class = main_class;
        this.sub_class = sub_class;
        this.duration = duration;
        this.process = process;
    }
}