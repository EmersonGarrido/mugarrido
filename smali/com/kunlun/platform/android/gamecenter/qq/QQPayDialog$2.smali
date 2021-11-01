.class final Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic iH:I

.field private synthetic js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

.field private final synthetic jt:I


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;II)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    iput p2, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->iH:I

    iput p3, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->jt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    iget v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->iH:I

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->getParam(I)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "kunlun.QQPayDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":qqGetBalance:"

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

    const-string v3, "qq/getbalance.php"

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

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    const-string v1, "balance"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v3}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->c(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v3

    div-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->c(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    const-string v1, "token"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->i(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->jt:I

    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    const-string v1, "balance"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v3}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->c(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v3

    div-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->c(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    const-string v1, "token"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->b(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->c(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->b(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->jt:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->jt:I

    if-ne v0, v4, :cond_0

    :cond_2
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u67e5\u8be2\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGRefreshWXToken()V

    iget v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->jt:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->jt:I

    if-ne v1, v4, :cond_0

    :cond_4
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$2;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u67e5\u8be2\u5931\u8d25\uff0c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
