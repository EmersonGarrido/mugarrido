.class final Lcom/kunlun/platform/android/Kunlun$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->autoPlay(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic p:Landroid/content/Context;

.field private final synthetic q:Ljava/lang/String;

.field private final synthetic r:Ljava/lang/String;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$19;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$19;->q:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/Kunlun$19;->r:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/Kunlun$19;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$19;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$19;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$19;->r:Ljava/lang/String;

    new-instance v3, Lcom/kunlun/platform/android/Kunlun$19$1;

    iget-object v4, p0, Lcom/kunlun/platform/android/Kunlun$19;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v3, v4}, Lcom/kunlun/platform/android/Kunlun$19$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun;->regist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$19;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method
