.class final Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bJ:Landroid/content/Intent;

.field private synthetic gI:Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc$1;->gI:Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc$1;->bJ:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc$1;->gI:Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc$1;->bJ:Landroid/content/Intent;

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;->a(Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc$1;->gI:Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc$1;->bJ:Landroid/content/Intent;

    const-string v2, "user_session"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;->b(Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc$1;->gI:Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;->a(Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc$1;->gI:Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;->a(Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc$1;->gI:Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;->b(Lcom/kunlun/platform/android/gamecenter/htc/KunlunProxyStubImpl4htc;)V

    :cond_1
    return-void
.end method
