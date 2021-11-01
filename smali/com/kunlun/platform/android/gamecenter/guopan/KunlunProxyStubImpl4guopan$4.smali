.class final Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flamingo/sdk/access/IGPPayObsv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPayFinish(Lcom/flamingo/sdk/access/GPPayResult;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p1, Lcom/flamingo/sdk/access/GPPayResult;->mErrCode:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8d2d\u4e70\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flamingo/sdk/access/GPPayResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    const-string v1, "KunlunProxyStubImpl4guopan"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPayFinish:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/flamingo/sdk/access/GPPayResult;->mErrCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :sswitch_0
    const-string v0, "\u8d2d\u4e70\u6210\u529f"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v1, v3, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "\u540e\u53f0\u6b63\u5728\u8f6e\u5faa\u8d2d\u4e70"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u540e\u53f0\u8d2d\u4e70\u6210\u529f"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v1, v3, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "\u540e\u53f0\u8d2d\u4e70\u8d85\u65f6"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "\u7528\u6237\u53d6\u6d88"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string v0, "\u4f59\u989d\u4e0d\u8db3"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_6
    const-string v0, "\u5176\u4ed6\u9519\u8bef"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_7
    const-string v0, "\u7528\u6237\u88ab\u9650\u5236"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_8
    const-string v0, "\u8be5\u8ba2\u5355\u5df2\u7ecf\u5b8c\u6210"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_9
    const-string v0, "\u670d\u52a1\u5668\u9519\u8bef"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_a
    const-string v0, "\u65e0\u767b\u9646"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_b
    const-string v0, "\u53c2\u6570\u9519\u8bef"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_b
        -0x1 -> :sswitch_a
        0x0 -> :sswitch_0
        0x1 -> :sswitch_7
        0x2 -> :sswitch_5
        0x3 -> :sswitch_8
        0x4 -> :sswitch_4
        0x5 -> :sswitch_9
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x3e8 -> :sswitch_6
    .end sparse-switch
.end method
