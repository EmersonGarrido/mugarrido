.class final Lcom/kunlun/platform/android/KunlunUpdateUtil$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunUpdateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cA:I

.field private final synthetic cB:Ljava/lang/String;

.field private final synthetic cC:Ljava/lang/String;

.field private final synthetic cy:Ljava/lang/String;

.field private final synthetic cz:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;->cy:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;->cz:Z

    iput p3, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;->cA:I

    iput-object p4, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;->cB:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;->cC:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    new-instance v1, Lcom/kunlun/platform/widget/KunlunDialog;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bB()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/kunlun/platform/widget/KunlunDialog;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bC()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunLang;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kunlun/platform/widget/KunlunDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;->cy:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kunlun/platform/widget/KunlunDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/kunlun/platform/widget/KunlunDialog;->setCancelable(Z)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;->cz:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bC()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunLang;->R()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$1;

    iget-boolean v3, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;->cz:Z

    invoke-direct {v2, v3}, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$1;-><init>(Z)V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bC()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunLang;->S()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;

    iget v3, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;->cA:I

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;->cB:Ljava/lang/String;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;->cC:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;->cz:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lcom/kunlun/platform/widget/KunlunDialog;->show()V

    return-void

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bC()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunLang;->cancel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
