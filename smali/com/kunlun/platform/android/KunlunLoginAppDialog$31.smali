.class final Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunLoginAppDialog;->bf()V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->i(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->i(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->i(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dismiss()V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0, p3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Lcom/kunlun/platform/android/KunlunEntity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->j(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->k(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunEntity;->getUname()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@mobile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    const-string v2, "*****"

    invoke-static {v1, v0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunEntity;->getUname()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0, p3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Lcom/kunlun/platform/android/KunlunEntity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->j(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->k(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-gez p1, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->k(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->d(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
