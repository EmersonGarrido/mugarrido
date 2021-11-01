.class final Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iG:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3;

.field private final synthetic iH:I

.field private final synthetic iI:Ljava/lang/String;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3;Ljava/lang/String;IILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->iG:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->val$orderId:Ljava/lang/String;

    iput p3, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->iH:I

    iput p4, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->val$price:I

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->val$activity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->val$itemName:Ljava/lang/String;

    iput-object p7, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->iI:Ljava/lang/String;

    iput-object p8, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->val$orderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->iH:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->iH:I

    iget v1, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->val$price:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->val$itemName:Ljava/lang/String;

    iget v2, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->val$price:I

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun;->appPay(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->iG:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3;->a(Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3;)Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->iI:Ljava/lang/String;

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->iH:I

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->val$orderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;->a(Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    goto :goto_0
.end method
