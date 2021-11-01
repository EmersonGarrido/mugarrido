.class final Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ij:Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2;ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2$1;->ij:Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2;

    iput p2, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2$1;->val$price:I

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2$1;->val$itemName:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2$1;->val$orderId:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2$1;->val$price:I

    div-int/lit8 v4, v0, 0x64

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2$1;->ij:Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2;->a(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2;)Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2$1;->val$itemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2$1;->val$orderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->a(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
