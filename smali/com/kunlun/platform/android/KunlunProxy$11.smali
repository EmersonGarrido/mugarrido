.class final Lcom/kunlun/platform/android/KunlunProxy$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunProxy;->reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunProxy$11;->bE:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunProxy$11;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunProxy$11;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$11;->bE:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy$11;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunProxy$11;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunProxyStub;->reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
