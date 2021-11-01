.class Lcom/kunlun/sns/widget/KL_DragToReFreshView$2;
.super Ljava/lang/Object;
.source "KL_DragToReFreshView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/widget/KL_DragToReFreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$2;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "contentListView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 332
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$2;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1, p2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$22(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Landroid/view/MotionEvent;)Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategy;

    move-result-object v0

    .line 333
    .local v0, "strategy":Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategy;
    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0, p1, p2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategy;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 337
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
