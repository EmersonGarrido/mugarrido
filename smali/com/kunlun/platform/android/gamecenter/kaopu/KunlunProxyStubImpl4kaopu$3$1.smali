.class final Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic he:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appRate:I

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3;ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->he:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3;

    iput p2, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->val$price:I

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->val$itemName:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->val$orderId:Ljava/lang/String;

    iput p6, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->val$appRate:I

    iput-object p7, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->val$price:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double v6, v0, v2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->he:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3;)Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->val$itemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->val$orderId:Ljava/lang/String;

    iget v4, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->val$appRate:I

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Double;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
