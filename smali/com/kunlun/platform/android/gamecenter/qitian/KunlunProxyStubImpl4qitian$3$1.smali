.class final Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jn:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3$1;->jn:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3$1;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3$1;->val$price:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3$1;->jn:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;->a(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;)Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->a(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3$1;->jn:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;->a(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;)Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->a(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3$1;->jn:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;->a(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;)Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->a(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v2, "serverName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    const-string v2, "KunlunProxyStubImpl4qitian"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3$1;->val$activity:Landroid/app/Activity;

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3$1;->val$price:I

    div-int/lit8 v3, v3, 0x64

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3$1;->jn:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;

    invoke-static {v5}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;->a(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$3;)Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    move-result-object v5

    invoke-static {v5}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->d(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "___"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/ledi/util/Operate;->payMoney(Ljava/lang/String;Landroid/app/Activity;IILjava/lang/String;)V

    return-void
.end method
