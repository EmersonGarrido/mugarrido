.class final Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ha:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1$1;->ha:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;->getInstance()Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1$1;->ha:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;->a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;)Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;)Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->d(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;->entryGame(Landroid/content/Context;)V

    return-void
.end method
