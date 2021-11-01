.class final Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->c(Lcom/tencent/msdk/api/LoginRet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$3;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$3;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->c(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$3;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->a(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$3;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->a(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$3;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->d(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)V

    :cond_1
    return-void
.end method
