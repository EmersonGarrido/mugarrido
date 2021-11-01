.class final Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$1;
.super Lcom/kakao/api/KakaoResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$1;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-direct {p0, p2}, Lcom/kakao/api/KakaoResponseHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onComplete(IILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "com.kunlun.platform.android.kakao.KakaoIAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kakao.login onComplete:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$1;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$1;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->b(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)V

    goto :goto_0
.end method

.method public final onError(IILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "com.kunlun.platform.android.kakao.KakaoIAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kakao.login onError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$1;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->finish()V

    const-string v0, "message"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/kakao/api/KakaoResponseHandler;->onStart()V

    return-void
.end method
