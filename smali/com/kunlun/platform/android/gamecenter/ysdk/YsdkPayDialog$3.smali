.class final Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic iH:I

.field private synthetic kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    iput p2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;->iH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    iget v1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;->iH:I

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getParam(I)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "token"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->d(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "kunlun.QQPayDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":finishOrder:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "qq/payinterfacev3.php"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    const-string v3, ""

    invoke-static {v1, v2, v0, v3}, Lcom/kunlun/platform/android/KunlunUtil;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "retcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8d2d\u4e70\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->i(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    return-void

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u4fe1\u606f\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "\u767b\u5f55\u4fe1\u606f\u5931\u6548"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->dismiss()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->h(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "\u767b\u5f55\u4fe1\u606f\u5931\u6548"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "kunlun.QQPayDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":finishOrder error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8d2d\u4e70\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8d2d\u4e70\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "retmsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
