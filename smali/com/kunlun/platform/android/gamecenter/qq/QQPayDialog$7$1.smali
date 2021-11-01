.class final Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jv:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7$1;->jv:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7$1;->jv:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7;)Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->g(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7$1;->jv:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$7;)Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->g(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
