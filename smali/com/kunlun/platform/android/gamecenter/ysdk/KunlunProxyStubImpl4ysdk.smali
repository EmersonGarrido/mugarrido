.class public Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;
.implements Lcom/tencent/ysdk/module/bugly/BuglyListener;
.implements Lcom/tencent/ysdk/module/user/UserListener;


# instance fields
.field private ir:Ljava/lang/String;

.field private is:Ljava/lang/String;

.field private it:Ljava/lang/String;

.field private iu:Ljava/lang/String;

.field private jo:[B

.field private kQ:Ljava/lang/String;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private openId:Ljava/lang/String;

.field private pf:Ljava/lang/String;

.field private pfKey:Ljava/lang/String;

.field private qqAccessToken:Ljava/lang/String;

.field private wxAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->openId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->qqAccessToken:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->ir:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->pf:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->pfKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->is:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->jo:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kQ:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->wxAppId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->it:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->iu:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method private a(Lcom/tencent/ysdk/module/user/UserLoginRet;)V
    .locals 1

    iget-object v0, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->open_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->openId:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->pf:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->pf:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->pf_key:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->pfKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/ysdk/module/user/UserLoginRet;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->qqAccessToken:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/ysdk/module/user/UserLoginRet;->getPayToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->ir:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/ysdk/module/user/UserLoginRet;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->it:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/ysdk/module/user/UserLoginRet;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->iu:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/tencent/ysdk/module/user/UserLoginRet;)V
    .locals 5

    const/4 v3, 0x0

    const-string v0, "KunlunProxyStubImpl4qq"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wxLogin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->platform:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->flag:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/ysdk/api/YSDKApi;->logout()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x67

    const-string v2, "\u6388\u6743\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u6388\u6743"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mActivity:Landroid/app/Activity;

    const-string v1, "\u6388\u6743\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->a(Lcom/tencent/ysdk/module/user/UserLoginRet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->wxAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->openId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wxAccessToken\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->it:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wxRefreshToken\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->iu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msdkUrl\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->is:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "channelid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/ysdk/api/YSDKApi;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerChannelId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/ysdk/api/YSDKApi;->getRegisterChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wx"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$2;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$2;-><init>(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x64

    const-string v2, "\u6388\u6743\u5931\u8d25\uff0c\u5fae\u4fe1\u6ca1\u6709\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u65b0\u7248"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x65

    const-string v2, "\u767b\u5f55\u6388\u6743\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "wxLogin:eFlag_WX_RefreshTokenSucc"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->a(Lcom/tencent/ysdk/module/user/UserLoginRet;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x66

    const-string v2, "\u7f51\u7edc\u9519\u8bef\uff0c\u6388\u6743\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u6388\u6743"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_1
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_2
        0x7d4 -> :sswitch_4
        0x7d5 -> :sswitch_3
        0x7d7 -> :sswitch_4
        0x7d8 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)[B
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->jo:[B

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->ir:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/tencent/ysdk/module/user/UserLoginRet;)V
    .locals 5

    const/4 v3, 0x0

    const-string v0, "KunlunProxyStubImpl4qq"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "qqLogin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->platform:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->flag:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/ysdk/api/YSDKApi;->logout()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x67

    const-string v2, "\u6388\u6743\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u6388\u6743"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mActivity:Landroid/app/Activity;

    const-string v1, "\u6388\u6743\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->a(Lcom/tencent/ysdk/module/user/UserLoginRet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->openId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openkey\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->qqAccessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msdkUrl\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->is:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "channelid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/ysdk/api/YSDKApi;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerChannelId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/ysdk/api/YSDKApi;->getRegisterChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qq"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$3;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$3;-><init>(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x64

    const-string v2, "\u6388\u6743\u5931\u8d25\uff0cQQ\u6ca1\u6709\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u65b0\u7248"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x65

    const-string v2, "\u767b\u5f55\u6388\u6743\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x66

    const-string v2, "\u7f51\u7edc\u9519\u8bef\uff0c\u6388\u6743\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u6388\u6743"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3ec -> :sswitch_1
        0x3ed -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->it:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->openId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->pf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->pfKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic j(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-void
.end method


# virtual methods
.method public OnCrashExtDataNotify()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public OnCrashExtMessageNotify()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new Upload extra crashing message for bugly on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OnLoginNotify(Lcom/tencent/ysdk/module/user/UserLoginRet;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4qq"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnLoginNotify:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->platform:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget v0, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->flag:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->platform:I

    invoke-static {v0}, Lcom/tencent/ysdk/framework/common/ePlatform;->getEnum(I)Lcom/tencent/ysdk/framework/common/ePlatform;

    move-result-object v0

    sget-object v1, Lcom/tencent/ysdk/framework/common/ePlatform;->QQ:Lcom/tencent/ysdk/framework/common/ePlatform;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->c(Lcom/tencent/ysdk/module/user/UserLoginRet;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/tencent/ysdk/module/user/UserLoginRet;->platform:I

    invoke-static {v0}, Lcom/tencent/ysdk/framework/common/ePlatform;->getEnum(I)Lcom/tencent/ysdk/framework/common/ePlatform;

    move-result-object v0

    sget-object v1, Lcom/tencent/ysdk/framework/common/ePlatform;->WX:Lcom/tencent/ysdk/framework/common/ePlatform;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->b(Lcom/tencent/ysdk/module/user/UserLoginRet;)V

    goto :goto_0
.end method

.method public OnRelationNotify(Lcom/tencent/ysdk/module/user/UserRelationRet;)V
    .locals 0

    return-void
.end method

.method public OnWakeupNotify(Lcom/tencent/ysdk/module/user/WakeupRet;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4qq"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnWakeupNotify:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/ysdk/module/user/WakeupRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget v0, p1, Lcom/tencent/ysdk/module/user/WakeupRet;->flag:I

    if-eqz v0, :cond_0

    const/16 v0, 0x7d5

    iget v1, p1, Lcom/tencent/ysdk/module/user/WakeupRet;->flag:I

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, Lcom/tencent/ysdk/module/user/UserLoginRet;

    invoke-direct {v0}, Lcom/tencent/ysdk/module/user/UserLoginRet;-><init>()V

    invoke-static {v0}, Lcom/tencent/ysdk/api/YSDKApi;->getLoginRecord(Lcom/tencent/ysdk/module/user/UserLoginRet;)I

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->a(Lcom/tencent/ysdk/module/user/UserLoginRet;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0xbbc

    iget v1, p1, Lcom/tencent/ysdk/module/user/WakeupRet;->flag:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/tencent/ysdk/module/user/WakeupRet;->flag:I

    const/16 v1, 0xbbb

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "\u7968\u636e\u65e0\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/tencent/ysdk/module/user/WakeupRet;->flag:I

    const/16 v1, 0xbb9

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/tencent/ysdk/api/YSDKApi;->logout()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "\u7968\u636e\u65e0\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/tencent/ysdk/api/YSDKApi;->logout()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "\u7968\u636e\u65e0\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 5

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    new-instance v0, Lcom/tencent/ysdk/module/user/UserLoginRet;

    invoke-direct {v0}, Lcom/tencent/ysdk/module/user/UserLoginRet;-><init>()V

    invoke-static {v0}, Lcom/tencent/ysdk/api/YSDKApi;->getLoginRecord(Lcom/tencent/ysdk/module/user/UserLoginRet;)I

    iget v1, v0, Lcom/tencent/ysdk/module/user/UserLoginRet;->platform:I

    invoke-static {v1}, Lcom/tencent/ysdk/framework/common/ePlatform;->getEnum(I)Lcom/tencent/ysdk/framework/common/ePlatform;

    move-result-object v1

    const-string v2, "KunlunProxyStubImpl4qq"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ret.platform:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/tencent/ysdk/module/user/UserLoginRet;->platform:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|LoginRet.flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/tencent/ysdk/module/user/UserLoginRet;->flag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->LOGIN_TYPE:I

    if-nez v2, :cond_2

    iget v2, v0, Lcom/tencent/ysdk/module/user/UserLoginRet;->flag:I

    if-nez v2, :cond_1

    sget-object v2, Lcom/tencent/ysdk/framework/common/ePlatform;->QQ:Lcom/tencent/ysdk/framework/common/ePlatform;

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->c(Lcom/tencent/ysdk/module/user/UserLoginRet;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/ysdk/api/YSDKApi;->logout()V

    sget-object v0, Lcom/tencent/ysdk/framework/common/ePlatform;->QQ:Lcom/tencent/ysdk/framework/common/ePlatform;

    invoke-static {v0}, Lcom/tencent/ysdk/api/YSDKApi;->login(Lcom/tencent/ysdk/framework/common/ePlatform;)V

    goto :goto_0

    :cond_2
    iget v2, v0, Lcom/tencent/ysdk/module/user/UserLoginRet;->flag:I

    if-nez v2, :cond_3

    sget-object v2, Lcom/tencent/ysdk/framework/common/ePlatform;->WX:Lcom/tencent/ysdk/framework/common/ePlatform;

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->b(Lcom/tencent/ysdk/module/user/UserLoginRet;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/ysdk/api/YSDKApi;->logout()V

    sget-object v0, Lcom/tencent/ysdk/framework/common/ePlatform;->WX:Lcom/tencent/ysdk/framework/common/ePlatform;

    invoke-static {v0}, Lcom/tencent/ysdk/api/YSDKApi;->isPlatformInstalled(Lcom/tencent/ysdk/framework/common/ePlatform;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/ysdk/framework/common/ePlatform;->WX:Lcom/tencent/ysdk/framework/common/ePlatform;

    invoke-static {v0}, Lcom/tencent/ysdk/api/YSDKApi;->login(Lcom/tencent/ysdk/framework/common/ePlatform;)V

    goto :goto_0
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 4

    invoke-static {p1}, Lcom/tencent/ysdk/api/YSDKApi;->isDifferentActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "Warning!Reduplicate game activity was detected.Activity will finish immediately."

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.qq.qqAppId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kQ:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.qq.qqAppKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.qq.wxAppId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->wxAppId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.qq.msdkKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.qq.offerId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.qq.offerId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    :goto_1
    invoke-static {p1}, Lcom/tencent/ysdk/api/YSDKApi;->onCreate(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/tencent/ysdk/api/YSDKApi;->setUserListener(Lcom/tencent/ysdk/module/user/UserListener;)V

    invoke-static {p0}, Lcom/tencent/ysdk/api/YSDKApi;->setBuglyListener(Lcom/tencent/ysdk/module/bugly/BuglyListener;)V

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "LoginPlatform is not Hall"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/ysdk/api/YSDKApi;->handleIntent(Landroid/content/Intent;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "ysdkconf.ini"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v0, "YSDK_URL"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->is:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "coin.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->jo:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v0, 0x0

    const-string v1, "finish"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kQ:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p2, p3, p4}, Lcom/tencent/ysdk/api/YSDKApi;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/ysdk/api/YSDKApi;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "LoginPlatform is not Hall"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/ysdk/api/YSDKApi;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/ysdk/api/YSDKApi;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/ysdk/api/YSDKApi;->onRestart(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/ysdk/api/YSDKApi;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/ysdk/api/YSDKApi;->onStop(Landroid/app/Activity;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4qq"

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

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;-><init>(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;Landroid/content/Context;Ljava/lang/String;IILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->show()V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/ysdk/api/YSDKApi;->logout()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :cond_1
    return-void
.end method
