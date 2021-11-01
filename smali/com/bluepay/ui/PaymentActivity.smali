.class public Lcom/bluepay/ui/PaymentActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluepay/ui/PaymentActivity$BlueWebChromeClient;,
        Lcom/bluepay/ui/PaymentActivity$BlueWebViewClient;,
        Lcom/bluepay/ui/PaymentActivity$ClickListener;,
        Lcom/bluepay/ui/PaymentActivity$DialogClick;,
        Lcom/bluepay/ui/PaymentActivity$JSPay;,
        Lcom/bluepay/ui/PaymentActivity$PayCallback;
    }
.end annotation


# static fields
.field static final c:I = -0x3e8


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Landroid/widget/TextView;

.field d:Landroid/os/Handler;

.field e:Lcom/bluepay/ui/PaymentActivity$DialogClick;

.field f:Ljava/lang/Runnable;

.field private g:Lcom/bluepay/data/PayEntry;

.field private h:Lcom/bluepay/pay/IPayCallback;

.field private i:Lcom/bluepay/pay/IPayCallback;

.field private j:Lcom/bluepay/pay/BluePay;

.field private k:J

.field private l:I

.field private m:I

.field private n:Z

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/bluepay/ui/PaymentActivity;->l:I

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/bluepay/ui/PaymentActivity;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluepay/ui/PaymentActivity;->n:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->d:Landroid/os/Handler;

    new-instance v0, Lcom/bluepay/ui/PaymentActivity$1;

    invoke-direct {v0, p0}, Lcom/bluepay/ui/PaymentActivity$1;-><init>(Lcom/bluepay/ui/PaymentActivity;)V

    iput-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/bluepay/ui/PaymentActivity;)I
    .locals 1

    iget v0, p0, Lcom/bluepay/ui/PaymentActivity;->m:I

    return v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&price="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity;->g:Lcom/bluepay/data/PayEntry;

    invoke-virtual {v2}, Lcom/bluepay/data/PayEntry;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&prop_name="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity;->g:Lcom/bluepay/data/PayEntry;

    invoke-virtual {v2}, Lcom/bluepay/data/PayEntry;->getPropsName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bluepay/ui/PaymentActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&contry="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bluepay/pay/Client;->m_BankChargeInfo:Lcom/bluepay/data/b;

    iget-boolean v0, v0, Lcom/bluepay/data/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/bluepay/pay/Client;->m_BankChargeInfo:Lcom/bluepay/data/b;

    iget-boolean v0, v0, Lcom/bluepay/data/b;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&bank="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&productId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/pay/Client;->getProductId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 6

    const-string v0, "id"

    const-string v1, "wb_content"

    invoke-static {p0, v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bluepay/ui/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->a:Landroid/webkit/WebView;

    const-string v0, "id"

    const-string v1, "tv_error"

    invoke-static {p0, v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bluepay/ui/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->a:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const-string v0, "id"

    const-string v1, "btn_back"

    invoke-static {p0, v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bluepay/ui/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->o:Landroid/widget/Button;

    const-string v0, "id"

    const-string v1, "btn_complete"

    invoke-static {p0, v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bluepay/ui/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-direct {v1, p0}, Lcom/bluepay/ui/PaymentActivity$JSPay;-><init>(Lcom/bluepay/ui/PaymentActivity;)V

    const-string v2, "entry"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bluepay/ui/PaymentActivity;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bluepay/ui/PaymentActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/bluepay/pay/Client;->IS_DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://203.195.167.152:100/sdk_ui/index.php?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity;->f:Ljava/lang/Runnable;

    iget v3, p0, Lcom/bluepay/ui/PaymentActivity;->l:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/bluepay/ui/PaymentActivity$BlueWebChromeClient;

    invoke-direct {v1, p0}, Lcom/bluepay/ui/PaymentActivity$BlueWebChromeClient;-><init>(Lcom/bluepay/ui/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/bluepay/ui/PaymentActivity$BlueWebViewClient;

    invoke-direct {v1, p0}, Lcom/bluepay/ui/PaymentActivity$BlueWebViewClient;-><init>(Lcom/bluepay/ui/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->o:Landroid/widget/Button;

    new-instance v1, Lcom/bluepay/ui/PaymentActivity$2;

    invoke-direct {v1, p0}, Lcom/bluepay/ui/PaymentActivity$2;-><init>(Lcom/bluepay/ui/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/bluepay/ui/PaymentActivity$3;

    invoke-direct {v1, p0}, Lcom/bluepay/ui/PaymentActivity$3;-><init>(Lcom/bluepay/ui/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.jmtt.co.th/msisdn/sdk_ui/index.php?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/bluepay/ui/PaymentActivity;I)V
    .locals 0

    iput p1, p0, Lcom/bluepay/ui/PaymentActivity;->m:I

    return-void
.end method

.method static synthetic a(Lcom/bluepay/ui/PaymentActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bluepay/ui/PaymentActivity;->n:Z

    return-void
.end method

.method private a(Ljava/util/List;[Ljava/lang/String;)V
    .locals 3

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, p2, v0

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget v1, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    const/16 v4, 0x3e

    if-ne v1, v4, :cond_1

    sget-object v1, Lcom/bluepay/pay/PublisherCode;->PUBLISHERS_CONTRY:[[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-direct {p0, v3, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Ljava/util/List;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v1, "plen="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget v1, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    const/16 v4, 0x42

    if-ne v1, v4, :cond_2

    sget-object v1, Lcom/bluepay/pay/PublisherCode;->PUBLISHERS_CONTRY:[[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v3, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Ljava/util/List;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    const/16 v4, 0x54

    if-ne v1, v4, :cond_3

    sget-object v1, Lcom/bluepay/pay/PublisherCode;->PUBLISHERS_CONTRY:[[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-direct {p0, v3, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Ljava/util/List;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    const/16 v4, 0x56

    if-ne v1, v4, :cond_4

    sget-object v1, Lcom/bluepay/pay/PublisherCode;->PUBLISHERS_CONTRY:[[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v3, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Ljava/util/List;[Ljava/lang/String;)V

    sget-object v1, Lcom/bluepay/pay/PublisherCode;->PUBLISHERS_CONTRY:[[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-direct {p0, v3, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Ljava/util/List;[Ljava/lang/String;)V

    sget-object v1, Lcom/bluepay/pay/PublisherCode;->PUBLISHERS_CONTRY:[[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-direct {p0, v3, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Ljava/util/List;[Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v1, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/bluepay/sdk/b/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    const-string v4, "id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v1, Lcom/bluepay/pay/PublisherCode;->PUBLISHERS_CONTRY:[[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-direct {p0, v3, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Ljava/util/List;[Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v4, "th"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v1, Lcom/bluepay/pay/PublisherCode;->PUBLISHERS_CONTRY:[[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v3, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Ljava/util/List;[Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v4, "vi-VN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/bluepay/pay/PublisherCode;->PUBLISHERS_CONTRY:[[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-direct {p0, v3, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Ljava/util/List;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/bluepay/pay/PublisherCode;->PUBLISHERS_CONTRY:[[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v3, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Ljava/util/List;[Ljava/lang/String;)V

    sget-object v1, Lcom/bluepay/pay/PublisherCode;->PUBLISHERS_CONTRY:[[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-direct {p0, v3, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Ljava/util/List;[Ljava/lang/String;)V

    sget-object v1, Lcom/bluepay/pay/PublisherCode;->PUBLISHERS_CONTRY:[[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-direct {p0, v3, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Ljava/util/List;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "&p"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/bluepay/ui/PaymentActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/bluepay/ui/PaymentActivity;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/bluepay/ui/PaymentActivity;)I
    .locals 1

    iget v0, p0, Lcom/bluepay/ui/PaymentActivity;->l:I

    return v0
.end method

.method static synthetic d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->g:Lcom/bluepay/data/PayEntry;

    return-object v0
.end method

.method static synthetic e(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/BluePay;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->j:Lcom/bluepay/pay/BluePay;

    return-object v0
.end method

.method static synthetic f(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/IPayCallback;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->i:Lcom/bluepay/pay/IPayCallback;

    return-object v0
.end method

.method static synthetic g(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/IPayCallback;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->h:Lcom/bluepay/pay/IPayCallback;

    return-object v0
.end method

.method static synthetic h(Lcom/bluepay/ui/PaymentActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->o:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/bluepay/ui/PaymentActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->p:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public backto(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bluepay/ui/PaymentActivity;->finish()V

    return-void
.end method

.method public complete(Landroid/view/View;)V
    .locals 4

    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity;->f:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bluepay/ui/PaymentActivity;->l:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bluepay/ui/PaymentActivity;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/bluepay/ui/PaymentActivity;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluepay/ui/PaymentActivity;->k:J

    return-void

    :cond_0
    const-string v0, "back press again quit this page in 2 seconds "

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "onConfigurationChanged()"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/bluepay/ui/PaymentActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/bluepay/ui/PaymentActivity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bluepay/ui/PaymentActivity;->setRequestedOrientation(I)V

    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/bluepay/ui/PaymentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/bluepay/ui/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "entry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bluepay/data/PayEntry;

    iput-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->g:Lcom/bluepay/data/PayEntry;

    invoke-static {}, Lcom/bluepay/core/pay/BlueManager;->a()Lcom/bluepay/pay/IPayCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->h:Lcom/bluepay/pay/IPayCallback;

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->g:Lcom/bluepay/data/PayEntry;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bluepay/ui/PaymentActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bluepay/ui/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    const-string v0, "layout"

    const-string v1, "activity_pay_ui"

    invoke-static {p0, v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bluepay/ui/PaymentActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/bluepay/ui/PaymentActivity;->a()V

    new-instance v0, Lcom/bluepay/ui/PaymentActivity$PayCallback;

    invoke-direct {v0, p0}, Lcom/bluepay/ui/PaymentActivity$PayCallback;-><init>(Lcom/bluepay/ui/PaymentActivity;)V

    iput-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->i:Lcom/bluepay/pay/IPayCallback;

    invoke-static {}, Lcom/bluepay/pay/BluePay;->getInstance()Lcom/bluepay/pay/BluePay;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->j:Lcom/bluepay/pay/BluePay;

    invoke-static {v2}, Lcom/bluepay/pay/BluePay;->setShowCardLoading(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->a:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bluepay/pay/BluePay;->setShowCardLoading(Z)V

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bluepay/pay/Client;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity;->g:Lcom/bluepay/data/PayEntry;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/bluepay/pay/BluePay;->getInstance()Lcom/bluepay/pay/BluePay;

    move-result-object v0

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity;->i:Lcom/bluepay/pay/IPayCallback;

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity;->g:Lcom/bluepay/data/PayEntry;

    iget-object v3, v1, Lcom/bluepay/data/PayEntry;->transactionId:Ljava/lang/String;

    const-string v4, "line"

    const/4 v5, 0x3

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bluepay/pay/BluePay;->queryTrans(Landroid/app/Activity;Lcom/bluepay/pay/IPayCallback;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
