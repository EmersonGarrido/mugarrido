.class final Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$GetOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP;->purchase(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mt:Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP;

.field private final synthetic mu:Ljava/lang/String;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;->mt:Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP;

    iput-object p2, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;->mu:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;)Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;->mt:Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP;

    return-object v0
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
    .locals 5

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

    iget-object v1, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1$1;

    iget-object v3, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;->mu:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1$1;-><init>(Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u751f\u6210\u8a02\u55ae\u5931\u6557\uff0c\u8acb\u7a0d\u5f8c\u91cd\u8a66"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v1, "\u751f\u6210\u8a02\u55ae\u5931\u6557\uff0c\u8acb\u7a0d\u5f8c\u91cd\u8a66"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0
.end method
