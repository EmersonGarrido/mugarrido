.class final Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/single/callback/IDKSDKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic eW:Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$1;->eW:Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "function_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1389

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$1;->eW:Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji;->initAds(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, 0x0

    const-string v2, "init complete"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
