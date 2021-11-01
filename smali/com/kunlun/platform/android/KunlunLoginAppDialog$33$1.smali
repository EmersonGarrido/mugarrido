.class final Lcom/kunlun/platform/android/KunlunLoginAppDialog$33$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bf:Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$33$1;->bf:Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 2

    const/16 v0, -0xa

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$33$1;->bf:Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;->a(Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;)Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->k(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$33$1;->bf:Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;->a(Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;)Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->d(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
