.class Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appRate:I

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4;ILandroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->this$1:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4;

    iput p2, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->val$price:I

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->val$appRate:I

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->val$itemName:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->val$orderId:Ljava/lang/String;

    iput-object p7, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->val$price:I

    div-int/lit8 v5, v0, 0x64

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->this$1:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4;->access$0(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4;)Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->val$appRate:I

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->val$itemName:Ljava/lang/String;

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->val$orderId:Ljava/lang/String;

    iget-object v7, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v0 .. v7}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->a(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;IILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
