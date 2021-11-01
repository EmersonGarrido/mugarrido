.class final Lcom/kunlun/platform/android/Kunlun$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->autoRegist(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$RegistListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic p:Landroid/content/Context;

.field private final synthetic q:Ljava/lang/String;

.field private final synthetic r:Ljava/lang/String;

.field private final synthetic s:Lcom/kunlun/platform/android/Kunlun$RegistListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RegistListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$2;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$2;->q:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/Kunlun$2;->r:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/Kunlun$2;->s:Lcom/kunlun/platform/android/Kunlun$RegistListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$2;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$2;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$2;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/Kunlun$2;->s:Lcom/kunlun/platform/android/Kunlun$RegistListener;

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun;->regist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$2;->s:Lcom/kunlun/platform/android/Kunlun$RegistListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$RegistListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method
