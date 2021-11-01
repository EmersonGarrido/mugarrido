.class final Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jd:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;

.field private final synthetic je:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a$1;->jd:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a$1;->je:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a$1;->jd:Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;->a(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;)Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->a(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a$1;->je:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
