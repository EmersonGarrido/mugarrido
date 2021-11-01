.class final Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$6;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic eT:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$6;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$6;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$6$1;->eT:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$6$1;->eT:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$6;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$6;->a(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$6;)Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->d(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/gamesdk/BDGameSDK;->showFloatView(Landroid/app/Activity;)V

    return-void
.end method
