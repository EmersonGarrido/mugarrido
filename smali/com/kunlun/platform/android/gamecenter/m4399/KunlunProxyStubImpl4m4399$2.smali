.class final Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->bM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$2;->ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$2;->ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->a(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;Lcn/m4399/operate/User;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$2;->ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->b(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$2;->ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->b(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    return-void
.end method
