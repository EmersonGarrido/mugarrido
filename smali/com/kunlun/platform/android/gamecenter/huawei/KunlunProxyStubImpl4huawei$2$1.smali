.class final Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gO:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2;ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2$1;->gO:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2;

    iput p2, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2$1;->val$price:I

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2$1;->val$itemName:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2$1;->val$orderId:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2$1;->val$price:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2$1;->gO:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2;->a(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2;)Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2$1;->val$itemName:Ljava/lang/String;

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2$1;->val$orderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;->a(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
