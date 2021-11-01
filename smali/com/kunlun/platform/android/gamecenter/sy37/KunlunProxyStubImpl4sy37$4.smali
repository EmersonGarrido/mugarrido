.class final Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sqwan/msdk/api/SQResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jJ:Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$4;->jJ:Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailture(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onSuccess(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$4;->jJ:Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->a(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$4;->jJ:Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->b(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;)V

    return-void
.end method
