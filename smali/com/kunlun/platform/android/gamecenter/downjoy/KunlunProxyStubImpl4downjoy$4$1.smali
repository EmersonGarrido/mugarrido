.class final Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fX:Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4$1;->fX:Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4$1;->fX:Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4;->a(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4;)Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;

    move-result-object v0

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunEntity;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->a(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method
