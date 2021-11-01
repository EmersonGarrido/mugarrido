.class final Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/m4399/operate/OperateCenter$OnQuitGameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$7;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQuitGame(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$7;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    :cond_0
    return-void
.end method
