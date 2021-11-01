.class final Lcom/kunlun/platform/android/weixin/WeixinSdk$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/weixin/WeixinSdk;->w(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bA:Ljava/lang/String;

.field private synthetic mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

.field private final synthetic mY:Landroid/content/SharedPreferences;

.field private final synthetic mZ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/weixin/WeixinSdk;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    iput-object p2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->bA:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->mY:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->mZ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/weixin/WeixinSdk$3;)Lcom/kunlun/platform/android/weixin/WeixinSdk;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    return-object v0
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunEntity;->getThirdPartyData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunEntity;->getThirdPartyData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->bA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->mY:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "wxToken"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->mZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->i(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v1}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->l(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/common/KunlunActivityControl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunActivity;->start(Landroid/content/Context;Lcom/kunlun/platform/android/common/KunlunActivityControl;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->h(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$3;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    iget-object v0, v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/weixin/WeixinSdk$3$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kunlun/platform/android/weixin/WeixinSdk$3$1;-><init>(Lcom/kunlun/platform/android/weixin/WeixinSdk$3;ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
