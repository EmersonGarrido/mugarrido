.class final Lcom/kunlun/platform/android/KunlunUpdateUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunUpdateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic I:Ljava/lang/String;

.field private final synthetic e:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$3;->e:I

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$3;->I:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bE()Lcom/kunlun/platform/android/KunlunUpdateUtil$UpdateListener;

    move-result-object v0

    iget v1, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$3;->e:I

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$3;->I:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunUpdateUtil$UpdateListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
