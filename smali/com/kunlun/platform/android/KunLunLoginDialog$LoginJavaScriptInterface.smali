.class final Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;
.super Lcom/kunlun/platform/android/common/JavaScriptInterface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunLunLoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoginJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunLunLoginDialog;)V
    .locals 3

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, p1, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p1, Lcom/kunlun/platform/android/KunLunLoginDialog;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/kunlun/platform/android/common/JavaScriptInterface;-><init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;)Lcom/kunlun/platform/android/KunLunLoginDialog;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    return-object v0
.end method


# virtual methods
.method public final facebookPublishFeed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/kunlun/platform/android/Kunlun;->facebookSendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$FbInviteListener;)V

    return-void
.end method

.method public final facebookPublishFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/kunlun/platform/android/Kunlun;->facebookPublishFeed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    return-void
.end method

.method public final fbappLogin()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$3;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$3;-><init>(Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->facebookAppLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method

.method public final fbappLogout()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->facebookLogout(Landroid/content/Context;)V

    return-void
.end method

.method public final goBack()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->a(Lcom/kunlun/platform/android/KunLunLoginDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$1;-><init>(Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final googlePlusLogin()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$4;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$4;-><init>(Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->googlePlusLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method

.method public final googlePlusLogout()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->googlePlusLogout(Landroid/content/Context;)V

    return-void
.end method

.method public final klWebLogin(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->dismiss()V

    new-instance v0, Lcom/kunlun/platform/android/KunlunEntity;

    invoke-direct {v0, p1}, Lcom/kunlun/platform/android/KunlunEntity;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->setUser(Lcom/kunlun/platform/android/KunlunEntity;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunEntity;->getRetCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunEntity;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v3, v3, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunLunLoginDialog;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunLunLoginDialog;->a(Lcom/kunlun/platform/android/KunLunLoginDialog;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v3, v3, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v3, v3, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-interface {v3, v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method

.method public final kunlunAutoRegist()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$2;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$2;-><init>(Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->autoRegist(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method public final kunlunClose()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/16 v3, -0xb

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->dismiss()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    const-string v1, "Close"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v1, "Close"

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method

.method public final kunlunShowMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
