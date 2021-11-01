.class Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3$1;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3;

.field private final synthetic val$floatMenuItem:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

.field private final synthetic val$menuItemViewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3;Landroid/view/ViewGroup;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3;

    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3$1;->val$menuItemViewGroup:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3$1;->val$floatMenuItem:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 365
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 350
    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3$1;->val$menuItemViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 356
    :try_start_0
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$21()Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/OnFlaotMenuItemClickListener;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3$1;->val$floatMenuItem:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

    invoke-virtual {v3}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 357
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$21()Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/OnFlaotMenuItemClickListener;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3$1;->val$menuItemViewGroup:Landroid/view/ViewGroup;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$22()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 346
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 342
    return-void
.end method
