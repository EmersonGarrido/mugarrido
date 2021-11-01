.class final Lcom/kunlun/platform/android/facebook/FBActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/AccessToken$AccessTokenRefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/facebook/FBActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ek:Lcom/kunlun/platform/android/facebook/FBActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/facebook/FBActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/facebook/FBActivity$2;->ek:Lcom/kunlun/platform/android/facebook/FBActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity$2;->ek:Lcom/kunlun/platform/android/facebook/FBActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/facebook/FBActivity;->d(Lcom/kunlun/platform/android/facebook/FBActivity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity$2;->ek:Lcom/kunlun/platform/android/facebook/FBActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/facebook/FBActivity;->finish()V

    return-void
.end method

.method public final OnTokenRefreshed(Lcom/facebook/AccessToken;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity$2;->ek:Lcom/kunlun/platform/android/facebook/FBActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/facebook/FBActivity;->c(Lcom/kunlun/platform/android/facebook/FBActivity;)Lcom/kunlun/platform/android/Kunlun$DialogListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity$2;->ek:Lcom/kunlun/platform/android/facebook/FBActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/facebook/FBActivity;->finish()V

    return-void
.end method
