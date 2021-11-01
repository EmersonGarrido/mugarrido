.class final Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->bM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$3;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$3;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->a(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$3;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    invoke-static {v0, p3}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->a(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;Lcom/kunlun/platform/android/KunlunEntity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$3;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->b(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method
