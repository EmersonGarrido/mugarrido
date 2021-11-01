.class final Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iA:Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4;ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;->iA:Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4;

    iput p2, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;->val$price:I

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;->val$itemName:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;->val$orderId:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;->val$price:I

    div-int/lit8 v5, v0, 0xa

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;->iA:Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4;->a(Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4;)Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;->val$itemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;->val$orderId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;->val$price:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$4$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;->a(Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
