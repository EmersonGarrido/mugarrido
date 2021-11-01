.class final Lcom/kunlun/platform/android/KunLunLoginDialog$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunLunLoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunLunLoginDialog;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$1;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$1;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$1;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v3, v3, Lcom/kunlun/platform/android/KunLunLoginDialog;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&sso="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$1;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$1;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$1;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$1;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunLunLoginDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
