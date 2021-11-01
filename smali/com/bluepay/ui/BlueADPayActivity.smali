.class public Lcom/bluepay/ui/BlueADPayActivity;
.super Landroid/app/Activity;


# static fields
.field private static final b:Ljava/lang/String; = "BluePay"

.field public static instance:Lcom/bluepay/ui/BlueADPayActivity;


# instance fields
.field a:Lcom/bluepay/data/g;

.field public mLinePayUrl:Ljava/lang/String;

.field public mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/bluepay/ui/BlueADPayActivity;->instance:Lcom/bluepay/ui/BlueADPayActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/bluepay/data/Billing;

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/ui/BlueADPayActivity;->a:Lcom/bluepay/data/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bluepay/ui/BlueADPayActivity;->mLinePayUrl:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/bluepay/ui/BlueADPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "line_pay_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/ui/BlueADPayActivity;->mLinePayUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/bluepay/ui/BlueADPayActivity;->mLinePayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/ui/BlueADPayActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/bluepay/ui/BlueADPayActivity;->mLinePayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/bluepay/ui/BlueADPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BluelURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/ui/BlueADPayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/ui/BlueADPayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bluepay/ui/BlueADPayActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/bluepay/ui/BlueADPayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/bluepay/ui/BlueADPayActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/bluepay/ui/BlueADPayActivity;->a()V

    invoke-virtual {p0}, Lcom/bluepay/ui/BlueADPayActivity;->initView()V

    sput-object p0, Lcom/bluepay/ui/BlueADPayActivity;->instance:Lcom/bluepay/ui/BlueADPayActivity;

    const-string v0, "BluePay"

    const-string v1, "webview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
