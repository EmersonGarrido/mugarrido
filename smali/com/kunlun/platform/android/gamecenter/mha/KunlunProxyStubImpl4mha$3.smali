.class final Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huanju/wanka/paysdk/IPayCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$3;->il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/huanju/wanka/paysdk/ProductInfo;Ljava/lang/String;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4mha"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pay onFail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, 0x1

    const-string v2, "pay onFail"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Lcom/huanju/wanka/paysdk/ProductInfo;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/huanju/wanka/paysdk/ProductInfo;->getOrderid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "KunlunProxyStubImpl4mha"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pay onSuccess:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$3;->il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->a(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$3;->il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->a(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-interface {v1, v4, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "pay onSuccess"

    invoke-interface {v0, v4, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
