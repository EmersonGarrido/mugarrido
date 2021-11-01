.class final Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$7;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$7;)Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$7;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$7;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->g(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$7;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->g(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#D9D9D9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$7;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->i(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$7$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$7$1;-><init>(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$7;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$7;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->i(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
