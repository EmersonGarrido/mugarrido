.class final Lcom/appsflyer/AppsFlyerLib$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private appsFlyerKey:Ljava/lang/String;

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private eventName:Ljava/lang/String;

.field private eventValue:Ljava/lang/String;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private isNewAPI:Z

.field private referrer:Ljava/lang/String;

.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method private constructor <init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2242
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$d;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2243
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$d;->context:Ljava/lang/ref/WeakReference;

    .line 2244
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$d;->appsFlyerKey:Ljava/lang/String;

    .line 2245
    iput-object p4, p0, Lcom/appsflyer/AppsFlyerLib$d;->eventName:Ljava/lang/String;

    .line 2246
    iput-object p5, p0, Lcom/appsflyer/AppsFlyerLib$d;->eventValue:Ljava/lang/String;

    .line 2247
    iput-object p6, p0, Lcom/appsflyer/AppsFlyerLib$d;->referrer:Ljava/lang/String;

    .line 2248
    iput-boolean p7, p0, Lcom/appsflyer/AppsFlyerLib$d;->isNewAPI:Z

    .line 2249
    iput-object p8, p0, Lcom/appsflyer/AppsFlyerLib$d;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2250
    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;Lcom/appsflyer/AdvertisingIdClient;)V
    .locals 0

    .prologue
    .line 2226
    invoke-direct/range {p0 .. p8}, Lcom/appsflyer/AppsFlyerLib$d;-><init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$d;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$d;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$d;->appsFlyerKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$d;->eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$d;->eventValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLib$d;->referrer:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/appsflyer/AppsFlyerLib$d;->isNewAPI:Z

    invoke-static/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->access$600(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2254
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$d;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2255
    return-void
.end method
