.class public abstract Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private balance:I

.field private bx:Ljava/lang/String;

.field private by:Landroid/widget/TextView;

.field private fM:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private handler:Landroid/os/Handler;

.field private jq:I

.field private jr:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private price:I

.field private title:Landroid/widget/TextView;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 2

    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$1;-><init>(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->bx:Ljava/lang/String;

    iput p3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->price:I

    iput p4, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->jq:I

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->fM:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->balance:I

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->mContext:Landroid/content/Context;

    return-object v0
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

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;I)V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->dismiss()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->fM:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, 0x1

    const-string v2, "\u7cfb\u7edf\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getParam(I)Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "kunlun.QQPayDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doPay param:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "zoneId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resData"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v2, "isCanChange"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "saveValue"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    new-instance v5, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$4;

    invoke-direct {v5, p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$4;-><init>(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)V

    invoke-static/range {v0 .. v5}, Lcom/tencent/ysdk/api/YSDKApi;->recharge(Ljava/lang/String;Ljava/lang/String;Z[BLjava/lang/String;Lcom/tencent/ysdk/module/pay/PayListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;II)V
    .locals 2

    sget-object v0, Lcom/kunlun/platform/android/common/ThreadPool;->INSTANCE:Lcom/kunlun/platform/android/common/ThreadPool;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$2;-><init>(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;II)V

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/common/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->token:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->price:I

    return v0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;I)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kunlun/platform/android/common/ThreadPool;->INSTANCE:Lcom/kunlun/platform/android/common/ThreadPool;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$3;-><init>(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;I)V

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/common/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->jq:I

    return v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;I)V
    .locals 0

    iput p1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->balance:I

    return-void
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->token:Ljava/lang/String;

    return-object v0
.end method

.method private dip2px(I)I
    .locals 2

    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

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

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->balance:I

    return v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->jr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->by:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->fM:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    return-object v0
.end method

.method static synthetic i(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract getParam(I)Landroid/os/Bundle;
.end method

.method public onBackPressed()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u8d2d\u4e70"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->fM:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, 0x2

    const-string v2, "\u53d6\u6d88\u8d2d\u4e70"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/16 v10, 0x11

    const/16 v5, 0xf

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/high16 v7, 0x41900000    # 18.0f

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->bx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->price:I

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$5;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$5;-><init>(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->requestWindowFeature(I)Z

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x122

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->dip2px(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->dip2px(I)I

    move-result v2

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->dip2px(I)I

    move-result v3

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->dip2px(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->dip2px(I)I

    move-result v2

    invoke-static {v2, v9}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->a(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->dip2px(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->title:Landroid/widget/TextView;

    const-string v4, "\u8d2d\u4e70\u5546\u54c1"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->title:Landroid/widget/TextView;

    const-string v4, "#567ea8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->title:Landroid/widget/TextView;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "#b8b8b8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "\u5546\u54c1\u540d\u79f0\uff1a"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "#313131"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->bx:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "#b8b8b8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "\u5546\u54c1\u4ef7\u683c\uff1a"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "#313131"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->price:I

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " \u5143"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "#b8b8b8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "\u8d26\u53f7\u4f59\u989d\uff1a"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->jr:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->jr:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->jr:Landroid/widget/TextView;

    const-string v4, "#313131"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->jr:Landroid/widget/TextView;

    const/16 v4, 0x50

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->dip2px(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->jr:Landroid/widget/TextView;

    const-string v4, "0 \u5143"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->jr:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "#0000FF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "\u5237\u65b0\u4f59\u989d"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$6;

    invoke-direct {v4, p0, v3}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$6;-><init>(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->by:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->by:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->by:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->by:Landroid/widget/TextView;

    const/16 v2, 0x2a

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->dip2px(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->by:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->by:Landroid/widget/TextView;

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->by:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->dip2px(I)I

    move-result v2

    const-string v3, "#5d86b1"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->a(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->by:Landroid/widget/TextView;

    const-string v2, "\u8d2d\u4e70\u9053\u5177"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->by:Landroid/widget/TextView;

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$7;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$7;-><init>(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->by:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
