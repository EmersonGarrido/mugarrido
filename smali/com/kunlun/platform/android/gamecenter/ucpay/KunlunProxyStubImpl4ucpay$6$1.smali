.class final Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jX:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6;ILandroid/app/Activity;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6$1;->jX:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6;

    iput p2, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6$1;->val$price:I

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6$1;->val$itemName:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6$1;->val$price:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v2, v0, v1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6$1;->jX:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6;->a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6;)Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6$1;->val$itemName:Ljava/lang/String;

    const-string v4, ""

    const-string v5, ""

    new-instance v6, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6$1$1;

    iget-object v7, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {v6, v7}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$6$1$1;-><init>(Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-static/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;->a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;Landroid/app/Activity;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    return-void
.end method