.class final Lcom/kunlun/platform/android/google/GoogleSdk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/google/GoogleSdk;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic lE:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GoogleSdk$1;->lE:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "kunlun.GoogleSdk"

    const-string v1, "GoogleApiClient onConnected"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$1;->lE:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$1;->lE:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    const-string v0, "kunlun.GoogleSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleApiClient onConnectionSuspended:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
