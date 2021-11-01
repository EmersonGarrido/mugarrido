.class public Lcom/kunlun/platform/widget/KunlunDialog;
.super Lcom/kunlun/platform/widget/BaseDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected array:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field protected dialog:Lcom/kunlun/platform/widget/KunlunDialog;

.field protected layout:[Landroid/widget/LinearLayout;

.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Lcom/kunlun/platform/widget/BaseDialog;-><init>(Landroid/content/Context;I)V

    iput-object p0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->dialog:Lcom/kunlun/platform/widget/KunlunDialog;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->layout:[Landroid/widget/LinearLayout;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->array:Landroid/util/SparseArray;

    new-instance v0, Lcom/kunlun/platform/widget/KunlunDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kunlun/platform/widget/KunlunDialog$1;-><init>(Lcom/kunlun/platform/widget/KunlunDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/widget/KunlunDialog;->requestWindowFeature(I)Z

    iput-object p1, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/widget/KunlunDialog;)V
    .locals 11

    const/16 v10, 0xc

    const/4 v9, 0x3

    const/4 v8, -0x2

    const/4 v7, -0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    const/16 v5, 0x12c

    invoke-static {v4, v5}, Lcom/kunlun/platform/widget/ViewUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    const/16 v4, 0xf

    invoke-static {v3, v4}, Lcom/kunlun/platform/widget/ViewUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/kunlun/platform/widget/ViewUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    const/16 v6, 0xf

    invoke-static {v5, v6}, Lcom/kunlun/platform/widget/ViewUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    invoke-static {v3, v9}, Lcom/kunlun/platform/widget/ViewUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v2, v3, v1, v1, v7}, Lcom/kunlun/platform/widget/ViewUtil;->setBackground(Landroid/view/View;IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move v0, v1

    :goto_0
    if-lt v0, v9, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/kunlun/platform/widget/KunlunDialog;->layout:[Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v0

    iget-object v4, p0, Lcom/kunlun/platform/widget/KunlunDialog;->layout:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/kunlun/platform/widget/KunlunDialog;->layout:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v0

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/kunlun/platform/widget/KunlunDialog;->layout:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    invoke-static {v5, v10}, Lcom/kunlun/platform/widget/ViewUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v1, v1, v1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v4, p0, Lcom/kunlun/platform/widget/KunlunDialog;->layout:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/kunlun/platform/widget/KunlunDialog;->layout:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/kunlun/platform/widget/KunlunDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public setBottomView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 10

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    if-lez v0, :cond_1

    mul-int/lit8 v2, v0, 0xa

    rsub-int v2, v2, 0x118

    div-int v0, v2, v0

    :goto_1
    invoke-static {v1, v0}, Lcom/kunlun/platform/widget/ViewUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    const/4 v0, 0x3

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    array-length v7, v5

    move v2, v6

    move v0, v6

    :goto_2
    if-lt v2, v7, :cond_2

    invoke-virtual {p0, v3}, Lcom/kunlun/platform/widget/KunlunDialog;->setBottomView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    const-string v2, "#5d86b1"

    const/16 v3, 0x12

    const/4 v4, -0x2

    const/16 v5, 0x2a

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/kunlun/platform/widget/ViewUtil;->getTextButton(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/widget/KunlunDialog$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/kunlun/platform/widget/KunlunDialog$2;-><init>(Lcom/kunlun/platform/widget/KunlunDialog;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/kunlun/platform/widget/KunlunDialog;->array:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_1

    :cond_2
    aget v6, v5, v2

    iget-object v1, p0, Lcom/kunlun/platform/widget/KunlunDialog;->array:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setWidth(I)V

    const/4 v0, 0x1

    if-le v1, v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lcom/kunlun/platform/widget/ViewUtil;->dip2px(Landroid/content/Context;I)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_4
    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v0, v1

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_2

    :array_0
    .array-data 4
        -0x1
        -0x3
        -0x2
    .end array-data
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    const-string v1, "#537fa8"

    const/16 v2, 0x12

    invoke-static {v0, p1, v1, v2}, Lcom/kunlun/platform/widget/ViewUtil;->getTextView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/widget/KunlunDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/kunlun/platform/widget/KunlunDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/kunlun/platform/widget/KunlunDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/kunlun/platform/widget/KunlunDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mContext:Landroid/content/Context;

    const-string v1, "#567ea8"

    const/16 v2, 0x18

    invoke-static {v0, p1, v1, v2}, Lcom/kunlun/platform/widget/ViewUtil;->getTextView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/widget/KunlunDialog;->setTitleView(Landroid/view/View;)V

    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/kunlun/platform/widget/KunlunDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
