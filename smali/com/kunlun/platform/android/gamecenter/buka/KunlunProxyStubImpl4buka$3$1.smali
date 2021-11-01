.class final Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic B:Ljava/lang/String;

.field private final synthetic bK:Ljava/lang/String;

.field private final synthetic fe:Ljava/lang/String;

.field private synthetic ff:Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appRate:I

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3;ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->ff:Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3;

    iput p2, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->val$price:I

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->fe:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->B:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->val$orderId:Ljava/lang/String;

    iput p7, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->val$appRate:I

    iput-object p8, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->bK:Ljava/lang/String;

    iput-object p9, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->val$price:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v6, v0, v1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->ff:Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3;->a(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3;)Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->fe:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->B:Ljava/lang/String;

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->val$orderId:Ljava/lang/String;

    iget v5, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->val$appRate:I

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->bK:Ljava/lang/String;

    iget-object v7, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->a(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
