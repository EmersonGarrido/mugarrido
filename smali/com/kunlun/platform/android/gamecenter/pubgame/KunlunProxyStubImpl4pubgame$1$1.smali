.class final Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jc:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1$1;->jc:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1$1;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1$1;->val$itemName:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "kunlunOrderid"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1$1;->val$orderId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "productId"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1$1;->val$itemName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "level"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1$1;->jc:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1;->a(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1;)Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->c(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "roleId"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1$1;->jc:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1;->a(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1;)Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->d(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1$1;->val$activity:Landroid/app/Activity;

    const/16 v2, 0x65

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/pubgame/sdk/base/dex/PubgameSDK;->purchaseWithExtraInfo(Landroid/app/Activity;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
