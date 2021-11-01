.class final Lcom/kunlun/platform/android/KunlunOrderListUtil$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunOrderListUtil;->platFormPurchase(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic G:Landroid/os/Bundle;

.field private synthetic bt:Lcom/kunlun/platform/android/KunlunOrderListUtil;

.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunOrderListUtil;Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$1;->bt:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$1;->G:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$1;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$1;->bt:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$1;->G:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->platFormPurchase(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$1;->bt:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->doUnFinishedPurchase()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$1;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    aget-object v0, v1, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    array-length v2, v1

    if-le v2, v3, :cond_2

    aget-object v1, v1, v3

    :goto_1
    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$1;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-interface {v2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const-string v1, "Error data."

    goto :goto_1
.end method
