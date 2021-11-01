.class final Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anguotech/sdk/interfaces/InitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, -0x2

    const-string v2, "cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public final onFailed(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4xsdk"

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method
