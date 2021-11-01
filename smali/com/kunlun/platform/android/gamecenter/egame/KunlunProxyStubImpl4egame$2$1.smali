.class final Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic gn:Ljava/lang/String;

.field private synthetic go:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appRate:I

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->go:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->gn:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->val$itemName:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->val$orderId:Ljava/lang/String;

    iput p6, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->val$appRate:I

    iput-object p7, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->go:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2;->a(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2;)Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->gn:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->val$itemName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->val$orderId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "___"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->val$appRate:I

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;->a(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
