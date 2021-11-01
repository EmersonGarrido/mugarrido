.class public Lcom/onevcat/uniwebview/UniWebView;
.super Landroid/webkit/WebView;
.source "UniWebView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field public static customUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 24
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 26
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 27
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 28
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 29
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 30
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 32
    sget-object v1, Lcom/onevcat/uniwebview/UniWebView;->customUserAgent:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onevcat/uniwebview/UniWebView;->customUserAgent:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    sget-object v1, Lcom/onevcat/uniwebview/UniWebView;->customUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 36
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 37
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 40
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 41
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 46
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    .line 47
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 48
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 51
    :cond_3
    invoke-virtual {p0, v5}, Lcom/onevcat/uniwebview/UniWebView;->setScrollBarStyle(I)V

    .line 52
    invoke-virtual {p0, v3}, Lcom/onevcat/uniwebview/UniWebView;->setVerticalScrollbarOverlay(Z)V

    .line 53
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-void
.end method


# virtual methods
.method public setWebViewBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xb

    .line 71
    invoke-virtual {p0, p1}, Lcom/onevcat/uniwebview/UniWebView;->setBackgroundColor(I)V

    .line 73
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_1

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/onevcat/uniwebview/UniWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/onevcat/uniwebview/UniWebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public updateTransparent(Z)V
    .locals 4
    .param p1, "transparent"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xb

    const/4 v1, 0x0

    .line 57
    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setBackgroundColor(I)V

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/onevcat/uniwebview/UniWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/UniWebView;->setBackgroundColor(I)V

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    .line 65
    invoke-virtual {p0, v1, v3}, Lcom/onevcat/uniwebview/UniWebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method
