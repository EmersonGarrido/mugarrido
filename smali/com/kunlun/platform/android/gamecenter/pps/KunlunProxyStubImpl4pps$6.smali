.class final Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$6;
.super Lcom/pps/sdk/platform/PPSPlatformListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$6;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {p0}, Lcom/pps/sdk/platform/PPSPlatformListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final logout()V
    .locals 1

    invoke-super {p0}, Lcom/pps/sdk/platform/PPSPlatformListener;->logout()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$6;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    return-void
.end method
