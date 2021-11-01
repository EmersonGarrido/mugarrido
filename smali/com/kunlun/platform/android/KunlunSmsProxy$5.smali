.class final Lcom/kunlun/platform/android/KunlunSmsProxy$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$PurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunSmsProxy;->smsPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bN:Ljava/lang/String;

.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

.field private final synthetic co:Ljava/lang/String;

.field private final synthetic cp:Ljava/lang/String;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$price:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->co:Ljava/lang/String;

    iput p2, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->val$price:I

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->val$itemName:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->bN:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->cp:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->val$activity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "channel"

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->co:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "price"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->val$price:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_name"

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->val$itemName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "goods_id"

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->bN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "udid"

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->cp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->getInstance(Landroid/content/Context;)Lcom/kunlun/platform/android/KunlunOrderListUtil;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->platFormPurchase(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->bN:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$5;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-interface {v0, p1, p2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
