.class final Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;->onLoginSuccess(Lcom/haima/loginplugin/ZHPayUserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gF:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1$1;->gF:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1$1;->gF:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;->a(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;)Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->c(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method
