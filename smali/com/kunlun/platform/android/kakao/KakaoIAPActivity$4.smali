.class final Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$4;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    sget-object v2, Lcom/kunlun/platform/android/kakao/KakaoManager;->clientId:Ljava/lang/String;

    sget-object v3, Lcom/kunlun/platform/android/kakao/KakaoManager;->clientSecret:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$4;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoManager;->getAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$4;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->d(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$4;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->e(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Lcom/kakao/api/Kakao;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$4;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v1}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Landroid/app/Activity;

    move-result-object v1

    iget-object v5, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$4;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v5}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->f(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$4;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v7}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->g(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/kakao/api/Kakao;->startPaymentActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
