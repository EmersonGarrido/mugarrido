.class final Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;->danjiPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bN:Ljava/lang/String;

.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

.field private synthetic ds:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$price:I


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;ILandroid/app/Activity;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$2;->ds:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;

    iput p2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$2;->val$price:I

    iput-object p3, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$2;->bN:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$2;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$2;->val$price:I

    if-le v1, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$2;->ds:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;

    iget-object v1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$2;->bN:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$2;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;->a(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
