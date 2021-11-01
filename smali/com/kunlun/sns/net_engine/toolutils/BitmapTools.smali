.class public final Lcom/kunlun/sns/net_engine/toolutils/BitmapTools;
.super Ljava/lang/Object;
.source "BitmapTools.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "destWidth"    # F
    .param p2, "destHeigth"    # F

    .prologue
    const/4 v1, 0x0

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    .line 12
    if-eqz p0, :cond_0

    cmpg-float v0, p1, v2

    if-lez v0, :cond_0

    cmpl-float v0, p1, v6

    if-gez v0, :cond_0

    cmpg-float v0, p2, v2

    if-lez v0, :cond_0

    cmpl-float v0, p2, v6

    if-ltz v0, :cond_1

    .line 13
    :cond_0
    const/4 v7, 0x0

    .line 24
    :goto_0
    return-object v7

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 17
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 19
    .local v4, "h":I
    int-to-float v0, v3

    div-float v9, p1, v0

    .line 20
    .local v9, "scaleWidth":F
    int-to-float v0, v4

    div-float v8, p2, v0

    .line 21
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 22
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 23
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 24
    .local v7, "newBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method
