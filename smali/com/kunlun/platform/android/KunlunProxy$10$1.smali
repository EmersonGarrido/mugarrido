.class final Lcom/kunlun/platform/android/KunlunProxy$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunProxy$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunProxy$10$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunProxy$10$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$10$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    if-nez p1, :cond_0

    sget-boolean v0, Lcom/kunlun/platform/android/Kunlun;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kunlun/platform/android/Kunlun;->m:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$10$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunEntity;->getIsNewUser()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
