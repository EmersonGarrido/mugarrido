.class final Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->dealUserInfo(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gN:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1$1;->gN:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1$1;->gN:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->a(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;)Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;->b(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/gamebox/buoy/sdk/impl/BuoyOpenSDK;->getIntance()Lcom/huawei/gamebox/buoy/sdk/impl/BuoyOpenSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/gamebox/buoy/sdk/impl/BuoyOpenSDK;->getIntance()Lcom/huawei/gamebox/buoy/sdk/impl/BuoyOpenSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/huawei/gamebox/buoy/sdk/impl/BuoyOpenSDK;->hideSmallWindow(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/gamebox/buoy/sdk/impl/BuoyOpenSDK;->getIntance()Lcom/huawei/gamebox/buoy/sdk/impl/BuoyOpenSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/huawei/gamebox/buoy/sdk/impl/BuoyOpenSDK;->hideBigWindow(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1$1;->gN:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->a(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;)Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;->a(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method