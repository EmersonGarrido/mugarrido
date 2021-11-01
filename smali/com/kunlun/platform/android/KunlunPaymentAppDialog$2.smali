.class final Lcom/kunlun/platform/android/KunlunPaymentAppDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$2;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$2;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53c2\u6570\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v1, "\u53c2\u6570\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$2;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dismiss()V

    return-void
.end method
