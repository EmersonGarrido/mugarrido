.class public Lcom/kunlun/sns/channel/facebookCenter/widget/MyKunlunDialog;
.super Lcom/kunlun/platform/android/KunLunLoginDialog;
.source "MyKunlunDialog.java"


# instance fields
.field private javaScriptInterface:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/kunlun/platform/android/KunLunLoginDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "javaScriptInterface"    # Ljava/lang/Object;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/kunlun/sns/channel/facebookCenter/widget/MyKunlunDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/MyKunlunDialog;->javaScriptInterface:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/kunlun/platform/android/KunLunLoginDialog;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/MyKunlunDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/MyKunlunDialog;->javaScriptInterface:Ljava/lang/Object;

    const-string v2, "js2java"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    return-void
.end method
