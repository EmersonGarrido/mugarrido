.class Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;
.super Ljava/lang/Object;
.source "KunlunProxyStubImpl4facebookCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$kunlunEntity:Lcom/kunlun/platform/android/KunlunEntity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private final synthetic val$retCode:I

.field private final synthetic val$retMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;Lcom/kunlun/platform/android/KunlunEntity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;

    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iput-object p4, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->val$kunlunEntity:Lcom/kunlun/platform/android/KunlunEntity;

    iput p5, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->val$retCode:I

    iput-object p6, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->val$retMsg:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 30
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    .line 31
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUname()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "klUserName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v2, -0x1

    const-string v3, "login error"

    iget-object v4, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->val$kunlunEntity:Lcom/kunlun/platform/android/KunlunEntity;

    invoke-interface {v1, v2, v3, v4}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->val$kunlunEntity:Lcom/kunlun/platform/android/KunlunEntity;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunEntity;->getUname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    sget-object v1, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v1}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;

    const/4 v2, 0x0

    const-string v3, "@facebook"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;->setFacebookId(Ljava/lang/String;)V

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget v2, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->val$retCode:I

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->val$retMsg:Ljava/lang/String;

    iget-object v4, p0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2$1;->val$kunlunEntity:Lcom/kunlun/platform/android/KunlunEntity;

    invoke-interface {v1, v2, v3, v4}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method
