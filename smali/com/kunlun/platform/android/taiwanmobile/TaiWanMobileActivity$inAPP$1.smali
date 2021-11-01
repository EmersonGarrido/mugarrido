.class final Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$PurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->onReturnResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mK:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP$1;->mK:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    const-string v0, "kunlunTaiWanMobileActivity"

    const-string v1, ":twMobilePurchasePlatForm TwMobile Pay Success."

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP$1;->mK:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;

    invoke-static {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->b(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;)Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8cfc\u8cb7\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP$1;->mK:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;

    invoke-static {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->b(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;)Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->finish()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaiWanMobileActivity onReturnResult:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "kunlunTaiWanMobileActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":twMobilePurchasePlatForm TwMobile Pay error."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
