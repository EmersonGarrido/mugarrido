.class final Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bK:Ljava/lang/String;

.field private synthetic hB:Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appRate:I

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->hB:Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->val$itemName:Ljava/lang/String;

    iput p4, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->val$price:I

    iput p5, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->val$appRate:I

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->bK:Ljava/lang/String;

    iput-object p7, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 7

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->hB:Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->val$itemName:Ljava/lang/String;

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->val$price:I

    iget v4, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->val$appRate:I

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->bK:Ljava/lang/String;

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-virtual/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "Login failure"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
