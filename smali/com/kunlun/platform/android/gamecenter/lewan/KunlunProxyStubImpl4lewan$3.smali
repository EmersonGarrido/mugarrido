.class final Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lewanduo/sdk/util/PromptManager$ExitClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$3;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancer()V
    .locals 0

    return-void
.end method

.method public final onExit()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$3;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    return-void
.end method

.method public final onmore()V
    .locals 0

    return-void
.end method
