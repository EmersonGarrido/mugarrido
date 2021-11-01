.class Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;
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
    name = "MotionEventStrategyForDown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;


# direct methods
.method private constructor <init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;-><init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)V

    return-void
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "contentListView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kunlun/sns/R$id;->firstY:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kunlun/sns/R$id;->firstY:I

    iget-object v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kunlun/sns/R$id;->firstY:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kunlun/sns/R$id;->firstY:I

    iget-object v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$3(Lcom/kunlun/sns/widget/KL_DragToReFreshView;F)V

    .line 160
    return-void
.end method
