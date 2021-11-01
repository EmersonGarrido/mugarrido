.class public Lcom/kunlun/platform/android/google/GooglePlaySdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;
    }
.end annotation


# static fields
.field private static final ll:[Ljava/lang/String;

.field private static final lm:[Ljava/lang/String;

.field private static final ln:Lcom/kunlun/platform/android/google/GooglePlaySdk;


# instance fields
.field private lo:Z

.field private lp:Landroid/content/ServiceConnection;

.field private lq:Lcom/android/vending/billing/IInAppBillingService;

.field private lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener",
            "<",
            "Lcom/kunlun/platform/android/google/Purchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0:OK"

    aput-object v1, v0, v3

    const-string v1, "1:User Canceled"

    aput-object v1, v0, v4

    const-string v1, "2:Unknown"

    aput-object v1, v0, v5

    const-string v1, "3:Billing Unavailable"

    aput-object v1, v0, v6

    const-string v1, "4:Item unavailable"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5:Developer Error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6:Error"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7:Item Already Owned"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8:Item not owned"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->ll:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0:OK/"

    aput-object v1, v0, v3

    const-string v1, "-1001:Remote exception during initialization"

    aput-object v1, v0, v4

    const-string v1, "-1002:Bad response received"

    aput-object v1, v0, v5

    const-string v1, "-1003:Purchase signature verification failed"

    aput-object v1, v0, v6

    const-string v1, "-1004:Send intent failed"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "-1005:User cancelled"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-1006:Unknown purchase response"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-1007:Missing token"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "-1008:Unknown error"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "-1009:Subscriptions not available"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "-1010:Invalid consumption attempt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lm:[Ljava/lang/String;

    new-instance v0, Lcom/kunlun/platform/android/google/GooglePlaySdk;

    invoke-direct {v0}, Lcom/kunlun/platform/android/google/GooglePlaySdk;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->ln:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lo:Z

    iput-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lq:Lcom/android/vending/billing/IInAppBillingService;

    iput-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lp:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/kunlun/platform/android/google/Purchase;Z)I
    .locals 5

    const/4 v0, 0x3

    const-string v1, "kunlun.GooglePlaySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "consume:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lp:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lq:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lq:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kunlun/platform/android/google/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "channel"

    const-string v3, "googleplay"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "signture_data"

    invoke-virtual {p2}, Lcom/kunlun/platform/android/google/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "signture"

    invoke-virtual {p2}, Lcom/kunlun/platform/android/google/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "goods_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/kunlun/platform/android/google/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "___"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/kunlun/platform/android/google/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "order_id"

    invoke-virtual {p2}, Lcom/kunlun/platform/android/google/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pay_partners_order_id"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getPartenersOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->getInstance(Landroid/content/Context;)Lcom/kunlun/platform/android/KunlunOrderListUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->platFormPurchase(Landroid/os/Bundle;)Ljava/lang/String;

    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->getInstance(Landroid/content/Context;)Lcom/kunlun/platform/android/KunlunOrderListUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->doUnFinishedPurchase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x6

    const-string v2, "kunlun.GooglePlaySdk"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/google/GooglePlaySdk;Landroid/app/Activity;Lcom/kunlun/platform/android/google/Purchase;Z)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Landroid/app/Activity;Lcom/kunlun/platform/android/google/Purchase;Z)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/google/GooglePlaySdk;Landroid/app/Activity;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->f(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/platform/android/google/Purchase;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "kunlun.GooglePlaySdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bindService:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lo:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/kunlun/platform/android/google/GooglePlaySdk$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/google/GooglePlaySdk$2;-><init>(Lcom/kunlun/platform/android/google/GooglePlaySdk;Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V

    iput-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lp:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lo:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    new-instance v0, Lcom/kunlun/platform/android/google/GooglePlaySdk$3;

    invoke-direct {v0, p2}, Lcom/kunlun/platform/android/google/GooglePlaySdk$3;-><init>(Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/google/GooglePlaySdk$3;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lq:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->b(Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;ILjava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;-><init>(ILcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/google/GooglePlaySdk;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lo:Z

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/google/GooglePlaySdk;Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->b(Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/google/GooglePlaySdk;Lcom/android/vending/billing/IInAppBillingService;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lq:Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/google/GooglePlaySdk;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/google/GooglePlaySdk;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lq:Lcom/android/vending/billing/IInAppBillingService;

    return-object v0
.end method

.method private b(Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/platform/android/google/Purchase;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;-><init>(Lcom/kunlun/platform/android/google/GooglePlaySdk;Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;->start()V

    return-void
.end method

.method static synthetic bW()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lm:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bX()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->ll:[Ljava/lang/String;

    return-object v0
.end method

.method private f(Landroid/app/Activity;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/platform/android/google/Purchase;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :cond_0
    :try_start_0
    const-string v1, "kunlun.GooglePlaySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lq:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inapp"

    invoke-interface {v1, v2, v4, v5, v0}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    :cond_1
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return-object v3

    :cond_2
    new-instance v7, Lcom/kunlun/platform/android/google/Purchase;

    const-string v8, "inapp"

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v7, v8, v0, v1}, Lcom/kunlun/platform/android/google/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "kunlun.GooglePlaySdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getInstance()Lcom/kunlun/platform/android/google/GooglePlaySdk;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->ln:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    return-object v0
.end method


# virtual methods
.method public consumePurchase(Landroid/app/Activity;Lcom/kunlun/platform/android/google/Purchase;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kunlun/platform/android/google/Purchase;",
            "Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener",
            "<",
            "Lcom/kunlun/platform/android/google/Purchase;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;-><init>(Lcom/kunlun/platform/android/google/GooglePlaySdk;Landroid/app/Activity;Lcom/kunlun/platform/android/google/Purchase;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;->start()V

    return-void
.end method

.method public getPromotions(Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/platform/android/google/Purchase;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/kunlun/platform/android/google/GooglePlaySdk$5;

    invoke-direct {v0, p0, p2}, Lcom/kunlun/platform/android/google/GooglePlaySdk$5;-><init>(Lcom/kunlun/platform/android/google/GooglePlaySdk;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V

    invoke-direct {p0, p1, v0}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V

    return-void
.end method

.method public getSkuDetails(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/kunlun/platform/android/google/GooglePlaySdk$8;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/kunlun/platform/android/google/GooglePlaySdk$8;-><init>(Lcom/kunlun/platform/android/google/GooglePlaySdk;Ljava/util/ArrayList;Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V

    invoke-direct {p0, p1, v0}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x6

    const v0, 0xdbf34

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    :try_start_0
    const-string v0, "INAPP_PURCHASE_DATA"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    new-instance v2, Lcom/kunlun/platform/android/google/Purchase;

    const-string v3, "inapp"

    invoke-direct {v2, v3, v0, v1}, Lcom/kunlun/platform/android/google/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/kunlun/platform/android/google/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    invoke-virtual {p0, p1, v2, v0}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->consumePurchase(Landroid/app/Activity;Lcom/kunlun/platform/android/google/Purchase;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "kunlun.GooglePlaySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    sget-object v1, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lm:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-interface {v0, v5, v1, v6}, Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;->onFinished(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    const/4 v1, 0x0

    sget-object v3, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lm:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, v3, v2}, Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;->onFinished(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    const/4 v1, 0x6

    sget-object v2, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lm:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;->onFinished(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    const/16 v1, -0x3ed

    sget-object v2, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lm:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2, v6}, Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;->onFinished(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    sget-object v1, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lm:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-interface {v0, v5, v1, v6}, Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;->onFinished(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lp:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lp:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lo:Z

    iput-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lq:Lcom/android/vending/billing/IInAppBillingService;

    iput-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lp:Landroid/content/ServiceConnection;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V

    :cond_0
    return-void
.end method

.method protected purchase(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    const-string v0, ""

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->loading()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk;->lr:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    new-instance v0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;-><init>(Lcom/kunlun/platform/android/google/GooglePlaySdk;Ljava/lang/String;ILandroid/app/Activity;)V

    invoke-direct {p0, p1, v0}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V

    return-void
.end method
