.class final Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kaopu/supersdk/callback/KPAuthCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hc:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;Lcom/kunlun/platform/android/Kunlun$initCallback;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->hc:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;)Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->hc:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;

    return-object v0
.end method


# virtual methods
.method public final onAuthFailed()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, -0x1

    const-string v2, "authFailed"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public final onAuthSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/kaopu/supersdk/api/KPSuperSDK;->registerLogoutCallBack(Lcom/kaopu/supersdk/callback/KPLogoutCallBack;)V

    return-void
.end method
