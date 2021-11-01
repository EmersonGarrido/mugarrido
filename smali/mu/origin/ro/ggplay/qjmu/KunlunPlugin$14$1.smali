.class Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14$1;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRespondBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14;


# direct methods
.method constructor <init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14;)V
    .locals 0
    .param p1, "this$0"    # Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14;

    .prologue
    .line 636
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14$1;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 3
    .param p1, "errorBean"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 646
    sget-object v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->ERRo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u60ac\u6d6e\u7a97\u663e\u793a\u5931\u8d25\u56de\u8c03 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void
.end method

.method public onSuccess(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRespondBean;)V
    .locals 2
    .param p1, "respondBean"    # Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRespondBean;

    .prologue
    .line 640
    sget-object v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->ERRo:Ljava/lang/String;

    const-string v1, "\u60ac\u6d6e\u7a97\u663e\u793a\u6210\u529f\u56de\u8c03"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 636
    check-cast p1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRespondBean;

    invoke-virtual {p0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14$1;->onSuccess(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRespondBean;)V

    return-void
.end method
