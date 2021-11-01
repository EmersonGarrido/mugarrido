.class final Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/gamesdk/IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/gamesdk/IResponse",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic eR:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;

.field private final synthetic eS:Z

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;Landroid/app/Activity;ZLcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;->eR:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;->eS:Z

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, -0x1

    const-string v2, "error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u542f\u52a8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;->eR:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->a(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/gamesdk/BDGameSDK;->getAnnouncementInfo(Landroid/app/Activity;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;->eS:Z

    invoke-static {v0}, Lcom/baidu/gamesdk/BDGameSDK;->setSupportScreenRecord(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, 0x0

    const-string v2, "finish"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
