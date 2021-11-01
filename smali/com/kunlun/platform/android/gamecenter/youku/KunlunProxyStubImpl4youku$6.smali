.class final Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youku/gamesdk/act/YKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

.field private final synthetic val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$6;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$6;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Lcom/youku/gamesdk/data/Bean;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$6;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    invoke-static {}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->bU()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$6;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    return-void
.end method
