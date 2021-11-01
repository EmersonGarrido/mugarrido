.class public Lcom/kunlun/platform/android/naver/NaverIAPActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private activity:Landroid/app/Activity;

.field private mf:Lcom/naver/android/appstore/iap/NIAPHelper;

.field private mg:Z

.field mh:Lcom/naver/android/appstore/iap/NIAPHelper$GetPurchasesListener;

.field mi:Lcom/naver/android/appstore/iap/NIAPHelper$ConsumeListener;

.field private mj:Z

.field mk:Lcom/naver/android/appstore/iap/NIAPHelper$RequestPaymentListener;

.field ml:Lcom/naver/android/appstore/iap/NIAPHelper$ConsumeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mf:Lcom/naver/android/appstore/iap/NIAPHelper;

    iput-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->activity:Landroid/app/Activity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mg:Z

    new-instance v0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity$1;-><init>(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mh:Lcom/naver/android/appstore/iap/NIAPHelper$GetPurchasesListener;

    new-instance v0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$2;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity$2;-><init>(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mi:Lcom/naver/android/appstore/iap/NIAPHelper$ConsumeListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mj:Z

    new-instance v0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;-><init>(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mk:Lcom/naver/android/appstore/iap/NIAPHelper$RequestPaymentListener;

    new-instance v0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;-><init>(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->ml:Lcom/naver/android/appstore/iap/NIAPHelper$ConsumeListener;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Lcom/naver/android/appstore/iap/NIAPHelper;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mf:Lcom/naver/android/appstore/iap/NIAPHelper;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;Ljava/lang/String;Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\ncode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/naver/android/appstore/iap/NIAPHelperErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", details : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/naver/android/appstore/iap/NIAPHelperErrorType;->getErrorDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kunlunNaverIAPActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v1, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {p1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)V
    .locals 4

    iget-boolean v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mj:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mj:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "goodsId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "goodsId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    const-string v0, "naver"

    new-instance v1, Lcom/kunlun/platform/android/naver/NaverIAPActivity$6;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity$6;-><init>(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->setWaitScreen(Z)V

    return-void
.end method

.method static synthetic e(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mg:Z

    return-void
.end method

.method private setWaitScreen(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->activity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "\ub85c\ub4dc \uc911..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "kunlunNaverIAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mf:Lcom/naver/android/appstore/iap/NIAPHelper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mf:Lcom/naver/android/appstore/iap/NIAPHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/naver/android/appstore/iap/NIAPHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "kunlunNaverIAPActivity"

    const-string v1, "NIAP Helper does not handle onActivityResult"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "kunlunNaverIAPActivity"

    const-string v1, "NIAP Helper handles onActivityResult"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->getRequestedOrientation()I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v0, v3, :cond_1

    const/4 v0, 0x6

    :goto_0
    invoke-virtual {p0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isLandscape"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-super {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->activity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->setWaitScreen(Z)V

    const-string v0, "kr2"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCgqI0x4b/jcKqcGem5P/e1ArbUfwM7iUHpGgYXe1Y8dyoag7Or/mZmxelIsNCx4oTT/AFBJCBaqK9h2gnHUgZ3Km40396tq9f07IIX5efEmVlteZb5P71ne8RHeTvLgGpDzkNX1JAhftTXU+rdDDxVKYd4kDQ1ueYkOUJuVBvgXwIDAQAB"

    :goto_2
    new-instance v1, Lcom/naver/android/appstore/iap/NIAPHelper;

    iget-object v2, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/naver/android/appstore/iap/NIAPHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mf:Lcom/naver/android/appstore/iap/NIAPHelper;

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mf:Lcom/naver/android/appstore/iap/NIAPHelper;

    new-instance v1, Lcom/kunlun/platform/android/naver/NaverIAPActivity$5;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity$5;-><init>(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)V

    invoke-virtual {v0, v1}, Lcom/naver/android/appstore/iap/NIAPHelper;->initialize(Lcom/naver/android/appstore/iap/NIAPHelper$OnInitializeFinishedListener;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCERofweWhloqXdUfQSjdghxq4IoUoj1nrzINx1DFDKUkR2+yYjZCummJJUlcEqBioSb+FPyDt6J2uleY2soJaasJw/vU6grK/V8lj8LblyYqQ+YQtUFyk7UU4/qzXwZ9ulmHrCgQn95eMKPsCVI5LceWCtw3mGAA8HPtIPm+4YCQIDAQAB"

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mf:Lcom/naver/android/appstore/iap/NIAPHelper;

    if-eqz v0, :cond_1

    const-string v0, "kunlunNaverIAPActivity"

    const-string v1, "release helper"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mf:Lcom/naver/android/appstore/iap/NIAPHelper;

    invoke-virtual {v0}, Lcom/naver/android/appstore/iap/NIAPHelper;->terminate()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mf:Lcom/naver/android/appstore/iap/NIAPHelper;

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->setWaitScreen(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kunlun/platform/android/common/KunlunActivityUtil;->removeActivity(Landroid/app/Activity;)Landroid/app/Activity;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
