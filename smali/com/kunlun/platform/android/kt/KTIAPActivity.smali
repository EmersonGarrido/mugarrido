.class public Lcom/kunlun/platform/android/kt/KTIAPActivity;
.super Lcom/kt/olleh/inapp/KTInAppActivity;
.source "SourceFile"


# instance fields
.field private lZ:Lcom/kunlun/platform/android/kt/KTIAPActivity;

.field private ma:Ljava/lang/String;

.field private mb:Ljava/lang/String;

.field private mc:Lcom/kt/olleh/inapp/OnInAppListener;

.field private orderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->ma:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->mb:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->orderId:Ljava/lang/String;

    new-instance v0, Lcom/kunlun/platform/android/kt/KTIAPActivity$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/kt/KTIAPActivity$1;-><init>(Lcom/kunlun/platform/android/kt/KTIAPActivity;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->mc:Lcom/kt/olleh/inapp/OnInAppListener;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/kt/KTIAPActivity;)Lcom/kunlun/platform/android/kt/KTIAPActivity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->lZ:Lcom/kunlun/platform/android/kt/KTIAPActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/kt/KTIAPActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->orderId:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/kt/KTIAPActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/kt/KTIAPActivity;)V
    .locals 1

    new-instance v0, Lcom/kunlun/platform/android/kt/KTIAPActivity$3;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/kt/KTIAPActivity$3;-><init>(Lcom/kunlun/platform/android/kt/KTIAPActivity;)V

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/kt/KTIAPActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/kunlun/platform/android/kt/KTIAPActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->ma:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/kt/KTIAPActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->mb:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ShowToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/KTInAppActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->lZ:Lcom/kunlun/platform/android/kt/KTIAPActivity;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/kt/KTIAPActivity;->getRequestedOrientation()I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v0, v3, :cond_1

    const/4 v0, 0x6

    :goto_0
    invoke-virtual {p0}, Lcom/kunlun/platform/android/kt/KTIAPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isLandscape"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-super {p0, v0}, Lcom/kt/olleh/inapp/KTInAppActivity;->setRequestedOrientation(I)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/kunlun/platform/android/kt/KTIAPActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/kunlun/platform/android/kt/KTIAPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/kt/KTIAPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->ma:Ljava/lang/String;

    const-string v1, "di_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->mb:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->mc:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/kt/KTIAPActivity;->init(Lcom/kt/olleh/inapp/OnInAppListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->ma:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity;->mb:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appId\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "goodsId\":\""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    const-string v0, ""

    const-string v1, "\ub85c\ub4dc \uc911..."

    invoke-static {p0, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kt"

    new-instance v1, Lcom/kunlun/platform/android/kt/KTIAPActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/kunlun/platform/android/kt/KTIAPActivity$2;-><init>(Lcom/kunlun/platform/android/kt/KTIAPActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
