.class final Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yyh/sdk/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$2;->eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$2;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$2;->eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->b(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$2;->eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->b(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/yyh/sdk/YYHSDKAPI;->isLogined(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/yyh/sdk/YYHSDKAPI;->showToolbar(Z)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$2;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, 0x0

    const-string v2, "finish"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method
