.class final Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flamingo/sdk/access/IGPUserObsv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gv:Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$2;->gv:Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish(Lcom/flamingo/sdk/access/GPUserResult;)V
    .locals 6

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/flamingo/sdk/access/GPUserResult;->mErrCode:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, 0x65

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$2;->gv:Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->a(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flamingo/sdk/access/GPApiFactory;->getGPApi()Lcom/flamingo/sdk/access/IGPApi;

    move-result-object v2

    invoke-interface {v2}, Lcom/flamingo/sdk/access/IGPApi;->getLoginUin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flamingo/sdk/access/GPApiFactory;->getGPApi()Lcom/flamingo/sdk/access/IGPApi;

    move-result-object v2

    invoke-interface {v2}, Lcom/flamingo/sdk/access/IGPApi;->getLoginToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "guopan"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$2;->gv:Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->b(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$2;->gv:Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->b(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$2$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$2$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto :goto_0
.end method
