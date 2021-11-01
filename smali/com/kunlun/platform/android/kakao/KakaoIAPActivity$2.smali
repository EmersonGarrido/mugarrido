.class final Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;
.super Lcom/kakao/api/KakaoResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->bY()V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-direct {p0, p2}, Lcom/kakao/api/KakaoResponseHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;)Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    return-object v0
.end method


# virtual methods
.method public final onComplete(IILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "com.kunlun.platform.android.kakao.KakaoIAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kakao.localUser onComplete:"

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

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    const-string v1, "user_id"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    iget-object v1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v1}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final onError(IILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "com.kunlun.platform.android.kakao.KakaoIAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kakao.localUser onError:"

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

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    const/16 v0, -0x190

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->finish()V

    const-string v0, "kakao.localUser onError"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;->lW:Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;

    invoke-static {v1}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\uc0ac\uc6a9\uc790 \uc815\ubcf4\ub97c \ubd88\ub7ec\uc624\ub294\ub370 \uc2e4\ud328\ud588\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc2dc\ub3c4\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\ud655\uc778"

    new-instance v2, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2$1;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2$1;-><init>(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\ucde8\uc18c"

    new-instance v2, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2$2;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2$2;-><init>(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
