.class Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->initFloatMenuItemData(Landroid/view/ViewGroup;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$floatMenuItem:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

.field private final synthetic val$menuItemViewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3;->val$menuItemViewGroup:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3;->val$floatMenuItem:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v1, 0x3f99999a    # 1.2f

    .line 331
    invoke-static {}, Lcom/kunlun/sns/net_engine/toolutils/FastDoubleClickTest;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$21()Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/OnFlaotMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3;->val$menuItemViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3$1;

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3;->val$menuItemViewGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3;->val$floatMenuItem:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

    invoke-direct {v1, p0, v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3;Landroid/view/ViewGroup;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
