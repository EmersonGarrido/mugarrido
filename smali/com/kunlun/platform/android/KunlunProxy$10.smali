.class final Lcom/kunlun/platform/android/KunlunProxy$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunProxy;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bE:Lcom/kunlun/platform/android/KunlunProxy;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunProxy$10;->bE:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunProxy$10;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunProxy$10;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$10;->bE:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy$10;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/kunlun/platform/android/KunlunProxy$10$1;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunProxy$10;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunProxy$10;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunProxy$10$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;Landroid/app/Activity;)V

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunProxyStub;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
