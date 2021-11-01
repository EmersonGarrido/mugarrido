.class final Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/uc/gamesdk/sa/iface/open/UCCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/uc/gamesdk/sa/iface/open/UCCallbackListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$8;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$8;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic callback(ILjava/lang/Object;)V
    .locals 2

    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$8;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$8;->val$activity:Landroid/app/Activity;

    const-string v1, "\u7ee7\u7eed\u6e38\u620f\uff01"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
