.class Lcom/kunlun/sns/widget/ClauseDialog$1;
.super Landroid/webkit/WebViewClient;
.source "ClauseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/widget/ClauseDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/widget/ClauseDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/widget/ClauseDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/widget/ClauseDialog$1;->this$0:Lcom/kunlun/sns/widget/ClauseDialog;

    .line 38
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    return v0
.end method
