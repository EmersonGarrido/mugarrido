.class final Lcom/kunlun/platform/android/Kunlun$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$initCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->dianhun2Login(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic V:Lcom/kunlun/platform/android/KunlunProxyStub;

.field private final synthetic p:Landroid/content/Context;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunProxyStub;Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$28;->V:Lcom/kunlun/platform/android/KunlunProxyStub;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$28;->p:Landroid/content/Context;

    iput-object p3, p0, Lcom/kunlun/platform/android/Kunlun$28;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/Object;)V
    .locals 4

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$28;->V:Lcom/kunlun/platform/android/KunlunProxyStub;

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$28;->p:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$28;->p:Landroid/content/Context;

    iget-object v3, p0, Lcom/kunlun/platform/android/Kunlun$28;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/Kunlun;->a(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/kunlun/platform/android/KunlunProxyStub;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
