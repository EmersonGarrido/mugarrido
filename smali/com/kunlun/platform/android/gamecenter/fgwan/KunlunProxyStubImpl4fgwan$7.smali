.class final Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gs:Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$7;->gs:Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$7;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$7;->gs:Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;->c(Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;)Lcom/fgwansdk/FGwan;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$7;->gs:Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;->c(Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;)Lcom/fgwansdk/FGwan;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$7;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$7$1;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$7;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {v2, v3}, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$7$1;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/fgwansdk/FGwan;->logout(Landroid/content/Context;Lcom/fivegwan/multisdk/api/ResultListener;)V

    :cond_0
    return-void
.end method
