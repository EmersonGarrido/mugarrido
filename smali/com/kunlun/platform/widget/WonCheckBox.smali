.class public Lcom/kunlun/platform/widget/WonCheckBox;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# instance fields
.field private ni:Lcom/kunlun/platform/widget/ScalingDrawable;

.field private nj:I

.field private nk:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/kunlun/platform/widget/WonCheckBox;->setBackgroundColor(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "btn_check"

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/kunlun/platform/widget/WonCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/kunlun/platform/widget/WonCheckBox;->nj:I

    invoke-virtual {p0}, Lcom/kunlun/platform/widget/WonCheckBox;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/kunlun/platform/widget/WonCheckBox;->nk:I

    new-instance v1, Lcom/kunlun/platform/widget/ScalingDrawable;

    invoke-direct {v1, v0, v4}, Lcom/kunlun/platform/widget/ScalingDrawable;-><init>(Landroid/graphics/drawable/Drawable;B)V

    iput-object v1, p0, Lcom/kunlun/platform/widget/WonCheckBox;->ni:Lcom/kunlun/platform/widget/ScalingDrawable;

    iget-object v0, p0, Lcom/kunlun/platform/widget/WonCheckBox;->ni:Lcom/kunlun/platform/widget/ScalingDrawable;

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/widget/WonCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101021a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method public setHeight(I)V
    .locals 3

    const/4 v2, 0x0

    int-to-float v0, p1

    iget v1, p0, Lcom/kunlun/platform/widget/WonCheckBox;->nj:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/kunlun/platform/widget/WonCheckBox;->ni:Lcom/kunlun/platform/widget/ScalingDrawable;

    invoke-virtual {v1, v0}, Lcom/kunlun/platform/widget/ScalingDrawable;->setScale(F)V

    iget v1, p0, Lcom/kunlun/platform/widget/WonCheckBox;->nk:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/kunlun/platform/widget/WonCheckBox;->setPadding(IIII)V

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setHeight(I)V

    return-void
.end method
