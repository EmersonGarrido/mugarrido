.class final Lcom/kunlun/platform/android/KunlunProxy$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunProxy;->onResume(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bE:Lcom/kunlun/platform/android/KunlunProxy;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunProxy$5;->bE:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunProxy$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$5;->bE:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy$5;->val$activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/KunlunProxyStub;->onResume(Landroid/app/Activity;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->bl()Lcom/kunlun/platform/android/KunlunSmsProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->bl()Lcom/kunlun/platform/android/KunlunSmsProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunlunSmsProxy;->onResume(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
