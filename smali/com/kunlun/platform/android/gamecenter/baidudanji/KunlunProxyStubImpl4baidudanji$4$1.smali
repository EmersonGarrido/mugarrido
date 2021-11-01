.class final Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic eX:Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appRate:I

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4;ILandroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->eX:Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4;

    iput p2, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->val$price:I

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->val$itemName:Ljava/lang/String;

    iput p5, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->val$appRate:I

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->val$orderId:Ljava/lang/String;

    iput-object p7, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->val$price:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->eX:Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4;->a(Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4;)Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->val$itemName:Ljava/lang/String;

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->val$appRate:I

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->val$orderId:Ljava/lang/String;

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji$4$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/kunlun/platform/android/gamecenter/baidudanji/KunlunProxyStubImpl4baidudanji;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
