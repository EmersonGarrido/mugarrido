.class final Lcom/kunlun/platform/android/Kunlun$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->a(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$RegistListener;)Lcom/kunlun/platform/android/Kunlun$RegistListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic p:Landroid/content/Context;

.field private final synthetic s:Lcom/kunlun/platform/android/Kunlun$RegistListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$RegistListener;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$31;->s:Lcom/kunlun/platform/android/Kunlun$RegistListener;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$31;->p:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 2

    invoke-static {p3}, Lcom/kunlun/platform/android/Kunlun;->setUser(Lcom/kunlun/platform/android/KunlunEntity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$31;->s:Lcom/kunlun/platform/android/Kunlun$RegistListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$RegistListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    if-nez p1, :cond_0

    sget-boolean v0, Lcom/kunlun/platform/android/Kunlun;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$31;->p:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunEntity;->getIsNewUser()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
