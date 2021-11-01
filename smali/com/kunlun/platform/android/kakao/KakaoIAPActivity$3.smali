.class final Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$GetOrderListener;


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

.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$3;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    iput-object p2, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$3;->p:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$3;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunDataEntity;->getData()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$3;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    const-string v2, "order_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->b(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$3;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    const-string v2, "token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->c(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$3;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->c(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$3;->p:Landroid/content/Context;

    const-string v1, "\uc2e4\ud328 \uc8fc\ubb38\uc744 \uc0dd\uc131, \ub098\uc911\uc5d0 \ub2e4\uc2dc \uc2dc\ub3c4\ud574\uc8fc\uc138\uc694"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$3;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->finish()V

    const-string v0, "kakao purchase error"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$3;->p:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uc2e4\ud328 \uc8fc\ubb38\uc744 \uc0dd\uc131:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c\ub098\uc911\uc5d0 \ub2e4\uc2dc \uc2dc\ub3c4\ud574\uc8fc\uc138\uc694"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$3;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->finish()V

    const-string v0, "kakao purchase creat order error"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_0
.end method
