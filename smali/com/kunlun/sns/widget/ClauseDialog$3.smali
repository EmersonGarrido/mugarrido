.class Lcom/kunlun/sns/widget/ClauseDialog$3;
.super Ljava/lang/Object;
.source "ClauseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/widget/ClauseDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/widget/ClauseDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/widget/ClauseDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/widget/ClauseDialog$3;->this$0:Lcom/kunlun/sns/widget/ClauseDialog;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kunlun/sns/widget/ClauseDialog$3;->this$0:Lcom/kunlun/sns/widget/ClauseDialog;

    invoke-virtual {v0}, Lcom/kunlun/sns/widget/ClauseDialog;->dismiss()V

    .line 68
    iget-object v0, p0, Lcom/kunlun/sns/widget/ClauseDialog$3;->this$0:Lcom/kunlun/sns/widget/ClauseDialog;

    iget-object v0, v0, Lcom/kunlun/sns/widget/ClauseDialog;->onClauseButtonClickListener:Lcom/kunlun/sns/widget/ClauseDialog$OnClauseButtonClickListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/kunlun/sns/widget/ClauseDialog$3;->this$0:Lcom/kunlun/sns/widget/ClauseDialog;

    iget-object v0, v0, Lcom/kunlun/sns/widget/ClauseDialog;->onClauseButtonClickListener:Lcom/kunlun/sns/widget/ClauseDialog$OnClauseButtonClickListener;

    invoke-interface {v0}, Lcom/kunlun/sns/widget/ClauseDialog$OnClauseButtonClickListener;->onAgree()V

    .line 71
    :cond_0
    return-void
.end method
