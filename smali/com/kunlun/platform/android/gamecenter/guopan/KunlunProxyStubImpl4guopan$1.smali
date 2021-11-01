.class final Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flamingo/sdk/access/IGPSDKInitObsv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->b(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gv:Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;Lcom/kunlun/platform/android/Kunlun$initCallback;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;->gv:Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;)Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;->gv:Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;

    return-object v0
.end method


# virtual methods
.method public final onInitFinish(Lcom/flamingo/sdk/access/GPSDKInitResult;)V
    .locals 4

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;Lcom/flamingo/sdk/access/GPSDKInitResult;Lcom/kunlun/platform/android/Kunlun$initCallback;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
