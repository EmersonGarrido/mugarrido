.class public Lcom/bluepay/data/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "/charge"

.field private static final b:Ljava/lang/String; = "http://www.jmtt.co.th/msisdn"

.field private static final c:Ljava/lang/String; = "http://203.151.93.125:8089/"

.field private static final d:Ljava/lang/String; = "blueAdServer/getOffer"

.field private static final e:Ljava/lang/String; = "blueAdServer/confirmInstal"

.field private static final f:Ljava/lang/String; = "blueAdServer/offerDetail"

.field private static final g:Ljava/lang/String; = "blueAdServer/uploadInstalList"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "/charge/getConfig"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    const-string v0, "http://stat1.bluepay.asia/"

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->statUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "http://stat1.bluepay.asia/"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->statUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    const-string v0, "http://stat1.bluepay.asia/"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->statUrl:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "http://stat1.bluepay.asia/"

    goto :goto_0

    :pswitch_2
    const-string v0, "http://54.169.238.20:100/"

    goto :goto_0

    :pswitch_3
    const-string v0, "http://125.212.202.118:100/"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->apiUrlMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/bluepay/data/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/service/cashcard"

    invoke-static {v0, v1}, Lcom/bluepay/data/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/service/cashcard"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/bluepay/data/Config;->getPort()I

    move-result v0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/data/Config;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/charge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "/tdp/uploadStatistics"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    const-string v0, "/thaiCharge/baiduPay/indosatPay"

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dcb charge url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->apiUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    const-string v0, "/thaiCharge/baiduPay/smartFrenPay"

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    const-string v0, "/thaiCharge/telenor/chargeByWifiPing"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://203.151.93.97:9999"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "line"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://api.bluepay.asia/charge/linepay/linePayRequest"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-string v0, "/ais/uploadStatistics"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string v0, "http://203.151.93.97:9999/thaiCharge/telenor/getWifiPing"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/bluepay/data/Config;->getPort()I

    move-result v0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/data/Config;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/bluepay/data/Config;->getIp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/charge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/charge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    const-string v0, "/dtac/uploadStatistics"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/bluepay/pay/Client;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CN"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "12call"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "truemoney"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "happy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "TH"

    goto :goto_0

    :cond_2
    const-string v0, "unipin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "telkomsel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "indomog"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "ID"

    goto :goto_0

    :cond_4
    const-string v0, "mobifone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "vinaphone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "viettel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "vtc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "VN"

    goto :goto_0

    :cond_6
    const-string v0, "CN"

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    const-string v0, "/ais/getAisCharge"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.jmtt.co.th/msisdn"

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    const-string v0, "/dtacSms/mobileRequestDirect"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    const-string v0, "/sms/smsDestination"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    const-string v0, "/aisNew/mobileRequest3g"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    const-string v0, "/aisNew/mobileRequestWifiOtp"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    const-string v0, "/aisNew/mobileRequestWifi"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->apiUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "/service/queryTrans"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->apiUrl:Ljava/lang/String;

    const-string v1, "/service/queryTrans"

    invoke-static {v0, v1}, Lcom/bluepay/data/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    const-string v0, "http://203.151.93.97:9999/thaiCharge/service/queryTrans"

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    const-string v0, "/service/cashcard"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    const-string v0, "/paysBySms/initPayment"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    const-string v0, "http://203.151.93.97:9999/thaiCharge/service/cashcard"

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    const-string v0, "http://stat1.bluepay.asia/"

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    const-string v0, "/api/getOffer"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    const-string v0, "http://203.151.93.125:8089/blueAdServer/getOffer"

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 1

    const-string v0, "http://203.151.93.125:8089/blueAdServer/confirmInstal"

    return-object v0
.end method

.method public static u()Ljava/lang/String;
    .locals 1

    const-string v0, "http://203.151.93.125:8089/blueAdServer/offerDetail"

    return-object v0
.end method

.method public static v()Ljava/lang/String;
    .locals 1

    const-string v0, "/payByOffline/doPayByOffline"

    invoke-static {v0}, Lcom/bluepay/data/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static w()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bluepay/data/Config;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/thaiCharge/service/getMsisdnByImsi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static x()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->statUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->statUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/bluepay/data/j;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
