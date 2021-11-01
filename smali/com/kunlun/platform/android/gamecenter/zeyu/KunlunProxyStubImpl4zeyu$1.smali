.class final Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zeyu/sdk/ZeyuSDKInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInit(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, 0x0

    const-string v2, "finish"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/16 v1, -0x65

    const-string v2, "finish error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_0
.end method
