.class final Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fQ:Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appRate:I

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2;ILandroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->fQ:Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2;

    iput p2, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->val$price:I

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->val$itemName:Ljava/lang/String;

    iput p5, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->val$appRate:I

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->val$orderId:Ljava/lang/String;

    iput-object p7, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->val$price:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double v4, v0, v2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->fQ:Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2;->a(Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2;)Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->val$itemName:Ljava/lang/String;

    iget v6, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->val$appRate:I

    iget-object v7, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->val$orderId:Ljava/lang/String;

    iget-object v8, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v1 .. v8}, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->a(Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;Landroid/app/Activity;Ljava/lang/String;DILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
