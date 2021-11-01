.class final Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kH:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;Landroid/app/Activity;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->kH:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->val$price:I

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->val$orderId:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;)Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->kH:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->getInstance(Landroid/app/Activity;)Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1$1;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->val$orderId:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->setMpaymentListener(Lcn/xxwan/sdkall/frame/listener/OnXXwanAPiListener;)V

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->val$price:I

    div-int/lit8 v0, v0, 0x64

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->val$orderId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "___"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->kH:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;->a(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;)Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static {v2, v3, v1, v0}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->a(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method
