.class final Lcom/kunlun/platform/android/KunLunPaymentDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunLunPaymentDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunLunPaymentDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$1;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$1;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->c(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$1;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->c(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$1;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    const-string v0, "KunlunDialog Cancel"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
