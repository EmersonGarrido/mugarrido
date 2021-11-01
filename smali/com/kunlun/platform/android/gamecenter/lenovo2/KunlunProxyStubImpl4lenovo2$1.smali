.class final Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lenovo/lsf/gamesdk/LenovoGameApi$IAuthResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hB:Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1;->hB:Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(ZLjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1;->hB:Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->a(Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "realm\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1;->hB:Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->b(Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "uid\":\""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lenovo"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5}, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x66

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x65

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method
