.class final Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wandoujia/mariosdk/plugin/api/model/callback/OnLogoutFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$3;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoginFinished(Lcom/wandoujia/mariosdk/plugin/api/model/model/LogoutFinishType;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$3;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$3;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->b(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
