.class final Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$4;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$4;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->g(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
