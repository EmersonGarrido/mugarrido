.class final Lcom/kunlun/platform/android/google/GoogleSdk$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/google/GoogleSdk;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bG:Landroid/content/Intent;

.field private final synthetic lE:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/Context;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GoogleSdk$3;->bG:Landroid/content/Intent;

    iput-object p2, p0, Lcom/kunlun/platform/android/google/GoogleSdk$3;->p:Landroid/content/Context;

    iput-object p3, p0, Lcom/kunlun/platform/android/google/GoogleSdk$3;->lE:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    const-string v0, "kunlun.GoogleSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleApiClient onConnectionFailed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/kunlun/platform/android/google/GoogleSdk;->lC:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$3;->bG:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$3;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GoogleSdk$3;->bG:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$3;->lE:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$3;->lE:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    const/4 v1, 0x1

    const-string v2, "onConnectionFailed"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
