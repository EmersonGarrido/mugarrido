.class public Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private activity:Landroid/app/Activity;

.field private lT:Ljava/lang/String;

.field private lU:Lcom/kakao/api/Kakao;

.field private lV:Lcom/kakao/api/KakaoResponseHandler;

.field private orderId:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clientId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/kunlun/platform/android/kakao/KakaoManager;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "goodsId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    const-string v0, ""

    const-string v1, "\ub85c\ub4dc \uc911..."

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kakao"

    new-instance v1, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$3;-><init>(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->userId:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->bY()V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->orderId:Ljava/lang/String;

    return-void
.end method

.method private bY()V
    .locals 2

    const-string v0, "com.kunlun.platform.android.kakao.KakaoIAPActivity"

    const-string v1, "kakao.localUser"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "\ub85c\ub4dc \uc911..."

    invoke-static {p0, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$2;-><init>(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lU:Lcom/kakao/api/Kakao;

    invoke-virtual {v1, v0}, Lcom/kakao/api/Kakao;->localUser(Lcom/kakao/api/KakaoResponseHandler;)V

    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$4;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$4;-><init>(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->token:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Lcom/kakao/api/Kakao;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lU:Lcom/kakao/api/Kakao;

    return-object v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->userId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const-string v0, "com.kunlun.platform.android.kakao.KakaoIAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult requestCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d1

    if-ne p1, v0, :cond_1

    const/16 v0, 0x56

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->activity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "\ub85c\ub4dc \uc911..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "channel"

    const-string v2, "kakao"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "order_id"

    iget-object v2, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "goods_id"

    iget-object v2, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "token"

    iget-object v2, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pay_partners_order_id"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getPartenersOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->getInstance(Landroid/content/Context;)Lcom/kunlun/platform/android/KunlunOrderListUtil;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$5;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$5;-><init>(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->platFormPurchase(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->finish()V

    const-string v0, "kakao purchase not successs"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lU:Lcom/kakao/api/Kakao;

    iget-object v5, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lV:Lcom/kakao/api/KakaoResponseHandler;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kakao/api/Kakao;->onActivityResult(IILandroid/content/Intent;Landroid/app/Activity;Lcom/kakao/api/KakaoResponseHandler;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->getRequestedOrientation()I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v0, v3, :cond_1

    const/4 v0, 0x6

    :goto_0
    invoke-virtual {p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isLandscape"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-super {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "itemCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lT:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kunlun/platform/android/kakao/KakaoManager;->r(Landroid/content/Context;)Lcom/kakao/api/Kakao;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lU:Lcom/kakao/api/Kakao;

    new-instance v0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$1;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity$1;-><init>(Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lV:Lcom/kakao/api/KakaoResponseHandler;

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lU:Lcom/kakao/api/Kakao;

    if-nez v0, :cond_3

    const-string v0, "com.kunlun.platform.android.kakao.KakaoIAPActivity"

    const-string v1, "getKakao return null"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->finish()V

    const-string v0, "kakao purchase error"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lU:Lcom/kakao/api/Kakao;

    invoke-virtual {v0}, Lcom/kakao/api/Kakao;->hasTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->bY()V

    goto :goto_2

    :cond_4
    const-string v0, "com.kunlun.platform.android.kakao.KakaoIAPActivity"

    const-string v1, "kakao.login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lU:Lcom/kakao/api/Kakao;

    iget-object v1, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->lV:Lcom/kakao/api/KakaoResponseHandler;

    invoke-virtual {v0, p0, v1}, Lcom/kakao/api/Kakao;->login(Landroid/app/Activity;Lcom/kakao/api/KakaoResponseHandler;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/kakao/KakaoIAPActivity;->activity:Landroid/app/Activity;

    return-void
.end method
