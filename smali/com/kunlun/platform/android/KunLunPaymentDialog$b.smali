.class final Lcom/kunlun/platform/android/KunLunPaymentDialog$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunLunPaymentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;


# direct methods
.method private constructor <init>(Lcom/kunlun/platform/android/KunLunPaymentDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$b;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kunlun/platform/android/KunLunPaymentDialog;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/KunLunPaymentDialog$b;-><init>(Lcom/kunlun/platform/android/KunLunPaymentDialog;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$b;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->b(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$b;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->c(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$b;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->b(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->show()V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$b;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    const-string v0, "KunlunDialog Network received error"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
