.class public Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private appid:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private fA:Lcom/coolcloud/uac/android/api/OnResultListener;

.field private ft:Z

.field private fu:Lcom/coolcloud/uac/android/api/Coolcloud;

.field private fv:Ljava/lang/String;

.field private fw:Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;

.field private fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private fy:Ljava/lang/String;

.field private fz:I

.field private isDebugMode:Z

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private openid:Ljava/lang/String;

.field private privateKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->ft:Z

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fu:Lcom/coolcloud/uac/android/api/Coolcloud;

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->openid:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->isDebugMode:Z

    iput v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fz:I

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$1;-><init>(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fA:Lcom/coolcloud/uac/android/api/OnResultListener;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v1, ""

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "appid"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "waresid"

    invoke-virtual {v2, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "cporderid"

    invoke-virtual {v2, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "price"

    invoke-virtual {v2, v0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "appuserid"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cpprivateinfo"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "notifyurl"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "coolpad/payinterfacev1.php"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "KunlunProxyStubImpl4coolpad"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    const-string v1, ""

    :try_start_2
    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->privateKey:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/iapppay/utils/RSAHelper;->signForPKCS1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transdata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&sign="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&signtype=RSA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "onForceReLogin"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fu:Lcom/coolcloud/uac/android/api/Coolcloud;

    invoke-direct {p0}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->bN()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fA:Lcom/coolcloud/uac/android/api/OnResultListener;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/coolcloud/uac/android/api/Coolcloud;->loginNew(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Handler;Lcom/coolcloud/uac/android/api/OnResultListener;)Lcom/coolcloud/uac/android/api/ResultFuture;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;)V
    .locals 0

    invoke-direct {p0}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->bM()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 10

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->accessToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->appid:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->openid:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/iapppay/sdk/main/CoolPadPay;->buildAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iapppay/interfaces/authentactor/AccountBean;

    move-result-object v0

    new-instance v9, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$5;

    invoke-direct {v9, p0, p4, p5}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$5;-><init>(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->appid:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fv:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->appkey:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v6, p2

    move-object v1, p0

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->ft:Z

    if-eqz v2, :cond_0

    invoke-static {p1, v1, v0, v9}, Lcom/iapppay/sdk/main/CoolPadPay;->startPay(Landroid/app/Activity;Ljava/lang/String;Lcom/iapppay/interfaces/authentactor/AccountBean;Lcom/iapppay/interfaces/callback/IPayResultCallback;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v1, v0, v9}, Lcom/iapppay/sdk/main/CoolPadPay;->startPay(Landroid/app/Activity;Ljava/lang/String;Lcom/iapppay/interfaces/authentactor/AccountBean;Lcom/iapppay/interfaces/callback/IPayResultCallback;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/kunlun/platform/android/KunlunEntity;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fv:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kunlun/platform/android/KunlunEntity;->getThirdPartyData()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "sid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->openid:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->isDebugMode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/kunlun/platform/android/KunlunEntity;->getUname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->openid:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->openid:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->openid:Ljava/lang/String;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->openid:Ljava/lang/String;

    :cond_0
    :goto_0
    const-string v0, "access_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "access_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->accessToken:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/kunlun/platform/android/KunlunEntity;->getUname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->openid:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->openid:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->openid:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->openid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fy:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method private bM()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "client_id\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "access_token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "version\":\"v2.2.0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "coolpad"

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->mActivity:Landroid/app/Activity;

    const-string v4, ""

    const-string v5, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v3, v4, v5}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "KunlunProxyStubImpl4coolpad"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$3;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$3;-><init>(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method private bN()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screenOrientation"

    iget v2, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fz:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "scope"

    const-string v2, "get_basic_userinfo"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "responseType"

    const-string v2, "code"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 4

    const-string v0, "KunlunProxyStubImpl4coolpad"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->ft:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/kunlun/platform/android/Kunlun;->appLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fy:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->bM()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fu:Lcom/coolcloud/uac/android/api/Coolcloud;

    invoke-direct {p0}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->bN()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fA:Lcom/coolcloud/uac/android/api/OnResultListener;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/coolcloud/uac/android/api/Coolcloud;->login(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Handler;Lcom/coolcloud/uac/android/api/OnResultListener;)Lcom/coolcloud/uac/android/api/ResultFuture;

    goto :goto_0
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4coolpad"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->mActivity:Landroid/app/Activity;

    const-string v0, "KunlunProxyStubImpl4coolpad"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.coolpad.private_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->privateKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.debugMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->isDebugMode:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.coolpad.appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->appid:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.coolpad.appkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->appkey:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.isKunlunLogin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->ft:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.coolpad.landscape"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v4, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fz:I

    :cond_0
    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fz:I

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->appid:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/iapppay/sdk/main/CoolPadPay;->init(Landroid/app/Activity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->appid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coolcloud/uac/android/api/Coolcloud;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/coolcloud/uac/android/api/Coolcloud;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fu:Lcom/coolcloud/uac/android/api/Coolcloud;

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->ft:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fw:Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fu:Lcom/coolcloud/uac/android/api/Coolcloud;

    invoke-virtual {v0, p1}, Lcom/coolcloud/uac/android/api/Coolcloud;->getGameAssistApi(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fw:Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fw:Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$2;

    invoke-direct {v1, p0, p1}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$2;-><init>(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;->addOnSwitchingAccountListen(Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi$SwitchingAccount;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fw:Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, v2, v3}, Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;->setTransparency(D)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fw:Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;->setIsShowAssist(Z)V

    :cond_1
    const-string v0, "finish"

    invoke-interface {p2, v4, v0}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4coolpad"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult: requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4coolpad"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4coolpad"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4coolpad"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fw:Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fw:Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;

    invoke-virtual {v0}, Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;->onPause()V

    :cond_0
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4coolpad"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4coolpad"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fw:Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fw:Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;

    invoke-virtual {v0}, Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi;->onResume()V

    :cond_0
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4coolpad"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fu:Lcom/coolcloud/uac/android/api/Coolcloud;

    invoke-virtual {v0, p1}, Lcom/coolcloud/uac/android/api/Coolcloud;->logout(Landroid/content/Context;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4coolpad"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchase:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p5, p6}, Lcom/kunlun/platform/android/Kunlun;->prepareSingleChannelPurchase(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    const-string v0, ""

    const-string v1, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "coolpad"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$4;-><init>(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;II)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v0, "KunlunProxyStubImpl4coolpad"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->ft:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/kunlun/platform/android/Kunlun;->appLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method
