.class final Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunLoginAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->b(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dismiss()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->d(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->ac()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->e(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Lcom/kunlun/platform/android/KunlunEntity;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->f(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->h(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->f(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->h(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->b(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->f(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->h(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->f(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->h(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->d(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->h(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->e(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->h(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->f(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->h(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->h(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->h(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->h(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->i(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
