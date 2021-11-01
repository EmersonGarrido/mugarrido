.class final Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bsgamesdk/android/callbacklistener/CallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x65

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onFailed(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;->getErrorCode()I

    move-result v0

    const/16 v1, 0x1771

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v1, -0x1

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x65

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method

.method public final onSuccess(Landroid/os/Bundle;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->b(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "merchantId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->c(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serverId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->d(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "version\":\"1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "access_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bili"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method
