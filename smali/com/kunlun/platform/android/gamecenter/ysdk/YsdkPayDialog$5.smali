.class final Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$5;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$5;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53c2\u6570\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$5;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->h(Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "\u53c2\u6570\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog$5;->kS:Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;->dismiss()V

    return-void
.end method
