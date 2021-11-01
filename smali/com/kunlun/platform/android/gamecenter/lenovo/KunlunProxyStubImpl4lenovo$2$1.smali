.class final Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic eO:Lorg/json/JSONObject;

.field private synthetic hz:Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2;Lorg/json/JSONObject;Ljava/lang/String;Landroid/app/Activity;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->hz:Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->eO:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->val$itemName:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->val$activity:Landroid/app/Activity;

    iput p5, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->val$price:I

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->val$orderId:Ljava/lang/String;

    iput-object p7, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->eO:Lorg/json/JSONObject;

    const-string v1, "wares_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->val$itemName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->hz:Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2;->a(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2;)Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->val$activity:Landroid/app/Activity;

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->val$price:I

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->val$orderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->a(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
