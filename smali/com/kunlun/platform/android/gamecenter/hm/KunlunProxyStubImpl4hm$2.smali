.class final Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/loginplugin/callback/OnLoginCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$2;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoginCancel()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$2;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->c(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$2;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->c(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "\u767b\u5f55\u53d6\u6d88"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    return-void
.end method
