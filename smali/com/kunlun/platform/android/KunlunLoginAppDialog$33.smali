.class final Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;)Lcom/kunlun/platform/android/KunlunLoginAppDialog;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->k(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunConf;->getConf()Lcom/kunlun/platform/android/KunlunConf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunConf;->L()Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kunlun/platform/android/KunlunConf$T;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kunlun/platform/android/KunLunLoginDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/kunlun/platform/android/KunlunLoginAppDialog$33$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$33$1;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;)V

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunLunLoginDialog;->showWeb(Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    return-void
.end method
