.class final Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$4;
.super Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$4;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final UnipayCallBack(Lcom/tencent/unipay/plugsdk/UnipayResponse;)V
    .locals 5

    const/4 v0, -0x1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    move v1, v0

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    const-string v2, "kunlun.QQPayDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UnipayCallBack resultCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":payState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$4;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->i(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-void

    :cond_0
    iget v1, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultCode:I

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payState:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$4;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$4;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final UnipayNeedLogin()V
    .locals 2

    const-string v0, "kunlun.QQPayDialog"

    const-string v1, "UnipayPlugAPI UnipayNeedLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$4;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u6001\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLogout()Z

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "\u767b\u5f55\u6001\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
