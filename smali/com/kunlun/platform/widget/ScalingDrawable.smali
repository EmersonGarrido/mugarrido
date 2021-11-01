.class public Lcom/kunlun/platform/widget/ScalingDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "SourceFile"


# instance fields
.field private ng:F

.field private nh:F


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v2, v2}, Lcom/kunlun/platform/widget/ScalingDrawable;->setScale(FF)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/widget/ScalingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/kunlun/platform/widget/ScalingDrawable;->ng:F

    iput p2, p0, Lcom/kunlun/platform/widget/ScalingDrawable;->nh:F

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kunlun/platform/widget/ScalingDrawable;->nh:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kunlun/platform/widget/ScalingDrawable;->ng:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method final setScale(F)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/kunlun/platform/widget/ScalingDrawable;->setScale(FF)V

    return-void
.end method
