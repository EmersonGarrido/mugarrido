.class final Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zhuoyou/pay/sdk/listener/ZYInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$initCallback;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iniFail(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final iniSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method
