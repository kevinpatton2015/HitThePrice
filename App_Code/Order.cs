using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Order 订单类
/// </summary>
public class Order
{
    private int order_ID;
    private string order_src;
    private string order_name;
    private string quantity;
    private string ship;
    private string price;
    public Order(int order_ID, string order_src, string order_name, string quantity, string ship, string price)
    {
        this.order_ID = order_ID;
        this.order_src = order_src;
        this.order_name = order_name;
        this.quantity = quantity;
        this.ship = ship;
        this.price = price;
    }
}