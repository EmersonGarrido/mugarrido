.class final Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic jb:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;


# direct methods
.method private constructor <init>(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;->jb:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;-><init>(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;)Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;->jb:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "KunlunProxyStubImpl4pubgame"

    const-string v1, "Checking version"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;->jb:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->a(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pubgame/sdk/base/dex/PubgameSDK;->checkVersion(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;->jb:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->b(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "finish"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;->jb:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->a(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a$1;

    invoke-direct {v2, p0, p1}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a$1;-><init>(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 0

    return-void
.end method
