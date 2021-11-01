.class final Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic dx:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$1;->dx:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$1;->dx:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;

    invoke-static {v0}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->a(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$1;->dx:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;

    invoke-static {v0}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->a(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u521d\u59cb\u5316\u8d85\u65f6"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$1;->dx:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;

    invoke-static {v0}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->b(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;)V

    :cond_0
    return-void
.end method
