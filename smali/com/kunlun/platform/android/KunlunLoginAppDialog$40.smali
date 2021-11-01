.class final Lcom/kunlun/platform/android/KunlunLoginAppDialog$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;I)V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$40;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$40;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->j(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$40;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->j(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$40;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->k(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->logout(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$40;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->k(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
