.class final Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->loginReback(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jm:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1$2;->jm:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1$2;->jm:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->a(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;)Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->b(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1$2;->jm:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->a(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;)Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->b(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    return-void
.end method
