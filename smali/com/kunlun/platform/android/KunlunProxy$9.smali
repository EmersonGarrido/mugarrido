.class final Lcom/kunlun/platform/android/KunlunProxy$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunProxy;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bE:Lcom/kunlun/platform/android/KunlunProxy;

.field private final synthetic bH:I

.field private final synthetic bI:I

.field private final synthetic bJ:Landroid/content/Intent;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->bE:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->bH:I

    iput p4, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->bI:I

    iput-object p5, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->bJ:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->bE:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->bH:I

    iget v3, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->bI:I

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->bJ:Landroid/content/Intent;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/KunlunProxyStub;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->bl()Lcom/kunlun/platform/android/KunlunSmsProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->bl()Lcom/kunlun/platform/android/KunlunSmsProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->bH:I

    iget v3, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->bI:I

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunProxy$9;->bJ:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/KunlunSmsProxy;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
