.class final Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anzhi/usercenter/sdk/inter/AzOutGameInter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$4;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final azOutGameInter(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$4;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->i(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$4;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->f(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->removeFloaticon(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$4;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->j(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$4;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->j(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
