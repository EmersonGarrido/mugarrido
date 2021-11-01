.class Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$2;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->initView(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 219
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$7()I

    move-result v1

    const v2, 0x1869f

    if-ne v1, v2, :cond_0

    .line 223
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 224
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$9()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 225
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$20(I)V

    .line 227
    .end local v0    # "frame":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method
