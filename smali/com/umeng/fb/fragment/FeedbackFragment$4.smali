.class Lcom/umeng/fb/fragment/FeedbackFragment$4;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/fragment/FeedbackFragment;->a(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/fb/fragment/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/umeng/fb/fragment/FeedbackFragment;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/umeng/fb/fragment/FeedbackFragment$4;->a:Lcom/umeng/fb/fragment/FeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/umeng/fb/fragment/FeedbackFragment$4;->a:Lcom/umeng/fb/fragment/FeedbackFragment;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/umeng/fb/fragment/FeedbackFragment$4;->a:Lcom/umeng/fb/fragment/FeedbackFragment;

    invoke-static {v2}, Lcom/umeng/fb/fragment/FeedbackFragment;->k(Lcom/umeng/fb/fragment/FeedbackFragment;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/fb/fragment/FeedbackFragment;->a(Lcom/umeng/fb/fragment/FeedbackFragment;ILandroid/view/View;)V

    .line 307
    return-void
.end method