.class public abstract Lcom/kunlun/sns/widget/ClauseDialog;
.super Landroid/app/Dialog;
.source "ClauseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/sns/widget/ClauseDialog$OnClauseButtonClickListener;
    }
.end annotation


# instance fields
.field protected agreeButton:Landroid/widget/Button;

.field protected cancelButton:Landroid/widget/Button;

.field protected onClauseButtonClickListener:Lcom/kunlun/sns/widget/ClauseDialog$OnClauseButtonClickListener;

.field protected title:Landroid/widget/TextView;

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 33
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const-string v3, "layout"

    const-string v4, "kunlun_widget_dialog_clause_layout"

    invoke-static {p1, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "clauseView":Landroid/view/View;
    const-string v3, "id"

    const-string v4, "kalends_line_clause_title_textView"

    invoke-static {p1, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kunlun/sns/widget/ClauseDialog;->title:Landroid/widget/TextView;

    .line 37
    const-string v3, "id"

    const-string v4, "kalends_line_clause_content_webView"

    invoke-static {p1, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/kunlun/sns/widget/ClauseDialog;->webView:Landroid/webkit/WebView;

    .line 38
    iget-object v3, p0, Lcom/kunlun/sns/widget/ClauseDialog;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/kunlun/sns/widget/ClauseDialog$1;

    invoke-direct {v4, p0}, Lcom/kunlun/sns/widget/ClauseDialog$1;-><init>(Lcom/kunlun/sns/widget/ClauseDialog;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 46
    iget-object v3, p0, Lcom/kunlun/sns/widget/ClauseDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 47
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 48
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 50
    const-string v3, "id"

    const-string v4, "kalends_line_clause_cancel_button"

    invoke-static {p1, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kunlun/sns/widget/ClauseDialog;->cancelButton:Landroid/widget/Button;

    .line 51
    iget-object v3, p0, Lcom/kunlun/sns/widget/ClauseDialog;->cancelButton:Landroid/widget/Button;

    new-instance v4, Lcom/kunlun/sns/widget/ClauseDialog$2;

    invoke-direct {v4, p0}, Lcom/kunlun/sns/widget/ClauseDialog$2;-><init>(Lcom/kunlun/sns/widget/ClauseDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const-string v3, "id"

    const-string v4, "kalends_line_clause_agree_button"

    invoke-static {p1, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/kunlun/sns/widget/ClauseDialog;->agreeButton:Landroid/widget/Button;

    .line 63
    iget-object v3, p0, Lcom/kunlun/sns/widget/ClauseDialog;->agreeButton:Landroid/widget/Button;

    new-instance v4, Lcom/kunlun/sns/widget/ClauseDialog$3;

    invoke-direct {v4, p0}, Lcom/kunlun/sns/widget/ClauseDialog$3;-><init>(Lcom/kunlun/sns/widget/ClauseDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/kunlun/sns/widget/ClauseDialog;->setContentView(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0, v5}, Lcom/kunlun/sns/widget/ClauseDialog;->setCanceledOnTouchOutside(Z)V

    .line 76
    invoke-virtual {p0, v5}, Lcom/kunlun/sns/widget/ClauseDialog;->setCancelable(Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public setOnClauseButtonClickListener(Lcom/kunlun/sns/widget/ClauseDialog$OnClauseButtonClickListener;)V
    .locals 0
    .param p1, "onClauseButtonClickListener"    # Lcom/kunlun/sns/widget/ClauseDialog$OnClauseButtonClickListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/kunlun/sns/widget/ClauseDialog;->onClauseButtonClickListener:Lcom/kunlun/sns/widget/ClauseDialog$OnClauseButtonClickListener;

    .line 81
    return-void
.end method
