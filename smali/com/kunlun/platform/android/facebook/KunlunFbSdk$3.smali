.class final Lcom/kunlun/platform/android/facebook/KunlunFbSdk$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->invite(Landroid/os/Bundle;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$FbInviteListener;)V
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
        "Lcom/facebook/share/widget/GameRequestDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic es:Lcom/kunlun/platform/android/Kunlun$FbInviteListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$FbInviteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$3;->es:Lcom/kunlun/platform/android/Kunlun$FbInviteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$3;->es:Lcom/kunlun/platform/android/Kunlun$FbInviteListener;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$FbInviteListener;->onCancel()V

    return-void
.end method

.method public final onError(Lcom/facebook/FacebookException;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$3;->es:Lcom/kunlun/platform/android/Kunlun$FbInviteListener;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$FbInviteListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/facebook/share/widget/GameRequestDialog$Result;

    invoke-virtual {p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;->getRequestRecipients()Ljava/util/List;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "requst_id"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "request_recipients"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$3;->es:Lcom/kunlun/platform/android/Kunlun$FbInviteListener;

    invoke-interface {v0, v2}, Lcom/kunlun/platform/android/Kunlun$FbInviteListener;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
