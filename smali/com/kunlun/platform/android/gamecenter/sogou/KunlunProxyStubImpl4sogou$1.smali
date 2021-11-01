.class final Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;
.super Landroid/os/Handler;
.source "SourceFile"


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


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;)Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    return-object v0
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->b(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->c(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->b(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->createFloatMenu(Landroid/content/Context;Z)Lcom/sogou/gamecenter/sdk/views/FloatMenu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Lcom/sogou/gamecenter/sdk/views/FloatMenu;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->d(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)V

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->e(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/sogou/gamecenter/sdk/views/FloatMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->e(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/sogou/gamecenter/sdk/views/FloatMenu;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Lcom/sogou/gamecenter/sdk/views/FloatMenu;->setParamsXY(II)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->e(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/sogou/gamecenter/sdk/views/FloatMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/gamecenter/sdk/views/FloatMenu;->show()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->e(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/sogou/gamecenter/sdk/views/FloatMenu;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;)V

    invoke-virtual {v0, v1}, Lcom/sogou/gamecenter/sdk/views/FloatMenu;->setSwitchUserListener(Lcom/sogou/gamecenter/sdk/listener/SwitchUserListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1$2;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1$2;-><init>(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;)V

    invoke-virtual {v0, v1}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->addRefreshUserListener(Lcom/sogou/gamecenter/sdk/listener/RefreshUserListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->e(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/sogou/gamecenter/sdk/views/FloatMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->e(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/sogou/gamecenter/sdk/views/FloatMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/gamecenter/sdk/views/FloatMenu;->hide()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
