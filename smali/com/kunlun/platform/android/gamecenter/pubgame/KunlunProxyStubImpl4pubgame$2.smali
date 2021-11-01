.class final Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jb:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$2;->jb:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$2;->jb:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->e(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method
