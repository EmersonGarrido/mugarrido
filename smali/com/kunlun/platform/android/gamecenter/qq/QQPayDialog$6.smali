.class final Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

.field private final synthetic ju:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$6;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$6;->ju:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$6;->ju:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$6;->ju:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$6;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->i(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$6$1;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$6;->ju:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$6$1;-><init>(Landroid/widget/TextView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$6;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->i(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
