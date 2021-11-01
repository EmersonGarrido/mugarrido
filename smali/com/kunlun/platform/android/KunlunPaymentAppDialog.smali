.class public Lcom/kunlun/platform/android/KunlunPaymentAppDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field private static final bv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bw:Ljava/lang/String;

.field private bx:Ljava/lang/String;

.field private by:Landroid/widget/TextView;

.field private dialog:Landroid/app/Dialog;

.field private handler:Landroid/os/Handler;

.field private kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

.field private mContext:Landroid/content/Context;

.field private price:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bv:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bw:Ljava/lang/String;

    new-instance v0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;-><init>(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bx:Ljava/lang/String;

    iput p3, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->price:I

    sget-object v1, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bv:Ljava/util/Map;

    const-string v2, "\u652f\u4ed8\u5b9d\u652f\u4ed8"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->hasAliPay()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "alipay"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bv:Ljava/util/Map;

    const-string v2, "QQ\u94b1\u5305\u652f\u4ed8"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "qqpay"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bv:Ljava/util/Map;

    const-string v2, "\u5fae\u4fe1\u652f\u4ed8"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "weixin"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method private static a(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-lez p0, :cond_0

    int-to-float v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->by:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bw:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bw:Ljava/lang/String;

    return-object v0
.end method

.method private bi()I
    .locals 10

    const/16 v7, 0xa

    const/4 v0, 0x0

    const/4 v6, -0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dialog:Landroid/app/Dialog;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iput v0, v3, Landroid/os/Message;->what:I

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0xb4

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dip2px(I)I

    move-result v5

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dip2px(I)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dip2px(I)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sget-object v1, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bv:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v2

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bv:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lez v2, :cond_2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "#C2C2C2"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    iget-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_3

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_3
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v7, 0x2d

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dip2px(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setHeight(I)V

    const-string v7, "#567ea8"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$6;

    invoke-direct {v7, p0, v0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$6;-><init>(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v2, v1

    goto :goto_0
.end method

.method static synthetic bj()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bv:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bx:Ljava/lang/String;

    return-object v0
.end method

.method private dip2px(I)I
    .locals 2

    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->price:I

    return v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    const/4 v0, 0x2

    const-string v1, "\u53d6\u6d88\u5145\u503c"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/16 v5, 0xf

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x41900000    # 18.0f

    const/4 v8, -0x1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->price:I

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$2;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$2;-><init>(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$3;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$3;-><init>(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0, v11}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->requestWindowFeature(I)Z

    new-instance v0, Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u52a0\u8f7d\u4e2d..."

    invoke-direct {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->show()V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x122

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dip2px(I)I

    move-result v2

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dip2px(I)I

    move-result v3

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dip2px(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dip2px(I)I

    move-result v2

    invoke-static {v2, v8}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->a(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dip2px(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u6e38\u620f\u652f\u4ed8"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "#567ea8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "#b8b8b8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "\u8ba2\u5355\u91d1\u989d\uff1a"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "#313131"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u00a5"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "0.00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->price:I

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "#b8b8b8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "\u5546\u54c1\u540d\u79f0\uff1a"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "#313131"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bx:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "#b8b8b8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "\u7528\u6237\uff29\uff24\uff1a"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v5, "#313131"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->by:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->by:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->by:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->by:Landroid/widget/TextView;

    const/16 v3, 0x2a

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->by:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->by:Landroid/widget/TextView;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->by:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dip2px(I)I

    move-result v3

    const-string v4, "#5d86b1"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->a(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->by:Landroid/widget/TextView;

    new-instance v3, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$4;

    invoke-direct {v3, p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$4;-><init>(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->by:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u66f4\u591a\u652f\u4ed8\u65b9\u5f0f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "#5d86b2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$5;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$5;-><init>(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bi()I

    move-result v1

    if-le v1, v11, :cond_3

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->hide()V

    goto/16 :goto_0
.end method
