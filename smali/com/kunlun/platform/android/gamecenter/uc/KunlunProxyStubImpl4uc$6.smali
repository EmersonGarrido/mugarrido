.class final Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/uc/gamesdk/UCCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/uc/gamesdk/UCCallbackListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic jP:Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$6;->jP:Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$6;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic callback(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, -0x2be

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$6;->jP:Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$6;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;->e(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$6;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method
