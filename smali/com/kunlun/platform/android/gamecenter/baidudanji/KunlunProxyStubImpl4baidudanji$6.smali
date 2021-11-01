.class final Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/single/callback/IDKSDKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$6;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$6;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/duoku/platform/single/DKPlatform;->getInstance()Lcom/duoku/platform/single/DKPlatform;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/DKPlatform;->stopSuspenstionService(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$6;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
