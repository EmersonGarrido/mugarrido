.class public final enum Lu/aly/ax$e;
.super Ljava/lang/Enum;
.source "IdJournal.java"

# interfaces
.implements Lu/aly/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/ax$e;",
        ">;",
        "Lu/aly/co;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ax$e;

.field public static final enum b:Lu/aly/ax$e;

.field public static final enum c:Lu/aly/ax$e;

.field public static final enum d:Lu/aly/ax$e;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/ax$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lu/aly/ax$e;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 53
    new-instance v0, Lu/aly/ax$e;

    const-string v1, "DOMAIN"

    const-string v2, "domain"

    invoke-direct {v0, v1, v6, v3, v2}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ax$e;->a:Lu/aly/ax$e;

    .line 54
    new-instance v0, Lu/aly/ax$e;

    const-string v1, "OLD_ID"

    const-string v2, "old_id"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ax$e;->b:Lu/aly/ax$e;

    .line 55
    new-instance v0, Lu/aly/ax$e;

    const-string v1, "NEW_ID"

    const-string v2, "new_id"

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ax$e;->c:Lu/aly/ax$e;

    .line 56
    new-instance v0, Lu/aly/ax$e;

    const-string v1, "TS"

    const-string v2, "ts"

    invoke-direct {v0, v1, v5, v7, v2}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ax$e;->d:Lu/aly/ax$e;

    .line 52
    new-array v0, v7, [Lu/aly/ax$e;

    sget-object v1, Lu/aly/ax$e;->a:Lu/aly/ax$e;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/ax$e;->b:Lu/aly/ax$e;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/ax$e;->c:Lu/aly/ax$e;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/ax$e;->d:Lu/aly/ax$e;

    aput-object v1, v0, v5

    sput-object v0, Lu/aly/ax$e;->h:[Lu/aly/ax$e;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ax$e;->e:Ljava/util/Map;

    .line 61
    const-class v0, Lu/aly/ax$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ax$e;

    .line 62
    sget-object v2, Lu/aly/ax$e;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lu/aly/ax$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-short p3, p0, Lu/aly/ax$e;->f:S

    .line 106
    iput-object p4, p0, Lu/aly/ax$e;->g:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static a(I)Lu/aly/ax$e;
    .locals 1

    .prologue
    .line 70
    packed-switch p0, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    sget-object v0, Lu/aly/ax$e;->a:Lu/aly/ax$e;

    goto :goto_0

    .line 74
    :pswitch_1
    sget-object v0, Lu/aly/ax$e;->b:Lu/aly/ax$e;

    goto :goto_0

    .line 76
    :pswitch_2
    sget-object v0, Lu/aly/ax$e;->c:Lu/aly/ax$e;

    goto :goto_0

    .line 78
    :pswitch_3
    sget-object v0, Lu/aly/ax$e;->d:Lu/aly/ax$e;

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lu/aly/ax$e;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lu/aly/ax$e;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ax$e;

    return-object v0
.end method

.method public static b(I)Lu/aly/ax$e;
    .locals 3

    .prologue
    .line 89
    invoke-static {p0}, Lu/aly/ax$e;->a(I)Lu/aly/ax$e;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ax$e;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lu/aly/ax$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/ax$e;

    return-object v0
.end method

.method public static values()[Lu/aly/ax$e;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lu/aly/ax$e;->h:[Lu/aly/ax$e;

    invoke-virtual {v0}, [Lu/aly/ax$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ax$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 110
    iget-short v0, p0, Lu/aly/ax$e;->f:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lu/aly/ax$e;->g:Ljava/lang/String;

    return-object v0
.end method
