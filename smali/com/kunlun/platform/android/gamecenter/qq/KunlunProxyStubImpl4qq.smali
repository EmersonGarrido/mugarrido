.class public Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private iq:Lcom/tencent/msdk/api/MsdkBaseInfo;

.field private ir:Ljava/lang/String;

.field private is:Ljava/lang/String;

.field private it:Ljava/lang/String;

.field private iu:Ljava/lang/String;

.field private iw:Z

.field private ix:Z

.field private iy:Lcom/tencent/msdk/api/WGPlatformObserver;

.field private jo:[B

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private openId:Ljava/lang/String;

.field private pf:Ljava/lang/String;

.field private pfKey:Ljava/lang/String;

.field private qqAccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->openId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->qqAccessToken:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->ir:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->pf:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->pfKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->is:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->jo:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->it:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iu:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->ix:Z

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;-><init>(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iy:Lcom/tencent/msdk/api/WGPlatformObserver;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;Lcom/tencent/msdk/api/LoginRet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->b(Lcom/tencent/msdk/api/LoginRet;)V

    return-void
.end method

.method private a(Lcom/tencent/msdk/api/LoginRet;)V
    .locals 3

    iget-object v0, p1, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->openId:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->pf:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->pfKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->qqAccessToken:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->ir:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->it:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iu:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/api/TokenRet;

    iget v2, v0, Lcom/tencent/msdk/api/TokenRet;->type:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->qqAccessToken:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v2, v0, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    iput-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->ir:Ljava/lang/String;

    :pswitch_3
    iget-object v0, v0, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->it:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v0, v0, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iu:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;Lcom/tencent/msdk/api/LoginRet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->c(Lcom/tencent/msdk/api/LoginRet;)V

    return-void
.end method

.method private b(Lcom/tencent/msdk/api/LoginRet;)V
    .locals 5

    const/4 v3, 0x0

    const-string v0, "KunlunProxyStubImpl4qq"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "qqLogin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLogout()Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x67

    const-string v2, "\u6388\u6743\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u6388\u6743"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mActivity:Landroid/app/Activity;

    const-string v1, "\u6388\u6743\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->a(Lcom/tencent/msdk/api/LoginRet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iq:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v2, v2, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->openId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openkey\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->qqAccessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msdkUrl\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->is:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "channelid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGGetChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerChannelId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGGetRegisterChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qq"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$2;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$2;-><init>(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x64

    const-string v2, "\u6388\u6743\u5931\u8d25\uff0cQQ\u6ca1\u6709\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u65b0\u7248"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x65

    const-string v2, "\u767b\u5f55\u6388\u6743\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x66

    const-string v2, "\u7f51\u7edc\u9519\u8bef\uff0c\u6388\u6743\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u6388\u6743"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

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

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)V
    .locals 3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "openid"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->openId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "openkey"

    sget v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->LOGIN_TYPE:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->qqAccessToken:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appid"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iq:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v2, v2, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pf"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->pf:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->userAwardParam:Landroid/os/Bundle;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->it:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;Lcom/tencent/msdk/api/LoginRet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->a(Lcom/tencent/msdk/api/LoginRet;)V

    return-void
.end method

.method private c(Lcom/tencent/msdk/api/LoginRet;)V
    .locals 5

    const/4 v3, 0x0

    const-string v0, "KunlunProxyStubImpl4qq"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wxLogin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLogout()Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x67

    const-string v2, "\u6388\u6743\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u6388\u6743"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mActivity:Landroid/app/Activity;

    const-string v1, "\u6388\u6743\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->a(Lcom/tencent/msdk/api/LoginRet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iq:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v2, v2, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->openId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wxAccessToken\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->it:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wxRefreshToken\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msdkUrl\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->is:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "channelid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGGetChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerChannelId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGGetRegisterChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wx"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$3;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$3;-><init>(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x64

    const-string v2, "\u6388\u6743\u5931\u8d25\uff0c\u5fae\u4fe1\u6ca1\u6709\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u65b0\u7248"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x65

    const-string v2, "\u767b\u5f55\u6388\u6743\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "wxLogin:eFlag_WX_RefreshTokenSucc"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->a(Lcom/tencent/msdk/api/LoginRet;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "wxLogin:eFlag_WX_RefreshTokenFail"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGRefreshWXToken()V

    :sswitch_6
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x66

    const-string v2, "\u7f51\u7edc\u9519\u8bef\uff0c\u6388\u6743\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u6388\u6743"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_1
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_2
        0x7d4 -> :sswitch_6
        0x7d5 -> :sswitch_3
        0x7d6 -> :sswitch_4
        0x7d7 -> :sswitch_5
        0x7d8 -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-void
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/tencent/msdk/api/MsdkBaseInfo;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iq:Lcom/tencent/msdk/api/MsdkBaseInfo;

    return-object v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->openId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->ir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->it:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->pf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->pfKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)[B
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->jo:[B

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 5

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->ix:Z

    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I

    iget v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-static {v1}, Lcom/tencent/msdk/consts/EPlatform;->getEnum(I)Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v1

    const-string v2, "KunlunProxyStubImpl4qq"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ret.platform:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|LoginRet.flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->LOGIN_TYPE:I

    if-nez v2, :cond_1

    iget v2, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-nez v2, :cond_0

    sget-object v2, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->b(Lcom/tencent/msdk/api/LoginRet;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLogout()Z

    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-nez v2, :cond_2

    sget-object v2, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->c(Lcom/tencent/msdk/api/LoginRet;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLogout()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->ix:Z

    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGIsPlatformInstalled(Lcom/tencent/msdk/consts/EPlatform;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V

    goto :goto_0

    :cond_3
    const-string v0, "KunlunProxyStubImpl4qq"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isWGQrCodeLogin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->ix:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGQrCodeLogin(Lcom/tencent/msdk/consts/EPlatform;)V

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
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/msdk/api/WGPlatform;->IsDifferentActivity(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.notClearInfo"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/msdk/api/MsdkBaseInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/api/MsdkBaseInfo;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iq:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iq:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.qq.qqAppId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iq:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.qq.qqAppKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iq:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.qq.wxAppId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iq:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.qq.msdkKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->msdkKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iq:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "Kunlun.qq.offerId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "Kunlun.qq.offerId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v1, Lcom/tencent/msdk/api/MsdkBaseInfo;->offerId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iq:Lcom/tencent/msdk/api/MsdkBaseInfo;

    invoke-static {p1, v0}, Lcom/tencent/msdk/api/WGPlatform;->Initialized(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V

    const v0, 0xffffff

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGSetPermission(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iy:Lcom/tencent/msdk/api/WGPlatformObserver;

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGSetObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->handleCallback(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->wakeUpFromHall(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "LoginPlatform is Hall"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "msdkconfig.ini"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v0, "MSDK_URL"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->is:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->jo:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iput-boolean v4, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iw:Z

    const/4 v0, 0x0

    const-string v1, "finish"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iq:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v0, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "LoginPlatform is not Hall"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->handleCallback(Landroid/content/Intent;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4qq"

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

    invoke-static {p2, p3, p4}, Lcom/tencent/msdk/api/WGPlatform;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/msdk/api/WGPlatform;->onDestory(Landroid/app/Activity;)V

    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/msdk/api/WGPlatform;->wakeUpFromHall(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "LoginPlatform is Hall"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "LoginPlatform is not Hall"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/msdk/api/WGPlatform;->handleCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onPause()V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onRestart()V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onResume()V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iw:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->iw:Z

    const-string v0, ""

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_None:Lcom/tencent/msdk/consts/EPlatform;

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V

    :cond_0
    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->ix:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->ix:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$5;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$5;-><init>(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onStop()V

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

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;-><init>(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;Landroid/content/Context;Ljava/lang/String;IILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->show()V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4qq"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLogout()Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :cond_1
    return-void
.end method
