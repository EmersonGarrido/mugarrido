.class final Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;->onInitFinish(Lcom/flamingo/sdk/access/GPSDKInitResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gw:Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;

.field private final synthetic gx:Lcom/flamingo/sdk/access/GPSDKInitResult;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;Lcom/flamingo/sdk/access/GPSDKInitResult;Lcom/kunlun/platform/android/Kunlun$initCallback;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->gw:Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->gx:Lcom/flamingo/sdk/access/GPSDKInitResult;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;)Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->gw:Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->gx:Lcom/flamingo/sdk/access/GPSDKInitResult;

    iget v0, v0, Lcom/flamingo/sdk/access/GPSDKInitResult;->mInitErrCode:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->gx:Lcom/flamingo/sdk/access/GPSDKInitResult;

    iget v1, v1, Lcom/flamingo/sdk/access/GPSDKInitResult;->mInitErrCode:I

    const-string v2, "init error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, 0x0

    const-string v2, "init finish"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u91cd\u8bd5"

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1$1;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {v2, p0, v3, v4}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u9000\u51fa"

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1$2;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1;->gx:Lcom/flamingo/sdk/access/GPSDKInitResult;

    invoke-direct {v2, v3, v4, v5}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1$1$2;-><init>(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;Lcom/flamingo/sdk/access/GPSDKInitResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
