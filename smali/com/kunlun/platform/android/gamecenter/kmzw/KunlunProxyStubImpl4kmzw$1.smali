.class final Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hjr/sdkkit/framework/mw/openapi/callback/HJRSDKKitPlateformCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;)Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    return-object v0
.end method


# virtual methods
.method public final exitGameCallBack(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->f(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    :cond_0
    return-void
.end method

.method public final getOrderResultCallBack(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final initCallBack(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->e(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "kmzw init success"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->e(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "kmzw init faile"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final loginCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->a(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->b(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gamekey\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->b(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "HJR_GAMEKEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timestamp\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kmzw"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->c(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->c(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->d(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method

.method public final logoutCallBack(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->b(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "logout"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->c(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->d(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :cond_0
    return-void
.end method

.method public final payCallBack(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->a(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "kmzw onPaymentCompleted"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;->hj:Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->a(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "kmzw onPayment Faile"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
