.class final Lcom/kunlun/platform/android/facebook/KunlunFbSdk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->share(Landroid/os/Bundle;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic er:Lcom/kunlun/platform/android/Kunlun$DialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$2;->er:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    const-string v0, "KunlunFbSdk"

    const-string v1, "share cancel"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$2;->er:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    const/4 v1, -0x2

    const-string v2, "share cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final onError(Lcom/facebook/FacebookException;)V
    .locals 3

    const-string v0, "KunlunFbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "share_error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$2;->er:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    const/4 v1, -0x1

    const-string v2, "share failed"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p1}, Lcom/facebook/share/Sharer$Result;->getPostId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KunlunFbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "share_postId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$2;->er:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
