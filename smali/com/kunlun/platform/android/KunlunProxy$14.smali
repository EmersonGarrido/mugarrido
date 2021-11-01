.class final Lcom/kunlun/platform/android/KunlunProxy$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$PurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunProxy;->setPurchaseSuccessListener(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bL:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunProxy$14;->bL:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->l:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "channel"

    const-string v2, "payChannel"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "klsso"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getKLSSO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/kunlun/platform/android/Kunlun;->l:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->platFormPurchase(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    :cond_0
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$14;->bL:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    add-int/lit8 v1, p1, -0x64

    invoke-interface {v0, v1, p2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
