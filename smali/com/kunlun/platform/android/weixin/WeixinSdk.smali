.class public Lcom/kunlun/platform/android/weixin/WeixinSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final WXSceneFavorite:I = 0x2

.field public static final WXSceneSession:I = 0x0

.field public static final WXSceneTimeline:I = 0x1

.field private static mQ:Lcom/kunlun/platform/android/weixin/WeixinSdk;


# instance fields
.field api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private appid:Ljava/lang/String;

.field private bC:Ljava/lang/Long;

.field public handler:Landroid/os/Handler;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private mR:I

.field private mS:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

.field private mT:Lcom/kunlun/platform/android/Kunlun$DialogListener;

.field private mU:Lcom/tencent/mm/sdk/modelpay/PayReq;

.field private mV:Lcom/kunlun/platform/android/common/KunlunActivityControl;

.field private partnerId:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mQ:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->type:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->bC:Ljava/lang/Long;

    const-string v0, "1230609601"

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->partnerId:Ljava/lang/String;

    new-instance v0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;-><init>(Lcom/kunlun/platform/android/weixin/WeixinSdk;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mV:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    new-instance v0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;-><init>(Lcom/kunlun/platform/android/weixin/WeixinSdk;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.weixin_appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->appid:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->appid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->appid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static a([BLjava/lang/String;Ljava/lang/String;Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 2

    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v0, p3}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    :cond_1
    array-length v1, p0

    if-lez v1, :cond_2

    iput-object p0, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->appid:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 2

    iput p1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mR:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->type:I

    iput-object p2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mT:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mV:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunActivity;->start(Landroid/content/Context;Lcom/kunlun/platform/android/common/KunlunActivityControl;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/weixin/WeixinSdk;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/weixin/WeixinSdk;Lcom/tencent/mm/sdk/modelpay/PayReq;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mU:Lcom/tencent/mm/sdk/modelpay/PayReq;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/weixin/WeixinSdk;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->w(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/kunlun/platform/android/Kunlun$DialogListener;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x3

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mActivity:Landroid/app/Activity;

    const-string v2, "\u5fae\u4fe1\u6ca1\u6709\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u65b0\u7248\u540e\u91cd\u8bd5\u3002"

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "share error"

    invoke-interface {p1, v3, v1}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mActivity:Landroid/app/Activity;

    const-string v2, "\u5fae\u4fe1\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u65b0\u7248\u540e\u91cd\u8bd5\u3002"

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "share error"

    invoke-interface {p1, v3, v1}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/weixin/WeixinSdk;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->type:I

    return v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/weixin/WeixinSdk;)V
    .locals 3

    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;-><init>()V

    const-string v1, "snsapi_userinfo"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "weixin_sdk_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->bC:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    return-void
.end method

.method static synthetic d(Lcom/kunlun/platform/android/weixin/WeixinSdk;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mU:Lcom/tencent/mm/sdk/modelpay/PayReq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mU:Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/kunlun/platform/android/weixin/WeixinSdk;)V
    .locals 4

    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mS:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kunlunShare"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    iget v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mR:I

    iput v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    return-void
.end method

.method static synthetic f(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/kunlun/platform/android/weixin/WeixinSdk;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->type:I

    return-void
.end method

.method static synthetic h(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic i(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static instance(Landroid/content/Context;)Lcom/kunlun/platform/android/weixin/WeixinSdk;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mQ:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    if-nez v0, :cond_0

    new-instance v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mQ:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mQ:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    return-object v0
.end method

.method static synthetic j(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/Kunlun$DialogListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mT:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    return-object v0
.end method

.method static synthetic k(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->bC:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic l(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/common/KunlunActivityControl;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mV:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    return-object v0
.end method

.method static synthetic m(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/tencent/mm/sdk/modelpay/PayReq;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mU:Lcom/tencent/mm/sdk/modelpay/PayReq;

    return-object v0
.end method

.method static synthetic n(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->partnerId:Ljava/lang/String;

    return-object v0
.end method

.method private w(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mContext:Landroid/content/Context;

    const-string v2, "kunlun.WeixinSdk"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "wxToken"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/kunlun/platform/android/KunlunUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mV:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunActivity;->start(Landroid/content/Context;Lcom/kunlun/platform/android/common/KunlunActivityControl;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appid\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->appid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "code\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wxToken\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "sdk\":\"android"

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "weixin"

    iget-object v4, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v5

    new-instance v6, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;-><init>(Lcom/kunlun/platform/android/weixin/WeixinSdk;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {v4, v2, v3, v5, v6}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto :goto_0
.end method


# virtual methods
.method public doLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->bC:Ljava/lang/Long;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->bC:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->bC:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    const/16 v0, -0x3e8

    const-string v2, "\u8fde\u7eed\u70b9\u51fb\u9519\u8bef"

    const/4 v3, 0x0

    invoke-interface {p2, v0, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->bC:Ljava/lang/Long;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->type:I

    iput-object p1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.weixin_appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->appid:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->appid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x64

    const-string v2, "\u5fae\u4fe1\u6ca1\u6709\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u65b0\u7248\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2, v8}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x65

    const-string v2, "\u5fae\u4fe1\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u65b0\u7248\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2, v8}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final finish()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    sput-object v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mQ:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getKunlunOrder(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    const-string v0, ""

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "order_price\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product_name\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    const-string v1, "kunlun.WeixinSdk"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "weixin"

    new-instance v1, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;

    invoke-direct {v1, p0, p1}, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;-><init>(Lcom/kunlun/platform/android/weixin/WeixinSdk;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public getWXApi()Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method

.method public logout(Landroid/content/Context;)V
    .locals 2

    const-string v0, "kunlun.WeixinSdk"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wxToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public purchase(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->bC:Ljava/lang/Long;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->bC:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->bC:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    const/16 v0, -0x3e8

    const-string v2, "\u8fde\u7eed\u70b9\u51fb\u9519\u8bef"

    invoke-static {v0, v2}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->bC:Ljava/lang/Long;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mU:Lcom/tencent/mm/sdk/modelpay/PayReq;

    iput-object p1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.weixin_appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->appid:Ljava/lang/String;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.weixin_partnerid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.weixin_partnerid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->partnerId:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->appid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mContext:Landroid/content/Context;

    const-string v1, "\u5fae\u4fe1\u6ca1\u6709\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u65b0\u7248\u540e\u91cd\u8bd5\u3002"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u5fae\u4fe1\u6ca1\u6709\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u65b0\u7248\u540e\u91cd\u8bd5\u3002"

    invoke-static {v8, v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mContext:Landroid/content/Context;

    const-string v1, "\u5fae\u4fe1\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u65b0\u7248\u540e\u91cd\u8bd5\u3002"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u5fae\u4fe1\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u65b0\u7248\u540e\u91cd\u8bd5\u3002"

    invoke-static {v8, v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->getKunlunOrder(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public shareBmp(Landroid/graphics/Bitmap;I[BLcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 3

    invoke-direct {p0, p4}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(Lcom/kunlun/platform/android/Kunlun$DialogListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;

    invoke-direct {v0, p1}, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    const-string v1, "pics"

    const-string v2, ""

    invoke-static {p3, v1, v2, v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a([BLjava/lang/String;Ljava/lang/String;Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mS:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {p0, p2, p4}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(ILcom/kunlun/platform/android/Kunlun$DialogListener;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public shareMusic(I[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 1

    invoke-direct {p0, p6}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(Lcom/kunlun/platform/android/Kunlun$DialogListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;-><init>()V

    iput-object p5, v0, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    invoke-static {p2, p3, p4, v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a([BLjava/lang/String;Ljava/lang/String;Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mS:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {p0, p1, p6}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(ILcom/kunlun/platform/android/Kunlun$DialogListener;)V

    :cond_0
    return-void
.end method

.method public shareText(ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(Lcom/kunlun/platform/android/Kunlun$DialogListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;-><init>()V

    iput-object p2, v0, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;->text:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const-string v2, ""

    invoke-static {v1, v2, p2, v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a([BLjava/lang/String;Ljava/lang/String;Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mS:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {p0, p1, p3}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(ILcom/kunlun/platform/android/Kunlun$DialogListener;)V

    :cond_0
    return-void
.end method

.method public shareVideo(I[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 1

    invoke-direct {p0, p6}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(Lcom/kunlun/platform/android/Kunlun$DialogListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;-><init>()V

    iput-object p5, v0, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;

    invoke-static {p2, p3, p4, v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a([BLjava/lang/String;Ljava/lang/String;Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mS:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {p0, p1, p6}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(ILcom/kunlun/platform/android/Kunlun$DialogListener;)V

    :cond_0
    return-void
.end method

.method public shareWebLink(I[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 1

    invoke-direct {p0, p6}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(Lcom/kunlun/platform/android/Kunlun$DialogListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    iput-object p5, v0, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    invoke-static {p2, p3, p4, v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a([BLjava/lang/String;Ljava/lang/String;Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->mS:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {p0, p1, p6}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(ILcom/kunlun/platform/android/Kunlun$DialogListener;)V

    :cond_0
    return-void
.end method
