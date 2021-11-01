.class public Lcom/kunlun/platform/widget/KunlunProgressDialog;
.super Lcom/kunlun/platform/widget/BaseDialog;
.source "SourceFile"


# instance fields
.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Lcom/kunlun/platform/widget/BaseDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/kunlun/platform/widget/KunlunProgressDialog;->msg:Ljava/lang/String;

    return-void
.end method

.method private dip2px(I)I
    .locals 2

    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->getContext()Landroid/content/Context;

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


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/16 v9, 0x11

    const/4 v3, -0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    invoke-super {p0, p1}, Lcom/kunlun/platform/widget/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->requestWindowFeature(I)Z

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v6}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dip2px(I)I

    move-result v2

    invoke-direct {p0, v6}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dip2px(I)I

    move-result v3

    invoke-direct {p0, v6}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dip2px(I)I

    move-result v4

    invoke-direct {p0, v6}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dip2px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v3, "#424242"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dip2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dip2px(I)I

    move-result v4

    const/16 v5, 0x14

    invoke-direct {p0, v5}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dip2px(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, ""

    iget-object v3, p0, Lcom/kunlun/platform/widget/KunlunProgressDialog;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/kunlun/platform/widget/KunlunProgressDialog;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-direct {p0, v6}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method
