.class final Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ic:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appRate:I

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->ic:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->val$price:I

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->val$itemName:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->val$orderId:Ljava/lang/String;

    iput p6, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->val$appRate:I

    iput-object p7, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->ic:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5;->a(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5;)Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->val$price:I

    div-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->val$itemName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->val$orderId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "p"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->val$appRate:I

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->a(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
