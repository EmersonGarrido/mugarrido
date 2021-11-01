.class Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;
.super Landroid/widget/GridView;
.source "KL_DragToReFreshView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/widget/KL_DragToReFreshView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragToFreshGridView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;


# direct methods
.method public constructor <init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    .line 102
    invoke-direct {p0, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-static {p1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$0(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;

    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;-><init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;)V

    invoke-virtual {v0, p0, p1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 131
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$3(Lcom/kunlun/sns/widget/KL_DragToReFreshView;F)V

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v0, p4}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$2(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Z)V

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridView;->onOverScrolled(IIZZ)V

    .line 121
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$1(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
