.class public final enum Lcom/kunlun/platform/android/common/ThreadPool;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/platform/android/common/ThreadPool;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lcom/kunlun/platform/android/common/ThreadPool;

.field private static final synthetic dK:[Lcom/kunlun/platform/android/common/ThreadPool;


# instance fields
.field private dJ:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kunlun/platform/android/common/ThreadPool;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/kunlun/platform/android/common/ThreadPool;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kunlun/platform/android/common/ThreadPool;->INSTANCE:Lcom/kunlun/platform/android/common/ThreadPool;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kunlun/platform/android/common/ThreadPool;

    const/4 v1, 0x0

    sget-object v2, Lcom/kunlun/platform/android/common/ThreadPool;->INSTANCE:Lcom/kunlun/platform/android/common/ThreadPool;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kunlun/platform/android/common/ThreadPool;->dK:[Lcom/kunlun/platform/android/common/ThreadPool;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/common/ThreadPool;->dJ:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/platform/android/common/ThreadPool;
    .locals 1

    const-class v0, Lcom/kunlun/platform/android/common/ThreadPool;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/platform/android/common/ThreadPool;

    return-object v0
.end method

.method public static values()[Lcom/kunlun/platform/android/common/ThreadPool;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/kunlun/platform/android/common/ThreadPool;->dK:[Lcom/kunlun/platform/android/common/ThreadPool;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/platform/android/common/ThreadPool;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final addTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/common/ThreadPool;->dJ:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
