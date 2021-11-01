.class Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;
.super Ljava/lang/Object;
.source "KL_DragToReFreshView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field private final synthetic val$dividerHeight:F

.field private final synthetic val$dividerId:I

.field private final synthetic val$horizontalSpacing:F

.field private final synthetic val$numColumns:I

.field private final synthetic val$verticalSpacing:F


# direct methods
.method constructor <init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;IIFFF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iput p2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$numColumns:I

    iput p3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$dividerId:I

    iput p4, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$dividerHeight:F

    iput p5, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$horizontalSpacing:F

    iput p6, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$verticalSpacing:F

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 264
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$14(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 265
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1, v6}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$15(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Z)V

    .line 267
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iget-object v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    sget v3, Lcom/kunlun/sns/R$id;->dragToReFresh_headView:I

    invoke-virtual {v2, v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$16(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Landroid/view/View;)V

    .line 268
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iget-object v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    sget v3, Lcom/kunlun/sns/R$id;->dragToReFresh_footView:I

    invoke-virtual {v2, v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$17(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Landroid/view/View;)V

    .line 270
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 273
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 274
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$4(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iget-object v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->removeView(Landroid/view/View;)V

    .line 283
    :cond_1
    iget v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$numColumns:I

    const v2, 0x30d37

    if-ne v1, v2, :cond_7

    .line 284
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    new-instance v2, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshListView;

    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iget-object v4, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-virtual {v4}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshListView;-><init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$18(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Landroid/widget/AbsListView;)V

    .line 286
    iget v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$dividerId:I

    const v2, 0x493d8

    if-eq v1, v2, :cond_6

    .line 287
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$19(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AbsListView;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshListView;

    iget-object v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-virtual {v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$dividerId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :goto_0
    iget v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$dividerHeight:F

    const v2, 0x48c34f20    # 399993.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$19(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AbsListView;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshListView;

    iget v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$dividerHeight:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshListView;->setDividerHeight(I)V

    .line 309
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iget-object v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$19(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AbsListView;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$20(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/BaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 312
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$19(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AbsListView;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$20(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$21(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 316
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$19(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AbsListView;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$21(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 319
    :cond_4
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$19(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 321
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 323
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iget-object v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$5(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->addView(Landroid/view/View;)V

    .line 326
    :cond_5
    return-void

    .line 289
    :cond_6
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$19(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AbsListView;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 296
    :cond_7
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    new-instance v2, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;

    iget-object v3, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iget-object v4, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-virtual {v4}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;-><init>(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$18(Lcom/kunlun/sns/widget/KL_DragToReFreshView;Landroid/widget/AbsListView;)V

    .line 298
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$19(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AbsListView;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;

    iget v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$numColumns:I

    invoke-virtual {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;->setNumColumns(I)V

    .line 300
    iget v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$horizontalSpacing:F

    const v2, 0x48f42340    # 499994.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_8

    .line 301
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$19(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AbsListView;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;

    iget v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$horizontalSpacing:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;->setHorizontalSpacing(I)V

    .line 304
    :cond_8
    iget v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$verticalSpacing:F

    const v2, 0x49127bb0    # 599995.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->this$0:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-static {v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->access$19(Lcom/kunlun/sns/widget/KL_DragToReFreshView;)Landroid/widget/AbsListView;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;

    iget v2, p0, Lcom/kunlun/sns/widget/KL_DragToReFreshView$1;->val$verticalSpacing:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/kunlun/sns/widget/KL_DragToReFreshView$DragToFreshGridView;->setVerticalSpacing(I)V

    goto/16 :goto_1
.end method
