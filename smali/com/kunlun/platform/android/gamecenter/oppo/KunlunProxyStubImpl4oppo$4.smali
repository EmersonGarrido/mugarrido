.class final Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nearme/game/sdk/callback/GameExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$4;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final exitGame()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$4;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    return-void
.end method
