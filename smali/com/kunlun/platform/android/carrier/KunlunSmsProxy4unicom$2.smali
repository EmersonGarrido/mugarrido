.class final Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom;->danjiPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bN:Ljava/lang/String;

.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

.field private synthetic dB:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$2;->dB:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom;

    iput-object p2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$2;->val$itemName:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$2;->bN:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$2;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$2;->dB:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom;

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$2;->val$itemName:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$2;->bN:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom$2;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4unicom;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    return-void
.end method
