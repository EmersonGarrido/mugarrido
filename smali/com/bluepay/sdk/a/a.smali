.class public Lcom/bluepay/sdk/a/a;
.super Ljava/lang/Exception;


# static fields
.field private static final a:J = -0x2e69831a7e180bf4L


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bluepay/sdk/a/a;-><init>(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput p2, p0, Lcom/bluepay/sdk/a/a;->b:I

    invoke-static {p3, p4}, Lcom/bluepay/data/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/sdk/a/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/bluepay/sdk/a/a;->b:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/sdk/a/a;->c:Ljava/lang/String;

    return-object v0
.end method
