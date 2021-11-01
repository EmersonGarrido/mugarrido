.class final Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/m4399/operate/OperateCenter$OnLoginFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$3;->ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoginFinished(ZILcn/m4399/operate/User;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$3;->ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    invoke-static {v0, p3}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->a(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;Lcn/m4399/operate/User;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$3;->ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->c(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x64

    invoke-static {p2}, Lcn/m4399/operate/OperateCenter;->getResultMsg(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method
