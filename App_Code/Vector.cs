using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Vector 类
/// </summary>
public class Vector
{
    public string user_name;
    public int[] brand;
    public int[] field;
    public int[] item;
    public double[] duration;
    public double[] process;
    public Vector(string user_name, int[] brand, int[] field, int[] item, double[] duration, double[] process)
    {
        this.user_name = user_name;
        this.brand = brand;
        this.field = field;
        this.item = item;
        this.duration = duration;
        this.process = process;
    }

    /* get the Number of Fields Name */
    public int getPropertyNum()
    { return 6; }
}