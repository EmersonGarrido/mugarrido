.class Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;
.super Ljava/lang/Object;
.source "KL_DragToReFreshView.java"

# interfaces
.implements Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/widget/KL_DragToReFreshView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionEventStrategyForMove"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;


# direct methods
.method private constructor <init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;-><init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)V

    return-void
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "contentListView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$12(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v1, v2

    .line 217
    .local v0, "distanceY":F
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$3(Lcom/kunlun/sns/widget/KL_DragToReFreshView;F)V

    .line 222
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$6(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$8(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$8(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$13(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Z)V

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 237
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0
.end method
