.class final Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qihoo/gamecenter/sdk/common/IDispatcherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;->reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jf:Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$4;->jf:Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4qihoo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "360LoginCallback, data is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$4;->jf:Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {v0, v1, v2, p1}, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;->a(Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;Ljava/lang/String;)V

    return-void
.end method
