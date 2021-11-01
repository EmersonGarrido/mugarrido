.class final Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gh:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appRate:I

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2;IILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->gh:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2;

    iput p2, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->val$price:I

    iput p3, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->val$appRate:I

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->val$itemName:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->val$orderId:Ljava/lang/String;

    iput-object p7, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->val$price:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v3, v0, v1

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->val$price:I

    iget v1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->val$appRate:I

    div-int v4, v0, v1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->gh:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2;->a(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2;)Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->val$itemName:Ljava/lang/String;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->val$orderId:Ljava/lang/String;

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->a(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;Landroid/app/Activity;Ljava/lang/String;FILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
