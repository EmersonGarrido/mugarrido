.class public Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunLunLoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KlWebViewClient"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;


# direct methods
.method public constructor <init>(Lcom/kunlun/platform/android/KunLunLoginDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunLunLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v2, v2, Lcom/kunlun/platform/android/KunLunLoginDialog;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunLunLoginDialog;->a(Lcom/kunlun/platform/android/KunLunLoginDialog;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->show()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v3, -0xa

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->dismiss()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    const-string v1, "Network received error"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v1, "Network received error"

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
