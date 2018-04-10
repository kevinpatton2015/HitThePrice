using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// config 的摘要说明
/// </summary>
public class config
{
    public config()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    // 应用ID,您的APPID
    public static string app_id = "2016091000479524";

    // 支付宝网关
    public static string gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 商户私钥，您的原始格式RSA私钥
    public static string private_key = "MIIEowIBAAKCAQEAo2Q0Mz4Wkkx1cvLH3k9Z1mfYTSRommKSUJg017j7q84lVKtcUz6h+FYt8BjLipEh+S0QtJ2UNMnFPan8BkO7Fp/MWzmXlwUbfJcyARloW1ECUMyp7DwJwhtddgxq2VXn7N4S77ek0J+3KSOp2NvkBEKXG/pgw0azg6mhxXGR4vtXGkcbxEk+s3KsXBAqKVUEDHP/DkNyqDY/RQNyvHDf0As8QJFCI1+Zl24Axq3sOwjQBsBs6fkj8lUtDXwK2CRQSGzeUbiVY0FUNtLDrCHrpFPe/ix8AUjkWMmIYHrH8NFq4cV8lUkz0oGEEt5IRsYqfMuWuJi56OxGtprWAKcl9QIDAQABAoIBACYSiFNUaWAHruptBgOYS9+47N701+b5hwx+mvmVYhdjfrFfCLFhC87ZDfU/YdZVASyVwqnDejBev7YhsNco2yRnce/j2J3ZE9GRTZaR/A4jLz3yormoN8HiLIIAXLlt2hAIozL2gNIYFU7hv4cHnfccKSfczMVT6SqJ0Wc3kn3oIc8mxxkKeEzYT8W0+5+u5ZXSJtbhs56trKBSr4FIfUShVU+OO+sILhNAO2XQuD90BfzAS0F0Ane2kEw4tko1XmQUKM+4rC8P3fr84dlfyM6kzx9DVs4/YkO/dqcjQMt4Oy5beQ9b/dXrIkY4+8iLokakZN0HzSnK867CzLzCwAECgYEAzsXY96yvMcEhxKby0pJ5+PrYCHk9yCbHvayWtCEnX2yDbR/ULE+W4zcuLV3OdmzirKxCZZdQbAWZiv/d2ogiIY80sf99dR8VmV6zJ+MK4NE5PxhS2/Yyu8WMqvAfrvhlqqtrNHQt5b9qsQzmHSWe12xitnnLy577exnzVGUgFfUCgYEAykplSRfLHMzBPumW5BNVu6WJlDp0e62MjwGppnvnxq1qTkh+Q2uctKRfTB//qZGpH4BoROJA2e0myXw5rmCtbnO1HZZ8K9ItFkbEUMv2d5kGHBDs4rhJdsJh0oySJqeAaOE7XMBphYfdxhv1jZ/uZcjeB5l/kAhkaEZDKqTw0AECgYAkCKyX9PsPA6Y73BBDDA2/iw9s4pwWrlNuxY351DFFWubIdJyIIFKeRDaC528cijsydk6X37e/K3anl5F1DPZNvOQlBO47I/CiqrM0B0gVB8EfMsD13kDXIkUyYOhUmKs3A+qJ2JlLCYGxWxsbBzxYNGY7gJw4XvtaZ5pVIc5mpQKBgQDEGt0Xv84yzDhmsfKKhkftkmvOW+DCaRtDI3yAncuyajkNTO/CklcnM9YCqV6i10eZ91Sduqzd1y5r01bjumtHETq6RUF5BdaZqt7z6Na1WI54tNvAaqElVQmaIJYqjOVKR1bR8uIZBf6z6DTjJ/DnkZPU0DS+v7P+9mZ0t9OQAQKBgHj5KkDgOki/cOM7gL30ic6La+oeqjIL6RuvWDsZhEZy1nzO9J3Nn6BA5NI3+gGFiBN76uHTA9k+F3j5vyyKU3G3w5rtRGPEqmUjig/vQyyWJmRnbbWyj2CMFS6PUkYItbShqLmJKrcDsTFGs6hbbO7DJ0oR9QNHoUh1XwsU/Xqo";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static string alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2bMbip2heZaxWtH95od68DD+Dh/8OCXvhWk3Szlr17ofsuMl4Aq4tKtZWeUZ47nBWtY2AmIrmbW13wM+Wke8PsBsWu6/j/lNM63i82pyCVbBmp9JuLkvfYBZRT/qY0rMR6lN4o5yORbkNliGuF5DPj7lvZNMjudYnhVfTxh7C/M0aLc3QkPvza1FlTe54pbDpwwTX6WqjJuCShQVB7R4okGRRAa4Qqpidb0FSTfk4aiJemZKClbGtpQVPHEye99C28UJr/U4v5HLyZcedwq+6aPW/EdvIYPnY6D910KwB7ao7YCHW3rm+VgMS30BF2XEh9brqCZvLpM6EONhUfOWSQIDAQAB";

    // 签名方式
    public static string sign_type = "RSA2";

    // 编码格式
    public static string charset = "UTF-8";
}