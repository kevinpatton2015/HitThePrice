using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product_list_where :  System.Web.UI.Page
{
    public string userId;
    public string where;
	
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] != null)
        { userId = Session["UserId"].ToString(); }

        if (Request["s"] != null)
        { string keyword = Request.Form["s"]; }

        where = HttpContext.Current.Request.QueryString["where"];
        Product_Load(where);
    }

    private void Product_Load(string where)
    {
		switch(where)
		{
			case "phone":
				((product_list_master)Master).breadcrumb = "手机数码";
				((product_list_master)Master).pagetitle = "手机";
				((product_list_master)Master).brand[0] = "苹果手机";
				((product_list_master)Master).brand[1] = "三星手机";
				((product_list_master)Master).brand[2] = "华为";
				((product_list_master)Master).brand[3] = "OPPO";
				((product_list_master)Master).fullname[0] = "苹果Apple iPhone X 64G 深空灰 5.8英寸 全网通4G手机";
				((product_list_master)Master).fullname[1] = "12期免息 Samsung/三星 Galaxy S9+ SM-G9650/DS 全网通 手机";
				((product_list_master)Master).fullname[2] = "当天发货送壕礼/Huawei/华为 P20 pro 手机正品官方旗舰店p20plus";
				((product_list_master)Master).fullname[3] = "OPPO R15 oppor15手机全新机正品 r15 oppor15梦境版r11s r15plus";
				((product_list_master)Master).product_src[0] = "../images/content/products/iphonex-1.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-2.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-3.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-4.jpg";
				((product_list_master)Master).price[0] = "7749.00";
				((product_list_master)Master).price[1] = "6699.00";
				((product_list_master)Master).price[2] = "5488.00";
				((product_list_master)Master).price[3] = "2999.00";			
				break;
			case "powerbank":
				((product_list_master)Master).breadcrumb = "手机数码";
				((product_list_master)Master).pagetitle = "移动电源";
				((product_list_master)Master).brand[0] = "罗马仕ROMOSS";
				((product_list_master)Master).brand[1] = "罗马仕ROMOSS";
				((product_list_master)Master).brand[2] = "OATSBASF";
				((product_list_master)Master).brand[3] = "MORUI魔睿";
				((product_list_master)Master).fullname[0] = "【新品发售】罗马仕充电宝20000毫安大容量通用苹果便携移动电源";
				((product_list_master)Master).fullname[1] = "ROMOSS/罗马仕 sense4 正品10000+毫安移动电源 手机通用充电宝";
				((product_list_master)Master).fullname[2] = "卡片式充电宝苹果通用个性创意定制便携华为专用快充超薄移动电源";
				((product_list_master)Master).fullname[3] = "MORUI魔睿 充电宝20000M毫安 移动电源 超薄大容量便携手机通用";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-5.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-6.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-7.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-8.jpg";
				((product_list_master)Master).price[0] = "79.00";
				((product_list_master)Master).price[1] = "59.00";
				((product_list_master)Master).price[2] = "138.00";
				((product_list_master)Master).price[3] = "79.00";			
				break;
			case "earphone":
				((product_list_master)Master).breadcrumb = "手机数码";
				((product_list_master)Master).pagetitle = "耳机";
				((product_list_master)Master).brand[0] = "苹果";
				((product_list_master)Master).brand[1] = "铁三角";
				((product_list_master)Master).brand[2] = "铁三角";
				((product_list_master)Master).brand[3] = "森海塞尔";
				((product_list_master)Master).fullname[0] = "国行Apple苹果iphone AirPods无线耳机iphone8x蓝牙7plus原装正品";
				((product_list_master)Master).fullname[1] = "Audio Technica/铁三角 ATH-AR3BT 无线头戴式带麦线控蓝牙耳机";
				((product_list_master)Master).fullname[2] = "Audio Technica/铁三角 ATH-CKS55XiS低音入耳机有麦线控手机包邮";
				((product_list_master)Master).fullname[3] = "顺丰SENNHEISER/森海塞尔 Momentum In-Ear 木馒头入耳式手机耳机";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-52.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-53.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-54.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-55.jpg";
				((product_list_master)Master).price[0] = "998.00";
				((product_list_master)Master).price[1] = "798.00";
				((product_list_master)Master).price[2] = "199.00";
				((product_list_master)Master).price[3] = "749.00";			
				break;
			case "SDcard":
				((product_list_master)Master).breadcrumb = "手机数码";
				((product_list_master)Master).pagetitle = "存储卡";
				((product_list_master)Master).brand[0] = "三星";
				((product_list_master)Master).brand[1] = "金士顿";
				((product_list_master)Master).brand[2] = "闪迪";
				((product_list_master)Master).brand[3] = "闪迪";
				((product_list_master)Master).fullname[0] = "三星256g内存卡micro存储卡高速tf卡256g S9手机内存卡sd卡";
				((product_list_master)Master).fullname[1] = "金士顿32g内存卡存储sd卡高速 行车记录仪tf卡 32g手机内存卡";
				((product_list_master)Master).fullname[2] = "闪迪64g内存卡 sd卡64G class10高速SDXC 微单反相机存储卡80M/s";
				((product_list_master)Master).fullname[3] = "闪迪32g内存卡class10存储sd卡高速 行车记录仪tf卡32g手机内存卡";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-56jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-57.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-58.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-59.jpg";
				((product_list_master)Master).price[0] = "629.00";
				((product_list_master)Master).price[1] = "65.90";
				((product_list_master)Master).price[2] = "147.90";
				((product_list_master)Master).price[3] = "64.90";			
				break;
			case "pad":
				((product_list_master)Master).breadcrumb = "电脑、配件";
				((product_list_master)Master).pagetitle = "平板电脑";
				((product_list_master)Master).brand[0] = "苹果";
				((product_list_master)Master).brand[1] = "荣耀";
				((product_list_master)Master).brand[2] = "华为";
				((product_list_master)Master).brand[3] = "台电";
				((product_list_master)Master).fullname[0] = "【12期免息】2018新款 Apple/苹果 9.7英寸ipad智能平板电脑A10";
				((product_list_master)Master).fullname[1] = "Huawei/华为 平板 M5 10.8英寸全网通pc二合一安卓平板电脑M5Pro";
				((product_list_master)Master).fullname[2] = "荣耀 荣耀畅玩平板2正品4G通话10智能电脑安卓吃鸡手机8英寸T3";
				((product_list_master)Master).fullname[3] = "Teclast/台电 A10S平板电脑安卓10英寸新款吃鸡平板超薄游戏pad";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-12.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-33.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-34.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-35.jpg";
				((product_list_master)Master).price[0] = "2488.00";
				((product_list_master)Master).price[1] = "3788.00";
				((product_list_master)Master).price[2] = "1249.00";
				((product_list_master)Master).price[3] = "699.00";			
				break;
			case "laptop":
				((product_list_master)Master).breadcrumb = "电脑、配件";
				((product_list_master)Master).pagetitle = "笔记本电脑";
				((product_list_master)Master).brand[0] = "华硕";
				((product_list_master)Master).brand[1] = "苹果";
				((product_list_master)Master).brand[2] = "昂台";
				((product_list_master)Master).brand[3] = "长城";
				((product_list_master)Master).fullname[0] = "【抽券再减500】华硕飞行堡垒FX63学生吃鸡游戏本 i7笔记本电脑";
				((product_list_master)Master).fullname[1] = "Apple/苹果 MacBook Air MQD32CH/A 13寸超薄笔记本电脑D42 MMGF2";
				((product_list_master)Master).fullname[2] = "昂台曲面屏一体机电脑新品台式主机全套家用游戏独显27英寸i5高配";
				((product_list_master)Master).fullname[3] = "GreatWall/长城 19-24英寸台式家用办公独显游戏T2001一体机";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-9.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-10.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-14.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-15.jpg";
				((product_list_master)Master).price[0] = "6299.00";
				((product_list_master)Master).price[1] = "7888.00";
				((product_list_master)Master).price[2] = "3189.00";
				((product_list_master)Master).price[3] = "2499.00";			
				break;
			case "keyboard":
				((product_list_master)Master).breadcrumb = "电脑、配件";
				((product_list_master)Master).pagetitle = "键盘";
				((product_list_master)Master).brand[0] = "阿米洛";
				((product_list_master)Master).brand[1] = "雷蛇";
				((product_list_master)Master).brand[2] = "cherry";
				((product_list_master)Master).brand[3] = "牧马人";;
				((product_list_master)Master).fullname[0] = "varmilo阿米洛机械键盘VA87M VA108M樱花粉色cherry茶轴静音红轴";
				((product_list_master)Master).fullname[1] = "Razer/雷蛇 黑寡妇蜘蛛X/竞技/幻彩/lol 游戏机械键盘樱桃青轴";
				((product_list_master)Master).fullname[2] = "Cherry樱桃 MX 8.0背光RGB游戏机械键盘87键黑轴红轴青轴茶轴银轴";
				((product_list_master)Master).fullname[3] = "达尔优牧马人机械键盘ek812黑轴青轴茶红轴104键电脑吃鸡游戏电竟";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-60.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-61.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-62.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-63.jpg";
				((product_list_master)Master).price[0] = "769.00";
				((product_list_master)Master).price[1] = "519.00";
				((product_list_master)Master).price[2] = "1479.00";
				((product_list_master)Master).price[3] = "199.00";			
				break;
			case "mouse":
				((product_list_master)Master).breadcrumb = "电脑、配件";
				((product_list_master)Master).pagetitle = "鼠标";
				((product_list_master)Master).brand[0] = "雷蛇";
				((product_list_master)Master).brand[1] = "牧马人";
				((product_list_master)Master).brand[2] = "雷蛇";
				((product_list_master)Master).brand[3] = "苹果";
				((product_list_master)Master).fullname[0] = "Razer雷蛇 锐蝮蛇竞技版LOL/CF USB电竞游戏电脑台式光电有线鼠标";
				((product_list_master)Master).fullname[1] = "达尔优牧马人鼠标2代3代EM915吃鸡宏压枪辅助有线游戏电竞机械usb";
				((product_list_master)Master).fullname[2] = "Razer雷蛇炼狱蝰蛇精英守望先锋有线游戏鼠标吃鸡编程RGB绝地求生";
				((product_list_master)Master).fullname[3] = "正品国行Apple/苹果 Magic Mouse 2 原装无线鼠标蓝牙鼠标二代";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-64.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-65.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-66.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-67.jpg";
				((product_list_master)Master).price[0] = "449.00";
				((product_list_master)Master).price[1] = "118.00";
				((product_list_master)Master).price[2] = "259.00";
				((product_list_master)Master).price[3] = "468.00";			
				break;	
			case "DC":
				((product_list_master)Master).breadcrumb = "摄影、摄像";
				((product_list_master)Master).pagetitle = "数码相机";
				((product_list_master)Master).brand[0] = "佳能";
				((product_list_master)Master).brand[1] = "奥林巴斯";
				((product_list_master)Master).brand[2] = "卡西欧";
				((product_list_master)Master).brand[3] = "富士";
				((product_list_master)Master).fullname[0] = "照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS";
				((product_list_master)Master).fullname[1] = "Olympus/奥林巴斯 Tough TG-5 防水数码相机深浮潜水tg5 三防水下";
				((product_list_master)Master).fullname[2] = "Casio/卡西欧EX-ZR3700自拍美颜相机 自拍神器数码相机";
				((product_list_master)Master).fullname[3] = "国行 Fujifilm/富士 X100F x100t X-100T X100F旁轴相机";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-19.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-37.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-38.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-39.jpg";
				((product_list_master)Master).price[0] = "2279.00";
				((product_list_master)Master).price[1] = "2800.00";
				((product_list_master)Master).price[2] = "1410.00";
				((product_list_master)Master).price[3] = "7780.00";			
				break;	
			case "SLR":
				((product_list_master)Master).breadcrumb = "摄影、摄像";
				((product_list_master)Master).pagetitle = "单反相机";
				((product_list_master)Master).brand[0] = "索尼";
				((product_list_master)Master).brand[1] = "佳能";
				((product_list_master)Master).brand[2] = "佳能";
				((product_list_master)Master).brand[3] = "尼康";
				((product_list_master)Master).fullname[0] = "Sony/索尼 DSC-H400 佳能 入门小单反 长焦照相机 高清 数码 旅游";
				((product_list_master)Master).fullname[1] = "佳能 EOS100D 18-55 入门级白色单反相机kissX7 高清数码旅游";
				((product_list_master)Master).fullname[2] = "【数码男生】Canon/佳能EOS 1300D 入门级 单反相机数码高清 旅游";
				((product_list_master)Master).fullname[3] = "Nikon/尼康D3400套机18-55镜头单反相机入门级高清数码旅游照相机";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-17.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-18.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-22.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-36.jpg";
				((product_list_master)Master).price[0] = "1699.00";
				((product_list_master)Master).price[1] = "2779.00";
				((product_list_master)Master).price[2] = "2198.00";
				((product_list_master)Master).price[3] = "2949.00";			
				break;	
			case "ILDC":
				((product_list_master)Master).breadcrumb = "摄影、摄像";
				((product_list_master)Master).pagetitle = "微单\\单电相机";
				((product_list_master)Master).brand[0] = "松下";
				((product_list_master)Master).brand[1] = "索尼";
				((product_list_master)Master).brand[2] = "索尼";
				((product_list_master)Master).brand[3] = "富士";
				((product_list_master)Master).fullname[0] = "Panasonic松下数码相机 DC-GF9KGK美颜4K高清自拍神器微单电gf9";
				((product_list_master)Master).fullname[1] = "送原装卡包/索尼ILCE-A6000L微单套机数码相机 专业高清wifi微单";
				((product_list_master)Master).fullname[2] = "Sony/索尼 ILCE-7M2单机身 索尼a7m2全画幅微单相机 索尼微单a7ii";
				((product_list_master)Master).fullname[3] = "Fujifilm/富士 X-T20单机复古微单相机 富士XT20 16-50 18-55套机";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-20.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-21.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-40.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-41.jpg";
				((product_list_master)Master).price[0] = "3276.00";
				((product_list_master)Master).price[1] = "3549.00";
				((product_list_master)Master).price[2] = "9299.00";
				((product_list_master)Master).price[3] = "6100.00";			
				break;	
			case "DSLR_lens":
				((product_list_master)Master).breadcrumb = "摄影、摄像";
				((product_list_master)Master).pagetitle = "单反镜头";
				((product_list_master)Master).brand[0] = "佳能";
				((product_list_master)Master).brand[1] = "佳能";
				((product_list_master)Master).brand[2] = "佳能";
				((product_list_master)Master).brand[3] = "佳能";
				((product_list_master)Master).fullname[0] = "佳能24-70 f2.8二代镜头 EF 24-70mm f/2.8L II USM 全新正品行货";
				((product_list_master)Master).fullname[1] = "大光圈中徕25mm f1.8微单镜头 佳能富士松下m43相机E卡口人像定焦";
				((product_list_master)Master).fullname[2] = "Canon佳能 EF 70-200长焦镜头70-200mm f2.8L IS II USM 小白兔";
				((product_list_master)Master).fullname[3] = "佳能50 1.8 STM 大光圈定焦人像 50mm /F1.8 佳能小痰盂防抖镜头";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-23.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-43.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-24.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-42.jpg";
				((product_list_master)Master).price[0] = "10199.00";
				((product_list_master)Master).price[1] = "499.00";
				((product_list_master)Master).price[2] = "11238.00";
				((product_list_master)Master).price[3] = "488.00";			
				break;	
			case "TV":
				((product_list_master)Master).breadcrumb = "家用电器";
				((product_list_master)Master).pagetitle = "电视机";
				((product_list_master)Master).brand[0] = "小米";
				((product_list_master)Master).brand[1] = "TCL";
				((product_list_master)Master).brand[2] = "夏普";
				((product_list_master)Master).brand[3] = "海信";
				((product_list_master)Master).fullname[0] = "Xiaomi/小米 小米电视4A 65英寸 全新4k超高清智能平板液晶电视机";
				((product_list_master)Master).fullname[1] = "TCL 65A730U 65英寸30核网络智能4K电视超薄";
				((product_list_master)Master).fullname[2] = "Sharp/夏普 LCD-60TX7008A 60英寸智能液晶平板4K高清电视机55 65";
				((product_list_master)Master).fullname[3] = "Hisense/海信 LED55EC720US英寸4K智能液晶网络平板电视机高清50";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-29.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-30.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-44.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-45.jpg";
				((product_list_master)Master).price[0] = "3999.00";
				((product_list_master)Master).price[1] = "3999.00";
				((product_list_master)Master).price[2] = "3578.00";
				((product_list_master)Master).price[3] = "3799.00";			
				break;	
			case "washer":
				((product_list_master)Master).breadcrumb = "家用电器";
				((product_list_master)Master).pagetitle = "洗衣机";
				((product_list_master)Master).brand[0] = "海尔";
				((product_list_master)Master).brand[1] = "美的";
				((product_list_master)Master).brand[2] = "小天鹅";
				((product_list_master)Master).brand[3] = "西门子";
				((product_list_master)Master).fullname[0] = "Haier/海尔EG10014B39GU1滚筒洗衣机全自动10公斤kg 变频静音节能";
				((product_list_master)Master).fullname[1] = "Midea/美的 MD100V71WDX 洗衣机滚筒全自动家用10kg公斤变频烘干";
				((product_list_master)Master).fullname[2] = "小天鹅10公斤KG全自动变频智能滚筒静音家用洗衣机 TG100V120WDG";
				((product_list_master)Master).fullname[3] = "SIEMENS/西门子 WD14G4C91W洗衣机变频8kg滚筒干衣机家用洗烘一体";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-27.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-28.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-32.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-46.jpg";
				((product_list_master)Master).price[0] = "2699.00";
				((product_list_master)Master).price[1] = "2999.00";
				((product_list_master)Master).price[2] = "2599.00";
				((product_list_master)Master).price[3] = "5699.00";			
				break;
			case "AC":
				((product_list_master)Master).breadcrumb = "家用电器";
				((product_list_master)Master).pagetitle = "空调";
				((product_list_master)Master).brand[0] = "奥克斯";
				((product_list_master)Master).brand[1] = "美的";
				((product_list_master)Master).brand[2] = "格力";
				((product_list_master)Master).brand[3] = "海尔";
				((product_list_master)Master).fullname[0] = "一级能效变频空调大1.5匹冷暖挂机AUX/奥克斯 KFR-35GW/BpQYQ1+1P";
				((product_list_master)Master).fullname[1] = "Midea/美的 KFR-26GW/WXDA1@大1匹变频冷暖壁挂空调挂机一级能效";
				((product_list_master)Master).fullname[2] = "格力空调大1匹变频冷暖挂机KFR-26GW/(26592)FNhDa-A3品圆";
				((product_list_master)Master).fullname[3] = "KFR-35GW/21TMAAL23AU1";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-25.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-47.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-48.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-49.jpg";
				((product_list_master)Master).price[0] = "2799.00";
				((product_list_master)Master).price[1] = "3249.00";
				((product_list_master)Master).price[2] = "2699.00";
				((product_list_master)Master).price[3] = "2899.00";			
				break;
			case "fridge":
				((product_list_master)Master).breadcrumb = "家用电器";
				((product_list_master)Master).pagetitle = "电冰箱";
				((product_list_master)Master).brand[0] = "美的";
				((product_list_master)Master).brand[1] = "海尔";
				((product_list_master)Master).brand[2] = "西门子";
				((product_list_master)Master).brand[3] = "美菱";
				((product_list_master)Master).fullname[0] = "Midea/美的 BCD-535WKZM(E)冰箱双开门对开家用智能节能风冷无霜";
				((product_list_master)Master).fullname[1] = "Haier/海尔 BCD-470WDPG家用电冰箱四开门十字对开门变频风冷无霜";
				((product_list_master)Master).fullname[2] = "SIEMENS\\西门子BCD-610W(KA92NV02TI)对开门变频冰箱风冷";
				((product_list_master)Master).fullname[3] = "MeiLing/美菱 BCD-601WPCX 双开门冰箱 对开门家用风冷变频电冰箱";
				((product_list_master)Master).product_src[0] = "../images/content/products/p-26.jpg";
				((product_list_master)Master).product_src[1] = "../images/content/products/p-31.jpg";
				((product_list_master)Master).product_src[2] = "../images/content/products/p-50.jpg";
				((product_list_master)Master).product_src[3] = "../images/content/products/p-51.jpg";
				((product_list_master)Master).price[0] = "3099.00";
				((product_list_master)Master).price[1] = "4799.00";
				((product_list_master)Master).price[2] = "4798.00";
				((product_list_master)Master).price[3] = "3299.00";			
				break;				
		}

    }

    protected void Logout(object sender, EventArgs e)
    {
        Session["logoutFlag"] = "true";
        try
        {
            Session["UserId"] = null;
            Session.Remove("UserId");
        }
        catch { }
        Response.Redirect("index.aspx");
    }
}