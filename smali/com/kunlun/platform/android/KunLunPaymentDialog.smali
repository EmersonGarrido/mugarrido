.class public Lcom/kunlun/platform/android/KunLunPaymentDialog;
.super Lcom/kunlun/platform/widget/BaseDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/KunLunPaymentDialog$a;,
        Lcom/kunlun/platform/android/KunLunPaymentDialog$b;,
        Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;
    }
.end annotation


# instance fields
.field private b:Landroid/view/ViewGroup$LayoutParams;

.field private c:Lcom/kunlun/platform/android/KunlunLang;

.field private f:Landroid/content/Context;

.field private g:Z

.field private kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Lcom/kunlun/platform/widget/BaseDialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->b:Landroid/view/ViewGroup$LayoutParams;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->f:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->g:Z

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, -0x1

    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Lcom/kunlun/platform/widget/BaseDialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->b:Landroid/view/ViewGroup$LayoutParams;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->f:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->g:Z

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Lcom/kunlun/platform/widget/KunlunProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/KunLunPaymentDialog;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    const-string v0, "KunlunDialog goBack"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/kunlun/platform/widget/BaseDialog;->dismiss()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-boolean v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/kunlun/platform/widget/KunlunDialog;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kunlun/platform/widget/KunlunDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->ok()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/KunLunPaymentDialog$2;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/KunLunPaymentDialog$2;-><init>(Lcom/kunlun/platform/android/KunLunPaymentDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->cancel()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/KunLunPaymentDialog$3;

    invoke-direct {v2}, Lcom/kunlun/platform/android/KunLunPaymentDialog$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunDialog;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    const-string v0, "KunlunDialog onBackPressed"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Lcom/kunlun/platform/widget/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->loading()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/kunlun/platform/widget/KunlunProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    new-instance v2, Lcom/kunlun/platform/android/KunLunPaymentDialog$1;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/KunLunPaymentDialog$1;-><init>(Lcom/kunlun/platform/android/KunLunPaymentDialog;)V

    invoke-virtual {v0, v2}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0, v8}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.kunlun.platform.android.KunLunDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CookieStr1:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "domain"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    array-length v5, v4

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "WIDTH="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "width"

    invoke-static {v4}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; path=/; domain="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "HEIGHT="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "height"

    invoke-static {v4}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; path=/; domain="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "DENSITY="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "density"

    invoke-static {v4}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; path=/; domain="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v8}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/kunlun/platform/android/KunLunPaymentDialog$a;

    invoke-direct {v3, p0, v1}, Lcom/kunlun/platform/android/KunLunPaymentDialog$a;-><init>(Lcom/kunlun/platform/android/KunLunPaymentDialog;B)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/kunlun/platform/android/KunLunPaymentDialog$b;

    invoke-direct {v3, p0, v1}, Lcom/kunlun/platform/android/KunLunPaymentDialog$b;-><init>(Lcom/kunlun/platform/android/KunLunPaymentDialog;B)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;

    invoke-direct {v3, p0}, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;-><init>(Lcom/kunlun/platform/android/KunLunPaymentDialog;)V

    const-string v4, "js2java"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    aget-object v6, v4, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "; path=/; domain="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
