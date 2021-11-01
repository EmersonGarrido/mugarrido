.class public Lcom/kunlun/platform/android/alipay/AlipayIAP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private PARTNER:Ljava/lang/String;

.field private RSA_PRIVATE:Ljava/lang/String;

.field private SELLER:Ljava/lang/String;

.field private db:Ljava/lang/String;

.field private dc:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->PARTNER:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->SELLER:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->RSA_PRIVATE:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->db:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->dc:Z

    const-string v0, "cn-bzwx"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2088011586505900"

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->PARTNER:Ljava/lang/String;

    const-string v0, "549118906@qq.com"

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->SELLER:Ljava/lang/String;

    const-string v0, "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAMZb3bFEZeFuPlGakzujK1xSRkCPdtyiEe7CUv6R9g3u39zioAZ7A4J6e1I05wZCOU9iA/XaBVvbLzrvvWlmyDChqkhE3f+OZ7WueYHdbT/HWVsVtWS3pnlz7Fhc5/ONgV6TGPJ+qJZ0ysLjSaDsFuikrUBxOeOpjNxdBb+LyBOJAgMBAAECgYBtEnTcFfVDuYAxFSNixr2AHYmd1IWSmtfrhxVmAFLhpHmal09RYPE0HS+Uq5xhl6a13Pq6hLEvql3VNaDcxXTMOIql8GjG+JM6GtKbpHadYH0oMzaPHa15+pq5RalDesXxLD2glnJCOtpJdRIQes2jQPhs4QsyF16Ebo/fDcpjgQJBAPKJRqQJMHvI9cSgYaa05Hbe1SbSQwu4W1PPiy4iOmKE5hQwNFQMZew9ZwB1sCeTeYSAvwXJfhY+lBLUgJY0QtECQQDRXscV2OXhbMFcv0k1lrxJqYnUnKjOQjcLhxxjMARBQsGUFHX9wCpjSCw3iYC8AJE6DFcvJ9SVJ9LidAnnQMM5AkAGgYQxlkWErIlbMuorrKKMRcH1/qHpyJI6l1CmdiiWx/XcCMb+ki6RvbvrmTyWczBJS6LUJumI8zjJoIWqgdBhAkEApZi8CCiccbauHWhiRBNr6ytAC7y4uyKeHO0JY94nj2J4b2HbjQ7/t7Tu3CJSguBD/VCjaHWtayerYVb8Oj776QJBAICHt+LFYLM7uQjRLzX1iYHOk7M7HNaK5wpUuMjLpglIMGJuXxGdlc5suUNSrxscouy2xvxO8W7abTLaCBdj+Tc="

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->RSA_PRIVATE:Ljava/lang/String;

    const-string v0, "http://pay.baozouwuxia.com/proxy/alipaymobile_zx/payinterfacev1.php"

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->db:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://pay.kunlun.link/proxy/alipaymobile_zx/payinterfacev1.php"

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->db:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const-string v0, "cn-kdyh"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "2088211706586073"

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->PARTNER:Ljava/lang/String;

    const-string v0, "business.dodur@gmail.com"

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->SELLER:Ljava/lang/String;

    const-string v0, "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAMDhPYirfTfQGB3Io8f+Gyda8qdBpjAfa16gOpexMxUIP+/IgwWxwsvgwwV9v4DDc/pjVcGy7MgbKunNljvOlMT1/mmMhga5WQL7tiwdGdizSKFvJ8Qi2I2aFondYLl7ObDocDJt0Vj0HXvb54AFyUDNKdI1zS3xmKiT+TsMCiRxAgMBAAECgYAeMWQjh8zDNuT/jI/u151CjN8dRY6RS+nP1z80zb1UVoVDsNypwIjgx19f9a5Lpsz57iDXgH3GWVJfZRpWZGEvKjulDof5IM847XBS7enxBs4SyEY/8Ntg7gye6tXH4kgBw6eSJKNbeX+g2bn31g9EUSoawQSX8x3iFl2j3OEMAQJBAOhCPhRe2xFqj6JB3N5DsYaW9ghUhCUm88A5QloPDJ46xWkGPyla2+G8oAYmjWvP/AZnMi7dXqAyS6HoFmQD17ECQQDUmIdYL8Na3Z0H0xMTfsRDsucOqbi9QV1T38zt1DcOKERdxJZPR79aN60ppw5/vqsAPjkKRZn5ZG/BI7pdlwjBAkEAp7+gYsoX4z5Zu1Fims29nH3P+ThBsSuvBXjVqYIRFP9RsYcne1D6WtIHqimSHvo7Bszl+987Bu0Mn0WnVllIIQJAbvosdNGCFhXnmiUKKTwccgaa7SGV6V2MvXLvhBsqnj5Q6e3sVPhsIEk+IKcvP2ol09unZQBOT0yptdXTvHVSQQJAEL5KPjRaVlDVvGS6iT/NwWpCeneeX3zrBdvspfhi47Xh25jYk8qDUhl7m0NX82cva/AXofRJk5mDYDlQnadP4A=="

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->RSA_PRIVATE:Ljava/lang/String;

    const-string v0, "http://pay.koudaiyinhun.com/proxy/alipaymobile_zx/payinterfacev1.php"

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->db:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "2088111871992681"

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->PARTNER:Ljava/lang/String;

    const-string v0, "zfbsy.zx@kunlun-inc.com"

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->SELLER:Ljava/lang/String;

    const-string v0, "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAKqU6YPTdb79zUh8xSyuMiLY6MpTVo9PrRD3bv7j+UVAmBJ8Yy/ah7vma2ndLp4wv5+Tq/AxTl/DlU4X7cvP5Bge0BMApmcCV4NsRmeZF1ZHWQdk+QOUZaPKlHaYPs0NGuuxQVr12C+1K7vPtf4W947cqCeY7rjOP9zoQadFFQLnAgMBAAECgYBhrSlVwgUfW0dsJX3mSs0MpTYPfM8I+u+30mdtbu8yl308wJsvMKwejR+em/dwv6tKXg3LWQBu15isAgm5dg4+TegwaN3D3R45vjejjeh5bs28bJt5Bwv6oxvYIKB7MalxOi72PJmRN41w6mz1Y9kpo9bwJkUQHK0auUX+CA1gQQJBANw5EE0poI70oi+tMzOQyS+0MK+4f2C5kTZtfvm2wcfImtE1LV/Xc3Kr/sLeyF9XxXu6Pgzxf0gKSpKO0ULDyaECQQDGS0zxIKmypM5kWmC7+H4aYpWSUYoH6RomeABT0n22KaU3EIjIO5hA8+jmvDXo3B1qctWSQcRgQ+ND9sWRfU+HAkEAudSVQuerirY33c9jc1Hr0wtUQhOHuREdzjXbfdCP+Iv4yCz9WvCthMhKNBpWLs4b4OopzjZC14GHp+BICPS5wQJAQIHuneLKUdtbaTodjgjgvSSlE9yC0t/6KdmQAbTQQJp7rNYsKTd56GdwtN81inNQ/ngtEk9i2w46uLlmvFXPsQJBALOyR3Mw+BpCkJfNKJjy107eWJOnRWKlXOTqbMq7t4ZfPMiiYipRaQCEMgY9EmJq115MZPW073910pwbNl49HKY="

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->RSA_PRIVATE:Ljava/lang/String;

    const-string v0, "https://pay.kunlun.com/proxy/alipaymobile_zx/payinterfacev1.php"

    iput-object v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->db:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/alipay/AlipayIAP;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "partner=\""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->PARTNER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "seller_id=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->SELLER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "out_trade_no=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "subject=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "body=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u4ef7\u683c:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "total_fee=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "notify_url=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->db:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&service=\"mobile.securitypay.pay\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&payment_type=\"1\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&_input_charset=\"utf-8\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&it_b_pay=\"30m\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->dc:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&paymethod=\"expressGateway\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->RSA_PRIVATE:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/kunlun/platform/android/common/RsaUtil;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&sign=\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"&sign_type=\"RSA\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/alipay/sdk/app/PayTask;

    invoke-direct {v3, p1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v0}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.kunlun.platform.android.alipay.AlipayIAP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    move v3, v1

    :goto_0
    if-lt v0, v5, :cond_1

    :goto_1
    if-eqz v3, :cond_5

    move v0, v1

    :goto_2
    const-string v1, "alipayPurchase purchase finish"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    aget-object v6, v4, v0

    const-string v7, "resultStatus"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "resultStatus"

    invoke-static {v6, v7}, Lcom/kunlun/platform/android/alipay/AlipayIAP;->gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "9000"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_3

    :try_start_2
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v3

    iget-object v3, v3, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v3

    iget-object v3, v3, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v7, 0x0

    invoke-interface {v3, v7, p2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    move v3, v2

    :cond_3
    :try_start_3
    const-string v7, "memo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "memo"

    invoke-static {v6, v7}, Lcom/kunlun/platform/android/alipay/AlipayIAP;->gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {p1, v6}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v3, v1

    :goto_3
    const-string v4, "com.kunlun.platform.android.alipay.AlipayIAP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "result error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move v3, v2

    goto :goto_3
.end method

.method private static gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    const-string v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public gateway(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/alipay/AlipayIAP;->dc:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/kunlun/platform/android/alipay/AlipayIAP;->purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const-string v1, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alipaymobile_zx"

    new-instance v1, Lcom/kunlun/platform/android/alipay/AlipayIAP$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kunlun/platform/android/alipay/AlipayIAP$1;-><init>(Lcom/kunlun/platform/android/alipay/AlipayIAP;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method
