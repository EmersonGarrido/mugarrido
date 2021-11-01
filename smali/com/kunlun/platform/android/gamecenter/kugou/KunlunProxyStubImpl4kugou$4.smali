.class final Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kugou/game/sdk/api/common/OnExitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$4;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final exitGame(I)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$4;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public final onDialogDismiss()V
    .locals 0

    return-void
.end method
