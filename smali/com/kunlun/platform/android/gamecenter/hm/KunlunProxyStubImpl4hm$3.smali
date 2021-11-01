.class final Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/loginplugin/callback/OnRegistCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$3;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRegistCancel()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$3;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->b(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u6ce8\u518c"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
