.class Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1$1;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$initCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1;


# direct methods
.method constructor <init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1;)V
    .locals 0
    .param p1, "this$0"    # Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1;

    .prologue
    .line 65
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1$1;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/Object;)V
    .locals 3
    .param p1, "reCode"    # I
    .param p2, "reMsg"    # Ljava/lang/Object;

    .prologue
    .line 69
    if-nez p1, :cond_1

    .line 70
    sget-object v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->ERRo:Ljava/lang/String;

    const-string v1, "\u6606\u4ed1\u5e73\u53f0SDK\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v0}, Lcom/kunlun/sns/core/KunlunSNS;->hasInited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    iget-object v1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1$1;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1;

    iget-object v1, v1, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1;->val$act:Landroid/app/Activity;

    new-instance v2, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1$1$1;

    invoke-direct {v2, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1$1$1;-><init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/sns/core/KunlunSNS;->initSDK(Landroid/app/Activity;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)V

    goto :goto_0

    .line 91
    :cond_1
    sget-object v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->ERRo:Ljava/lang/String;

    const-string v1, "\u6606\u4ed1\u5e73\u53f0SDK\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
