.class Lcom/onevcat/uniwebview/UniWebViewDialog$4;
.super Landroid/webkit/WebViewClient;
.source "UniWebViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog;->createWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$302(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    .line 472
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$402(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    .line 474
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$800(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 475
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$902(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1100(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1002(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onPageFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$702(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    .line 479
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1100(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1200(Lcom/onevcat/uniwebview/UniWebViewDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setWebViewBackgroundColor(I)V

    .line 480
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    .line 481
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$302(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    .line 457
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$402(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    .line 459
    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 461
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$500(Lcom/onevcat/uniwebview/UniWebViewDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$600(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$702(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    .line 465
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onPageStarted(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    .line 467
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$302(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    .line 486
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$402(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    .line 488
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    .line 489
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$800(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 490
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0, p4}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$902(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1100(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1002(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onReceivedError(Lcom/onevcat/uniwebview/UniWebViewDialog;ILjava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$702(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    .line 494
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 498
    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->shouldOverrideUrlLoading(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
