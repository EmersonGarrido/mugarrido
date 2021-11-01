.class public Lcom/kunlun/platform/android/KunLunLoginDialog;
.super Lcom/kunlun/platform/widget/BaseDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebChromeClient;,
        Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;,
        Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;
    }
.end annotation


# instance fields
.field private b:Landroid/view/ViewGroup$LayoutParams;

.field private c:Lcom/kunlun/platform/android/KunlunLang;

.field private d:Landroid/os/Handler;

.field protected kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

.field protected mContext:Landroid/content/Context;

.field protected mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

.field protected mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field protected mUrl:Ljava/lang/String;

.field protected mWebView:Landroid/webkit/WebView;

.field protected transparent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Lcom/kunlun/platform/widget/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->transparent:Z

    new-instance v0, Lcom/kunlun/platform/android/KunLunLoginDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kunlun/platform/android/KunLunLoginDialog$1;-><init>(Lcom/kunlun/platform/android/KunLunLoginDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->d:Landroid/os/Handler;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kunlun/platform/android/Kunlun;->m:Z

    iput-object p2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    const-string v0, "com.kunlun.platform.android.KunLunLoginDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunLunLoginDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v1, "Kunlun.notShowLoginAlert"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-nez v0, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->dismiss()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    const-string v1, "Back Pressed"

    invoke-interface {v0, p1, v1}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v1, "Login Cancel"

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/kunlun/platform/widget/KunlunDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kunlun/platform/widget/KunlunDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->ok()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/KunLunLoginDialog$6;

    invoke-direct {v2, p0, p1}, Lcom/kunlun/platform/android/KunLunLoginDialog$6;-><init>(Lcom/kunlun/platform/android/KunLunLoginDialog;I)V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->cancel()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/KunLunLoginDialog$7;

    invoke-direct {v2}, Lcom/kunlun/platform/android/KunLunLoginDialog$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunDialog;->show()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunLunLoginDialog;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.kunlun.platform.android.KunLunLoginDialog."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "domain"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cookies"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/kunlun/platform/android/KunlunUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "com.kunlun.platform.android.KunLunLoginDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CookieStr2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunLunLoginDialog;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_0
    :goto_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kl_utmp_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/kunlun/platform/android/KunlunUtil;->saveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    aget-object v4, v2, v1

    const-string v5, "KL_UTMP="

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/KunLunLoginDialog;)V
    .locals 1

    const/16 v0, -0xe

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->a(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kunlun/platform/android/Kunlun;->m:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/kunlun/platform/widget/BaseDialog;->dismiss()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/16 v0, -0xc

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->a(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Lcom/kunlun/platform/widget/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mUrl:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->loading()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/kunlun/platform/widget/KunlunProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    new-instance v2, Lcom/kunlun/platform/android/KunLunLoginDialog$5;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/KunLunLoginDialog$5;-><init>(Lcom/kunlun/platform/android/KunLunLoginDialog;)V

    invoke-virtual {v0, v2}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->show()V

    :cond_0
    invoke-virtual {p0, v8}, Lcom/kunlun/platform/android/KunLunLoginDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-virtual {v4, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "domain"

    invoke-static {v5}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_1

    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "com.kunlun.platform.android.KunLunLoginDialog."

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "cookies"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v2, "com.kunlun.platform.android.KunLunLoginDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "CookieStr1:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v4, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getKLSSO()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KL_SSO="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; path=/; domain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getKLPERSON()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KL_PERSON="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; path=/; domain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FB_APPID="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "fbappid"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; path=/; domain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FB_ACCESSTOKEN="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "fbtoken"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; path=/; domain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "WIDTH="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "width"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; path=/; domain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HEIGHT="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "height"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; path=/; domain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DENSITY="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "density"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; path=/; domain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v8}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebChromeClient;

    invoke-direct {v3, p0}, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebChromeClient;-><init>(Lcom/kunlun/platform/android/KunLunLoginDialog;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;

    invoke-direct {v3, p0}, Lcom/kunlun/platform/android/KunLunLoginDialog$KlWebViewClient;-><init>(Lcom/kunlun/platform/android/KunLunLoginDialog;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;

    invoke-direct {v3, p0}, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;-><init>(Lcom/kunlun/platform/android/KunLunLoginDialog;)V

    const-string v4, "js2java"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->transparent:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_6
    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/kunlun/platform/android/KunLunLoginDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_7
    aget-object v6, v2, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "; path=/; domain="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public showDialog(Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/kunlun/platform/android/KunLunLoginDialog$4;

    invoke-direct {p1}, Lcom/kunlun/platform/android/KunLunLoginDialog$4;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->transparent:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->show()V

    :cond_1
    return-void
.end method

.method public showLogin(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/kunlun/platform/android/KunLunLoginDialog$2;

    invoke-direct {p1}, Lcom/kunlun/platform/android/KunLunLoginDialog$2;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->show()V

    :cond_1
    return-void
.end method

.method public showWeb(Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/kunlun/platform/android/KunLunLoginDialog$3;

    invoke-direct {p1}, Lcom/kunlun/platform/android/KunLunLoginDialog$3;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->show()V

    :cond_1
    return-void
.end method
