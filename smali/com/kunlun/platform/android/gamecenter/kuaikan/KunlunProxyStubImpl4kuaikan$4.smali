.class final Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/awo/gamesdk/utils/DispatcherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hn:Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan;

.field private final synthetic hp:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan$4;->hn:Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan$4;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan$4;->hp:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "PayStatus"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "ErrorCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const-string v0, "KunlunProxyStubImpl4snail"

    const-string v1, "pay success"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan$4;->hn:Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan;->a(Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan$4;->hn:Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan;->a(Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan$4;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan$4;->hp:Landroid/app/Activity;

    const-string v1, "\u8d2d\u4e70\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan$4;->hp:Landroid/app/Activity;

    const-string v1, "\u8d2d\u4e70\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan$4;->hp:Landroid/app/Activity;

    const-string v1, "\u8d2d\u4e70\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan$4;->hp:Landroid/app/Activity;

    const-string v1, "\u8d2d\u4e70\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaikan/KunlunProxyStubImpl4kuaikan$4;->hp:Landroid/app/Activity;

    const-string v1, "\u8d2d\u4e70\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0xb -> :sswitch_4
    .end sparse-switch
.end method
