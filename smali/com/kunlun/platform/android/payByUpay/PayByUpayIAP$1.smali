.class final Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/upay/billing/sdk/UpayInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->purchase(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mr:Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$1;->mr:Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;

    iput-object p2, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitResult(ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$1;->mr:Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;

    iget-object v1, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->a(Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "PayByUpayIAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initResult\u8fd4\u56de\u7684\u53c2\u6570---->\u521d\u59cb\u5316\u5931\u8d25-----resultCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0
.end method
