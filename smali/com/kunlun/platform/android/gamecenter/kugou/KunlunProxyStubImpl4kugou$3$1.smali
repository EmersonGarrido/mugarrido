.class final Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic eO:Lorg/json/JSONObject;

.field private synthetic hx:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appRate:I

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3;Lorg/json/JSONObject;Ljava/lang/String;Landroid/app/Activity;ILjava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->hx:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->eO:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->val$itemName:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->val$activity:Landroid/app/Activity;

    iput p5, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->val$price:I

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->val$orderId:Ljava/lang/String;

    iput p7, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->val$appRate:I

    iput-object p8, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->eO:Lorg/json/JSONObject;

    const-string v1, "wares_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->val$itemName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->hx:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3;)Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->val$price:I

    div-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->val$orderId:Ljava/lang/String;

    iget v4, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->val$appRate:I

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method
