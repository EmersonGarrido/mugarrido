.class final Lcom/kunlun/platform/android/KunlunPaymentAppDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bi()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bA:Ljava/lang/String;

.field private synthetic bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$6;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$6;->bA:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$6;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->g(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$6;->bA:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$6;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->f(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
