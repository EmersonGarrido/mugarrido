.class Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/ewan/supersdk/open/SuperLogoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Lcom/kunlun/platform/android/Kunlun$ExitCallback;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$6;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$6;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGameExit()V
    .locals 2

    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcn/ewan/supersdk/open/SuperPlatform;->exit(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$6;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    return-void
.end method

.method public onGamePopExitDialog()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$6;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method
