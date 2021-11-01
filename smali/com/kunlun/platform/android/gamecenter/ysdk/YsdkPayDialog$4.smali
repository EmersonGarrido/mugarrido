.class final Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ysdk/module/pay/PayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$4;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnPayNotify(Lcom/tencent/ysdk/module/pay/PayRet;)V
    .locals 2

    iget v0, p1, Lcom/tencent/ysdk/module/pay/PayRet;->ret:I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/tencent/ysdk/module/pay/PayRet;->payState:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$4;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->i(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$4;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$4;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/tencent/ysdk/module/pay/PayRet;->flag:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$4;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    const-string v0, "kunlun.QQPayDialog"

    const-string v1, "UnipayPlugAPI UnipayNeedLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$4;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u6001\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/ysdk/api/YSDKApi;->logout()V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "\u767b\u5f55\u6001\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$4;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$4;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        0xfa1 -> :sswitch_1
        0xfa2 -> :sswitch_2
    .end sparse-switch
.end method
