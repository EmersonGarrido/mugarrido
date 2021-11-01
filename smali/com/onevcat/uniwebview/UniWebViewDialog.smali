.class public Lcom/onevcat/uniwebview/UniWebViewDialog;
.super Landroid/app/Dialog;
.source "UniWebViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_EDGE_BOTTOM:I = 0x3

.field public static final ANIMATION_EDGE_LEFT:I = 0x2

.field public static final ANIMATION_EDGE_NONE:I = 0x0

.field public static final ANIMATION_EDGE_RIGHT:I = 0x4

.field public static final ANIMATION_EDGE_TOP:I = 0x1


# instance fields
.field private _alertDialog:Landroid/app/AlertDialog;

.field private _animating:Z

.field private _backButtonEnable:Z

.field private _backgroundColor:I

.field private _bottom:I

.field private _canGoBack:Z

.field private _canGoForward:Z

.field private _content:Landroid/widget/FrameLayout;

.field private _currentUrl:Ljava/lang/String;

.field private _currentUserAgent:Ljava/lang/String;

.field private _immersiveMode:Z

.field private _isLoading:Z

.field private _left:I

.field private _listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

.field private _loadingInterrupted:Z

.field private _manualHide:Z

.field private _right:I

.field private _showSpinnerWhenLoading:Z

.field private _spinner:Landroid/app/ProgressDialog;

.field private _spinnerText:Ljava/lang/String;

.field private _top:I

.field private _uniWebView:Lcom/onevcat/uniwebview/UniWebView;

.field private alpha:F

.field private headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public schemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trustSites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    const/16 v4, 0x400

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 101
    const v1, 0x103006c

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 61
    iput-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_showSpinnerWhenLoading:Z

    .line 62
    const-string v1, "Loading..."

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinnerText:Ljava/lang/String;

    .line 67
    const-string v1, ""

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUrl:Ljava/lang/String;

    .line 69
    iput v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    .line 71
    iput-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backButtonEnable:Z

    .line 73
    iput-boolean v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_animating:Z

    .line 79
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->alpha:F

    .line 81
    iput-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    .line 102
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    .line 105
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    const-string v2, "uniwebview"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->trustSites:Ljava/util/ArrayList;

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    .line 110
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 111
    .local v0, "window":Landroid/view/Window;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 113
    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 115
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v6, :cond_0

    .line 116
    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 122
    :goto_0
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 124
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->createContent()V

    .line 125
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->createWebView()V

    .line 126
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->createSpinner()V

    .line 128
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 131
    const-string v1, "UniWebView"

    const-string v2, "Create a new UniWebView Dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/onevcat/uniwebview/UniWebViewDialog$1;

    invoke-direct {v2, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$1;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 145
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUserAgent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_animating:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebView;
    .locals 1
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/onevcat/uniwebview/UniWebViewDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 45
    iget v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    return v0
.end method

.method static synthetic access$1300(Lcom/onevcat/uniwebview/UniWebViewDialog;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->createImageFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/onevcat/uniwebview/UniWebViewDialog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->trustSites:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_alertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/onevcat/uniwebview/UniWebViewDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_canGoBack:Z

    return p1
.end method

.method static synthetic access$402(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_canGoForward:Z

    return p1
.end method

.method static synthetic access$500(Lcom/onevcat/uniwebview/UniWebViewDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_showSpinnerWhenLoading:Z

    return v0
.end method

.method static synthetic access$600(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->showSpinner()V

    return-void
.end method

.method static synthetic access$702(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_isLoading:Z

    return p1
.end method

.method static synthetic access$800(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUrl:Ljava/lang/String;

    return-object p1
.end method

.method private createContent()V
    .locals 2

    .prologue
    .line 439
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    .line 440
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 441
    return-void
.end method

.method private createImageFile()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 881
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 882
    .local v2, "timeStamp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JPEG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "imageFileName":Ljava/lang/String;
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 885
    .local v1, "storageDir":Ljava/io/File;
    const-string v3, ".jpg"

    invoke-static {v0, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    return-object v3
.end method

.method private createSpinner()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 444
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    .line 445
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 446
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 447
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinnerText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 448
    return-void
.end method

.method private createWebView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 451
    new-instance v2, Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/onevcat/uniwebview/UniWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    .line 453
    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewDialog$4;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$4;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    .line 503
    .local v1, "webClient":Landroid/webkit/WebViewClient;
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v2, v1}, Lcom/onevcat/uniwebview/UniWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 505
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v2}, Lcom/onevcat/uniwebview/UniWebViewDialog$5;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/widget/FrameLayout;)V

    .line 719
    .local v0, "chromeClient":Lcom/onevcat/uniwebview/UniWebChromeClient;
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v2, v0}, Lcom/onevcat/uniwebview/UniWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 721
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    new-instance v3, Lcom/onevcat/uniwebview/UniWebViewDialog$6;

    invoke-direct {v3, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$6;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/UniWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 731
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v2, v4}, Lcom/onevcat/uniwebview/UniWebView;->setVisibility(I)V

    .line 733
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const-string v3, "android"

    invoke-virtual {v2, p0, v3}, Lcom/onevcat/uniwebview/UniWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0, v4}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setBounces(Z)V

    .line 736
    return-void
.end method

.method private showDialog()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 269
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->show()V

    .line 270
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 270
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 272
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->show()V

    goto :goto_0
.end method

.method private showSpinner()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 428
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 430
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 431
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 430
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public AddPermissionRequestTrustSite(Ljava/lang/String;)V
    .locals 1
    .param p1, "site"    # Ljava/lang/String;

    .prologue
    .line 874
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->trustSites:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_0
    return-void
.end method

.method public HideSystemUI()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v6, 0x13

    .line 150
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "decorView":Landroid/view/View;
    const/4 v2, 0x0

    .line 154
    .local v2, "uiOptions":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_1

    iget-boolean v4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    if-eqz v4, :cond_1

    .line 155
    const/16 v2, 0xf06

    .line 164
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 166
    const/4 v3, 0x0

    .line 168
    .local v3, "updatedUIOptions":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_2

    iget-boolean v4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    if-eqz v4, :cond_2

    .line 169
    const/16 v3, 0x1706

    .line 179
    :goto_1
    move v1, v3

    .line 180
    .local v1, "finalUiOptions":I
    new-instance v4, Lcom/onevcat/uniwebview/UniWebViewDialog$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog$2;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/view/View;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 189
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "finalUiOptions":I
    .end local v2    # "uiOptions":I
    .end local v3    # "updatedUIOptions":I
    :cond_0
    return-void

    .line 162
    .restart local v0    # "decorView":Landroid/view/View;
    .restart local v2    # "uiOptions":I
    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    .line 176
    .restart local v3    # "updatedUIOptions":I
    :cond_2
    const/4 v3, 0x4

    goto :goto_1
.end method

.method public addJs(Ljava/lang/String;)V
    .locals 4
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    const-string v1, "UniWebView"

    const-string v2, "Trying to add a null js. Abort."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v1, "javascript:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "requestString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addUrlScheme(Ljava/lang/String;)V
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    :cond_0
    return-void
.end method

.method public animateTo(IIFFLjava/lang/String;)V
    .locals 9
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "duration"    # F
    .param p4, "delay"    # F
    .param p5, "identifier"    # Ljava/lang/String;

    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v7, 0x0

    .line 919
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    .line 920
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 922
    .local v4, "v":Landroid/view/View;
    mul-float v5, p3, v8

    float-to-int v2, v5

    .line 923
    .local v2, "durationInMills":I
    mul-float v5, p4, v8

    float-to-int v1, v5

    .line 924
    .local v1, "delayInMills":I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, p1

    int-to-float v6, p2

    invoke-direct {v0, v7, v5, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 925
    .local v0, "a":Landroid/view/animation/Animation;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 926
    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 927
    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 928
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 930
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 931
    .local v3, "h":Landroid/os/Handler;
    new-instance v5, Lcom/onevcat/uniwebview/UniWebViewDialog$7;

    invoke-direct {v5, p0, p5}, Lcom/onevcat/uniwebview/UniWebViewDialog$7;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    add-int v6, v2, v1

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 937
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_canGoBack:Z

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_canGoForward:Z

    return v0
.end method

.method public changeInsets(IIII)V
    .locals 0
    .param p1, "top"    # I
    .param p2, "left"    # I
    .param p3, "bottom"    # I
    .param p4, "right"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_top:I

    .line 193
    iput p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_left:I

    .line 194
    iput p3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_bottom:I

    .line 195
    iput p4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_right:I

    .line 196
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->updateContentSize()V

    .line 197
    return-void
.end method

.method public cleanCache()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->clearCache(Z)V

    .line 236
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->loadUrl(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->removeShowingWebViewDialog(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    .line 259
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->dismiss()V

    .line 260
    return-void
.end method

.method displaySize()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 373
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 375
    .local v0, "display":Landroid/view/Display;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    if-eqz v3, :cond_0

    .line 376
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 377
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 384
    .end local v1    # "size":Landroid/graphics/Point;
    :goto_0
    return-object v1

    .line 379
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_1

    .line 380
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 381
    .restart local v1    # "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 384
    .end local v1    # "size":Landroid/graphics/Point;
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->alpha:F

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public goBack()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->goBack()V

    .line 241
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goBackGround()V
    .locals 2

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_isLoading:Z

    if-eqz v0, :cond_0

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_loadingInterrupted:Z

    .line 747
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->stopLoading()V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 752
    :cond_1
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->hide()V

    .line 754
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 755
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->onPause()V

    .line 757
    :cond_2
    return-void
.end method

.method public goForeGround()V
    .locals 2

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_manualHide:Z

    if-nez v0, :cond_1

    .line 761
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_loadingInterrupted:Z

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->reload()V

    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_loadingInterrupted:Z

    .line 765
    :cond_0
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->show()V

    .line 766
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 770
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 771
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->onResume()V

    .line 773
    :cond_2
    return-void
.end method

.method public goForward()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->goForward()V

    .line 250
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 200
    const-string v0, "UniWebView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Lcom/onevcat/uniwebview/UniWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 202
    return-void
.end method

.method public loadHTMLString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "baseURL"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public loadJS(Ljava/lang/String;)V
    .locals 5
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 215
    if-nez p1, :cond_0

    .line 216
    const-string v2, "UniWebView"

    const-string v3, "Trying to eval a null js. Abort."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "jsReformat":Ljava/lang/String;
    :goto_1
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 226
    :cond_1
    const-string v2, "javascript:android.onData(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "requestString":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onData(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 740
    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive a call back from js: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-interface {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onJavaScriptFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 85
    const-string v1, "UniWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-interface {v1, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onDialogKeyDown(Lcom/onevcat/uniwebview/UniWebViewDialog;I)V

    .line 87
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 88
    iget-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backButtonEnable:Z

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->goBack()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-interface {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onDialogShouldCloseByBackButton(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-interface {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onDialogClose(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    .line 264
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->reload()V

    .line 827
    return-void
.end method

.method public removeUrlScheme(Ljava/lang/String;)V
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 839
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .prologue
    .line 854
    iput p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->alpha:F

    .line 855
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 856
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->alpha:F

    iget v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->alpha:F

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 857
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 858
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 859
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v1, v0}, Lcom/onevcat/uniwebview/UniWebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 863
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :goto_0
    return-void

    .line 861
    :cond_0
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    iget v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->alpha:F

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/UniWebView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setBackButtonEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 806
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backButtonEnable:Z

    .line 807
    return-void
.end method

.method public setBackgroundColor(FFFF)V
    .locals 7
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    .line 790
    mul-float v5, p1, v6

    float-to-int v4, v5

    .line 791
    .local v4, "redInt":I
    mul-float v5, p2, v6

    float-to-int v3, v5

    .line 792
    .local v3, "greenInt":I
    mul-float v5, p3, v6

    float-to-int v1, v5

    .line 793
    .local v1, "blueInt":I
    mul-float v5, p4, v6

    float-to-int v0, v5

    .line 795
    .local v0, "alphaInt":I
    invoke-static {v0, v4, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 797
    .local v2, "color":I
    iput v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    .line 798
    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    iget v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    invoke-virtual {v5, v6}, Lcom/onevcat/uniwebview/UniWebView;->setWebViewBackgroundColor(I)V

    .line 799
    return-void
.end method

.method public setBounces(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 810
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 811
    const-string v0, "UniWebView"

    const-string v1, "WebView over scroll effect supports after API 9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_0
    return-void

    .line 813
    :cond_0
    if-eqz p1, :cond_1

    .line 814
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setOverScrollMode(I)V

    goto :goto_0

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setOverScrollMode(I)V

    goto :goto_0
.end method

.method public setHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 940
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    :cond_1
    :goto_0
    return-void

    .line 943
    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setImmersiveModeEnabled(Z)V
    .locals 0
    .param p1, "immersiveModeEnabled"    # Z

    .prologue
    .line 870
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    .line 871
    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 902
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 903
    .local v0, "layoutParam":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 904
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 905
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 906
    return-void
.end method

.method public setShow(ZZIF)V
    .locals 17
    .param p1, "show"    # Z
    .param p2, "fade"    # Z
    .param p3, "direction"    # I
    .param p4, "duration"    # F

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_animating:Z

    if-eqz v13, :cond_0

    .line 281
    const-string v13, "UniWebView"

    const-string v14, "Trying to animate but another transition animation is not finished yet. Ignore this one."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    return-void

    .line 285
    :cond_0
    if-eqz p1, :cond_5

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->showDialog()V

    .line 287
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_showSpinnerWhenLoading:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_isLoading:Z

    if-eqz v13, :cond_1

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->showSpinner()V

    .line 291
    :cond_1
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/onevcat/uniwebview/UniWebViewManager;->addShowingWebViewDialog(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    .line 292
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_manualHide:Z

    .line 300
    :goto_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_11

    .line 301
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_animating:Z

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    const/4 v14, 0x0

    .line 304
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 305
    .local v10, "v":Landroid/view/View;
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v7, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 307
    .local v7, "set":Landroid/view/animation/AnimationSet;
    const/high16 v13, 0x447a0000    # 1000.0f

    mul-float v13, v13, p4

    float-to-int v3, v13

    .line 309
    .local v3, "durationMills":I
    if-eqz p2, :cond_3

    .line 310
    if-eqz p1, :cond_6

    const/4 v9, 0x0

    .line 311
    .local v9, "startAlpha":F
    :goto_2
    if-eqz p1, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    .line 312
    .local v4, "endAlpha":F
    :goto_3
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v9, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 313
    .local v2, "a":Landroid/view/animation/Animation;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 314
    int-to-long v14, v3

    invoke-virtual {v2, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 315
    invoke-virtual {v7, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 319
    .end local v2    # "a":Landroid/view/animation/Animation;
    .end local v4    # "endAlpha":F
    .end local v9    # "startAlpha":F
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->displaySize()Landroid/graphics/Point;

    move-result-object v8

    .line 320
    .local v8, "size":Landroid/graphics/Point;
    const/4 v13, 0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_8

    .line 321
    const/4 v11, 0x0

    .local v11, "xValue":I
    iget v13, v8, Landroid/graphics/Point;->y:I

    neg-int v12, v13

    .line 335
    .local v12, "yValue":I
    :goto_4
    if-eqz p3, :cond_4

    .line 336
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_d

    int-to-float v13, v11

    move/from16 v16, v13

    :goto_5
    if-eqz p1, :cond_e

    const/4 v13, 0x0

    move v15, v13

    :goto_6
    if-eqz p1, :cond_f

    int-to-float v13, v12

    move v14, v13

    :goto_7
    if-eqz p1, :cond_10

    const/4 v13, 0x0

    :goto_8
    move/from16 v0, v16

    invoke-direct {v2, v0, v15, v14, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 337
    .restart local v2    # "a":Landroid/view/animation/Animation;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 338
    int-to-long v14, v3

    invoke-virtual {v2, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 339
    invoke-virtual {v7, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 342
    .end local v2    # "a":Landroid/view/animation/Animation;
    :cond_4
    invoke-virtual {v10, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 344
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 345
    .local v5, "h":Landroid/os/Handler;
    new-instance v13, Lcom/onevcat/uniwebview/UniWebViewDialog$3;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v13, v0, v10, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog$3;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/view/View;Z)V

    int-to-long v14, v3

    invoke-virtual {v5, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 294
    .end local v3    # "durationMills":I
    .end local v5    # "h":Landroid/os/Handler;
    .end local v7    # "set":Landroid/view/animation/AnimationSet;
    .end local v8    # "size":Landroid/graphics/Point;
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "xValue":I
    .end local v12    # "yValue":I
    :cond_5
    sget-object v13, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v14, "input_method"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 295
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v13}, Lcom/onevcat/uniwebview/UniWebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->hide()V

    .line 297
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_manualHide:Z

    goto/16 :goto_1

    .line 310
    .end local v6    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v3    # "durationMills":I
    .restart local v7    # "set":Landroid/view/animation/AnimationSet;
    .restart local v10    # "v":Landroid/view/View;
    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 311
    .restart local v9    # "startAlpha":F
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 322
    .end local v9    # "startAlpha":F
    .restart local v8    # "size":Landroid/graphics/Point;
    :cond_8
    const/4 v13, 0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_9

    .line 323
    iget v13, v8, Landroid/graphics/Point;->x:I

    neg-int v11, v13

    .restart local v11    # "xValue":I
    const/4 v12, 0x0

    .restart local v12    # "yValue":I
    goto :goto_4

    .line 324
    .end local v11    # "xValue":I
    .end local v12    # "yValue":I
    :cond_9
    const/4 v13, 0x3

    move/from16 v0, p3

    if-ne v0, v13, :cond_a

    .line 325
    const/4 v11, 0x0

    .restart local v11    # "xValue":I
    iget v12, v8, Landroid/graphics/Point;->y:I

    .restart local v12    # "yValue":I
    goto :goto_4

    .line 326
    .end local v11    # "xValue":I
    .end local v12    # "yValue":I
    :cond_a
    const/4 v13, 0x4

    move/from16 v0, p3

    if-ne v0, v13, :cond_b

    .line 327
    iget v11, v8, Landroid/graphics/Point;->x:I

    .restart local v11    # "xValue":I
    const/4 v12, 0x0

    .restart local v12    # "yValue":I
    goto/16 :goto_4

    .line 328
    .end local v11    # "xValue":I
    .end local v12    # "yValue":I
    :cond_b
    if-nez p3, :cond_c

    .line 329
    const/4 v11, 0x0

    .restart local v11    # "xValue":I
    const/4 v12, 0x0

    .restart local v12    # "yValue":I
    goto/16 :goto_4

    .line 331
    .end local v11    # "xValue":I
    .end local v12    # "yValue":I
    :cond_c
    const-string v13, "UniWebView"

    const-string v14, "Unknown direction. You should send 0~5"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    .restart local v11    # "xValue":I
    .restart local v12    # "yValue":I
    :cond_d
    const/4 v13, 0x0

    move/from16 v16, v13

    goto/16 :goto_5

    :cond_e
    int-to-float v13, v11

    move v15, v13

    goto/16 :goto_6

    :cond_f
    const/4 v13, 0x0

    move v14, v13

    goto/16 :goto_7

    :cond_10
    int-to-float v13, v12

    goto/16 :goto_8

    .line 361
    .end local v3    # "durationMills":I
    .end local v7    # "set":Landroid/view/animation/AnimationSet;
    .end local v8    # "size":Landroid/graphics/Point;
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "xValue":I
    .end local v12    # "yValue":I
    :cond_11
    if-eqz p1, :cond_12

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-object/from16 v0, p0

    invoke-interface {v13, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onShowTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    goto/16 :goto_0

    .line 364
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->hide()V

    .line 365
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-object/from16 v0, p0

    invoke-interface {v13, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onHideTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    goto/16 :goto_0
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 909
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 910
    :cond_0
    const-string v1, "UniWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The width or height of size is less than 0. Webview will not show. Please check your setting. Input width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", input height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :goto_0
    return-void

    .line 914
    :cond_1
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 915
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method public setSpinnerShowWhenLoading(Z)V
    .locals 0
    .param p1, "showSpinnerWhenLoading"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_showSpinnerWhenLoading:Z

    .line 413
    return-void
.end method

.method public setSpinnerText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 416
    if-eqz p1, :cond_0

    .line 417
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinnerText:Ljava/lang/String;

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 422
    return-void

    .line 419
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinnerText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTransparent(Z)V
    .locals 4
    .param p1, "transparent"    # Z

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 777
    const-string v0, "UniWebView"

    const-string v1, "SetTransparentBackground is already deprecated and there is no guarantee it will work in later versions. You should use SetBackgroundColor instead."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    if-eqz p1, :cond_0

    .line 780
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    .line 785
    :goto_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setWebViewBackgroundColor(I)V

    .line 786
    return-void

    .line 782
    :cond_0
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    goto :goto_0
.end method

.method public setZoomEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 822
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 823
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->stopLoading()V

    .line 843
    return-void
.end method

.method public updateContentSize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 391
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->displaySize()Landroid/graphics/Point;

    move-result-object v2

    .line 392
    .local v2, "size":Landroid/graphics/Point;
    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_left:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_right:I

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 393
    .local v3, "width":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_top:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_bottom:I

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 395
    .local v0, "height":I
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 396
    :cond_0
    const-string v5, "UniWebView"

    const-string v6, "The inset is lager then screen size. Webview will not show. Please check your insets setting."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {v4, v3, v0}, Landroid/view/Window;->setLayout(II)V

    .line 402
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 403
    .local v1, "layoutParam":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x33

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 405
    iget v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_left:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 406
    iget v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_top:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 408
    invoke-virtual {v4, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public useWideViewPort(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 846
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 847
    return-void
.end method
