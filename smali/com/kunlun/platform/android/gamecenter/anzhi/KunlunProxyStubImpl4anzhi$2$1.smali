.class final Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->onCallback(Lcom/anzhi/usercenter/sdk/item/CPInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic eG:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2$1;->eG:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2$1;->eG:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;)Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2$1;->eG:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;->a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;)Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    return-void
.end method
