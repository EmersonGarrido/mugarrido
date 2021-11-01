.class Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;
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
    name = "MotionEventStrategyForUp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;


# direct methods
.method private constructor <init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;-><init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)V

    return-void
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "contentListView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "hasHeadViewMoved":Z
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/kunlun/sns/R$id;->firstY:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 172
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v3

    sget v5, Lcom/kunlun/sns/R$id;->firstY:I

    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v2, v4, v3

    .line 173
    .local v2, "totalDistance":F
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 178
    .end local v2    # "totalDistance":F
    :cond_0
    const/4 v0, 0x0

    .line 179
    .local v0, "hasFootViewMoved":Z
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/kunlun/sns/R$id;->firstY:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/kunlun/sns/R$id;->firstY:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v4}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    sub-float v2, v3, v4

    .line 181
    .restart local v2    # "totalDistance":F
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    .line 182
    const/4 v0, 0x1

    .line 186
    .end local v2    # "totalDistance":F
    :cond_1
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$6(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$7(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$8(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v1, :cond_2

    if-eqz v0, :cond_7

    .line 187
    :cond_2
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$9(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Z)V

    .line 189
    if-eqz v1, :cond_5

    .line 190
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$10(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 191
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$10(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;->onRefresh()V

    .line 206
    :cond_3
    :goto_0
    return-void

    .line 193
    :cond_4
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-virtual {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->taskFinished()V

    goto :goto_0

    .line 195
    :cond_5
    if-eqz v0, :cond_3

    .line 196
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$11(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 197
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$11(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;->onRefresh()V

    goto :goto_0

    .line 199
    :cond_6
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-virtual {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->taskFinished()V

    goto :goto_0

    .line 202
    :cond_7
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$8(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$7(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 203
    :cond_8
    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-virtual {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->taskFinished()V

    goto :goto_0
.end method
