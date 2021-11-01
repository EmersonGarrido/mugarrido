.class final Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$8;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$8;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$8;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$8;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$8$1;

    invoke-direct {v2}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$8$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->perfectAccount(Landroid/content/Context;Lcom/sogou/gamecenter/sdk/listener/PerfectAccountListener;)V

    return-void
.end method
