.class public final enum Lcom/bluepay/data/Config$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/data/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/bluepay/data/Config$a;

.field public static final enum b:Lcom/bluepay/data/Config$a;

.field private static final synthetic c:[Lcom/bluepay/data/Config$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bluepay/data/Config$a;

    const-string v1, "Dcb"

    invoke-direct {v0, v1, v2}, Lcom/bluepay/data/Config$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluepay/data/Config$a;->a:Lcom/bluepay/data/Config$a;

    new-instance v0, Lcom/bluepay/data/Config$a;

    const-string v1, "Sms"

    invoke-direct {v0, v1, v3}, Lcom/bluepay/data/Config$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluepay/data/Config$a;->b:Lcom/bluepay/data/Config$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bluepay/data/Config$a;

    sget-object v1, Lcom/bluepay/data/Config$a;->a:Lcom/bluepay/data/Config$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bluepay/data/Config$a;->b:Lcom/bluepay/data/Config$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bluepay/data/Config$a;->c:[Lcom/bluepay/data/Config$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bluepay/data/Config$a;
    .locals 1

    const-class v0, Lcom/bluepay/data/Config$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bluepay/data/Config$a;

    return-object v0
.end method

.method public static values()[Lcom/bluepay/data/Config$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/bluepay/data/Config$a;->c:[Lcom/bluepay/data/Config$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/bluepay/data/Config$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
