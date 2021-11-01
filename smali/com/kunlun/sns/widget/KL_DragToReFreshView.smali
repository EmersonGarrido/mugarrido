.class public Lcom/kunlun/sns/widget/KL_DragToReFreshView;
.super Landroid/widget/LinearLayout;
.source "KL_DragToReFreshView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility",
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;,
        Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshListView;,
        Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategy;,
        Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForDown;,
        Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;,
        Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;,
        Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;
    }
.end annotation


# instance fields
.field private final MOVE_SCALE:F

.field private final NO_DIVIDER_HEIGHT:I

.field private final NO_DIVIDER_RES_ID:I

.field private final NO_HORIZONTAL_SPACING:I

.field private final NO_VERTICAL_SPACING:I

.field private final USE_LISTVIEW:I

.field private adapter:Landroid/widget/BaseAdapter;

.field private canDrag:Z

.field private contentListView:Landroid/widget/AbsListView;

.field private currentY:F

.field private footView:Landroid/view/View;

.field private headView:Landroid/view/View;

.field private isFirstLayout:Z

.field private isRefreshing:Z

.field private onBottomDragRefreshListener:Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onTopDragRefreshListener:Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private shouldRefresh:Z

.field private stopSubViewScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v11, 0x493d8

    const v10, 0x30d37

    const/high16 v9, 0x40c00000    # 6.0f

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 248
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v10, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->USE_LISTVIEW:I

    .line 26
    iput v11, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->NO_DIVIDER_RES_ID:I

    .line 27
    const v0, 0x61a79

    iput v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->NO_DIVIDER_HEIGHT:I

    .line 28
    const v0, 0x7a11a

    iput v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->NO_HORIZONTAL_SPACING:I

    .line 29
    const v0, 0x927bb

    iput v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->NO_VERTICAL_SPACING:I

    .line 31
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->MOVE_SCALE:F

    .line 33
    iput-boolean v8, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->stopSubViewScroll:Z

    .line 34
    iput-boolean v8, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->isRefreshing:Z

    .line 35
    iput-boolean v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->shouldRefresh:Z

    .line 36
    iput-boolean v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->isFirstLayout:Z

    .line 250
    invoke-virtual {p0, v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->setOrientation(I)V

    .line 252
    sget-object v0, Lcom/kunlun/sns/R$styleable;->KL_DragToReFreshLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 253
    .local v7, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 254
    .local v2, "numColumns":I
    invoke-virtual {v7, v1, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 255
    .local v3, "dividerId":I
    const/4 v0, 0x2

    const v1, 0x48c34f20    # 399993.0f

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 256
    .local v4, "dividerHeight":F
    const/4 v0, 0x3

    invoke-virtual {v7, v0, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 257
    .local v5, "horizontalSpacing":F
    const/4 v0, 0x4

    invoke-virtual {v7, v0, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 258
    .local v6, "verticalSpacing":F
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    invoke-virtual {p0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;-><init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;IIFFF)V

    invoke-virtual {v8, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 329
    new-instance v0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$2;

    invoke-direct {v0, p0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$2;-><init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)V

    iput-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 340
    return-void
.end method

.method static synthetic access$0(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->stopSubViewScroll:Z

    return v0
.end method

.method static synthetic access$10(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->onTopDragRefreshListener:Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->onBottomDragRefreshListener:Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;

    return-object v0
.end method

.method static synthetic access$12(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->currentY:F

    return v0
.end method

.method static synthetic access$13(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->stopSubViewScroll:Z

    return-void
.end method

.method static synthetic access$14(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->isFirstLayout:Z

    return v0
.end method

.method static synthetic access$15(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->isFirstLayout:Z

    return-void
.end method

.method static synthetic access$16(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->headView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$17(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->footView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$18(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->contentListView:Landroid/widget/AbsListView;

    return-void
.end method

.method static synthetic access$19(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->contentListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->canDrag:Z

    return-void
.end method

.method static synthetic access$20(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->adapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$21(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$22(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Landroid/view/MotionEvent;)Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategy;
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->createStrategyWithMotionEvent(Landroid/view/MotionEvent;)Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/kunlun/sns/widget/KL_DragToReFreshView;F)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->currentY:F

    return-void
.end method

.method static synthetic access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->headView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->footView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->isRefreshing:Z

    return v0
.end method

.method static synthetic access$7(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->shouldRefresh:Z

    return v0
.end method

.method static synthetic access$8(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->canDrag:Z

    return v0
.end method

.method static synthetic access$9(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->isRefreshing:Z

    return-void
.end method

.method private createStrategyWithMotionEvent(Landroid/view/MotionEvent;)Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategy;
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 346
    const/4 v0, 0x0

    .line 348
    .local v0, "motionEventStrategy":Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategy;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 361
    :goto_0
    return-object v0

    .line 350
    :pswitch_0
    new-instance v0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;

    .end local v0    # "motionEventStrategy":Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategy;
    invoke-direct {v0, p0, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;-><init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForMove;)V

    .line 352
    .restart local v0    # "motionEventStrategy":Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategy;
    goto :goto_0

    .line 354
    :pswitch_1
    new-instance v0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;

    .end local v0    # "motionEventStrategy":Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategy;
    invoke-direct {v0, p0, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;-><init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategyForUp;)V

    .line 356
    .restart local v0    # "motionEventStrategy":Lcom/kunlun/sns/widget/KL_DragToReFreshView$MotionEventStrategy;
    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public closeRefresh()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->shouldRefresh:Z

    .line 412
    invoke-virtual {p0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->hideHeadAndFootView()V

    .line 413
    return-void
.end method

.method public hideHeadAndFootView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 397
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->headView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->headView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->footView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->footView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :cond_1
    return-void
.end method

.method public openRefresh()V
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->shouldRefresh:Z

    .line 421
    invoke-virtual {p0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->showHeadAndFootView()V

    .line 422
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->adapter:Landroid/widget/BaseAdapter;

    .line 378
    return-void
.end method

.method public setOnBottomDragRefreshListener(Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;)V
    .locals 0
    .param p1, "onBottomDragRefreshListener"    # Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->onBottomDragRefreshListener:Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;

    .line 370
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 373
    .local p1, "onItemClickListener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 374
    return-void
.end method

.method public setOnTopDragRefreshListener(Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;)V
    .locals 0
    .param p1, "onTopDragRefreshListener"    # Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->onTopDragRefreshListener:Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;

    .line 366
    return-void
.end method

.method public showHeadAndFootView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 384
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->headView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->headView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->footView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->footView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :cond_1
    return-void
.end method

.method public taskFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 428
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->contentListView:Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    .line 451
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->headView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->headView:Landroid/view/View;

    sget v1, Lcom/kunlun/sns/R$id;->firstY:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->headView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->headView:Landroid/view/View;

    sget v2, Lcom/kunlun/sns/R$id;->firstY:I

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->footView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->footView:Landroid/view/View;

    sget v1, Lcom/kunlun/sns/R$id;->firstY:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->footView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->footView:Landroid/view/View;

    sget v2, Lcom/kunlun/sns/R$id;->firstY:I

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->contentListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 448
    iput-boolean v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->canDrag:Z

    .line 449
    iput-boolean v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->isRefreshing:Z

    .line 450
    iput-boolean v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->stopSubViewScroll:Z

    goto :goto_0
.end method
