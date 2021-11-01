.class final Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anfeng/pay/AnFanPayService$OnPaySuc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ew:Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan$3;->ew:Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final paySuc(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u5145\u503c\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan$3;->ew:Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->b(Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan$3;->ew:Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->b(Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
