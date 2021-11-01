.class final Lcom/kunlun/platform/android/KunlunPaymentAppDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunPaymentAppDialog;
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

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$4;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$4;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->f(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
