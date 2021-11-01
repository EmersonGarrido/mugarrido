.class final Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kD:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;->kD:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput p4, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;->val$price:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;->kD:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;)Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;->kD:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;)Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;->val$price:I

    div-int/lit8 v4, v0, 0x64

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;->kD:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;)Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->e(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "___"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;->kD:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;)Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;Z)V

    invoke-static {}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->getInstance()Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1$1;->kD:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;)Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->g(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->chargeCenter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    return-void
.end method
