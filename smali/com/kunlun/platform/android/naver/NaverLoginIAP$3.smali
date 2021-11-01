.class final Lcom/kunlun/platform/android/naver/NaverLoginIAP$3;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/naver/NaverLoginIAP;->naverLogoutAndDeleteToken(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/naver/NaverLoginIAP$3;->p:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->bZ()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/naver/NaverLoginIAP$3;->p:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/nhn/android/naverlogin/OAuthLogin;->logoutAndDeleteToken(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->ca()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    const-string v2, "\ub85c\ub4dc \uc911..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
