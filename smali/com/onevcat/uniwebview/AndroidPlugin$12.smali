.class final Lcom/onevcat/uniwebview/AndroidPlugin$12;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin;->_UniWebViewCleanCookie(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$12;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 352
    const-string v2, "UniWebView"

    const-string v3, "_UniWebViewCleanCookie"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 355
    .local v0, "cm":Landroid/webkit/CookieManager;
    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$12;->val$key:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$12;->val$key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 356
    :cond_0
    const-string v2, "UniWebView"

    const-string v3, "Cleaning all cookies"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 363
    :goto_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    .line 364
    .local v1, "manager":Landroid/webkit/CookieSyncManager;
    if-eqz v1, :cond_1

    .line 365
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 367
    :cond_1
    return-void

    .line 359
    .end local v1    # "manager":Landroid/webkit/CookieSyncManager;
    :cond_2
    const-string v2, "UniWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting an empty cookie for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/onevcat/uniwebview/AndroidPlugin$12;->val$key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$12;->val$key:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
