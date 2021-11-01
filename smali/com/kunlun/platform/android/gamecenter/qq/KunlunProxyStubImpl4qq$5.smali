.class final Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->onResume(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$5;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I

    const-string v1, "KunlunProxyStubImpl4qq"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LoginRet.flag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget v0, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$5;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->a(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$5;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->a(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, 0x65

    const-string v2, "\u767b\u5f55\u6388\u6743\u5931\u8d25"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$5;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->d(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)V

    :cond_0
    return-void
.end method
