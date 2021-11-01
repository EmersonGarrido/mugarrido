.class final Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bN:Ljava/lang/String;

.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

.field private synthetic dy:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4;ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->dy:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4;

    iput p2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->val$price:I

    iput-object p3, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->val$itemName:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->bN:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->val$orderId:Ljava/lang/String;

    iput-object p7, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->val$price:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->dy:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4;->a(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4;)Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->val$itemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->bN:Ljava/lang/String;

    iget-object v5, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->val$orderId:Ljava/lang/String;

    iget-object v6, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-static/range {v0 .. v6}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->a(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    return-void

    :cond_0
    iget v4, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4$1;->val$price:I

    goto :goto_0
.end method
