.class final Lcom/kunlun/platform/android/KunLunLoginDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunLunLoginDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunLunLoginDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$5;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const/16 v3, -0xd

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$5;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$5;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$5;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->dismiss()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$5;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$5;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    const-string v1, "Cancel"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$5;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$5;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v1, "Login Cancel"

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method
