.class Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$1;
.super Ljava/lang/Object;
.source "KL_BottomLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->access$0(Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->access$0(Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 99
    :cond_0
    return-void
.end method
