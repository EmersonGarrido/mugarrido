.class final Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/xxwan/sdkall/frame/listener/OnXXwanAPiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kF:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;->kF:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFial(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;I)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->getInstance(Landroid/app/Activity;)Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;)V

    invoke-virtual {v0, v1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->setMLogoutListener(Lcn/xxwan/sdkall/frame/listener/OnXXwanAPiListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, 0x0

    const-string v2, "finish"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method
