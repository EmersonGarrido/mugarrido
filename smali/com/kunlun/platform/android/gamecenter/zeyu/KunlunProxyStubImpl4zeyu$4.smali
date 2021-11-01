.class final Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic lb:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;->lb:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;)Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;->lb:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;->lb:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->c(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;)Lcom/zeyu/sdk/ui/view/ToolBar;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;->lb:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;

    new-instance v1, Lcom/zeyu/sdk/ui/view/ToolBar;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;->val$activity:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/zeyu/sdk/ui/view/ToolBar;-><init>(Landroid/app/Activity;I)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->a(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;Lcom/zeyu/sdk/ui/view/ToolBar;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;->lb:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->c(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;)Lcom/zeyu/sdk/ui/view/ToolBar;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4$1;-><init>(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;)V

    invoke-virtual {v0, v1}, Lcom/zeyu/sdk/ui/view/ToolBar;->setZeyuSDKAccountSwitchListener(Lcom/zeyu/sdk/ZeyuSDKAccountSwitchListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;->lb:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->c(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;)Lcom/zeyu/sdk/ui/view/ToolBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeyu/sdk/ui/view/ToolBar;->show()V

    :cond_0
    return-void
.end method
