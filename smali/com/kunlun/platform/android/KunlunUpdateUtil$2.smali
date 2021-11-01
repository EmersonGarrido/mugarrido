.class final Lcom/kunlun/platform/android/KunlunUpdateUtil$2;
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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/kunlun/platform/widget/KunlunDialog;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bB()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kunlun/platform/widget/KunlunDialog;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bC()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bC()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setCancelable(Z)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bC()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->W()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/KunlunUpdateUtil$2$1;

    invoke-direct {v2}, Lcom/kunlun/platform/android/KunlunUpdateUtil$2$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bC()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->X()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/KunlunUpdateUtil$2$2;

    invoke-direct {v2}, Lcom/kunlun/platform/android/KunlunUpdateUtil$2$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunDialog;->show()V

    return-void
.end method
