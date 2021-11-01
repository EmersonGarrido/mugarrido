.class Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->bM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$3;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$3;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->a(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Lcn/ewan/supersdk/open/SuperLogin;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$3;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->c(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$3;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->c(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    return-void
.end method
