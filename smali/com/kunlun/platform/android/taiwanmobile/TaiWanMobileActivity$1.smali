.class final Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$GetOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;)Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    return-object v0
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunDataEntity;->getData()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    new-instance v1, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1$1;-><init>(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u751f\u6210\u8a02\u55ae\u5931\u6557\uff0c\u8acb\u7a0d\u5f8c\u91cd\u8a66"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u751f\u6210\u8a02\u55ae\u5931\u6557"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c\u8acb\u91cd\u8a66"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->finish()V

    goto :goto_0
.end method
