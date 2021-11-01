.class public Lcom/kunlun/platform/android/gamecenter/midas/SHA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final iB:[I

.field private iC:[I

.field private iD:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iB:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iC:[I

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iD:[I

    return-void

    :array_0
    .array-data 4
        0x67452301
        -0x10325477
        -0x67452302
        0x10325476
        -0x3c2d1e10
    .end array-data
.end method

.method private static b(II)I
    .locals 2

    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->getDigestOfString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Digest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->getDigestOfString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDigestOfBytes([B)[B
    .locals 14

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iB:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iC:[I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iB:[I

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p1

    rem-int/lit8 v0, v4, 0x40

    const/16 v1, 0x38

    if-ge v0, v1, :cond_0

    rsub-int/lit8 v1, v0, 0x37

    sub-int v0, v4, v0

    add-int/lit8 v0, v0, 0x40

    :goto_0
    new-array v5, v0, [B

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v4, 0x1

    const/16 v0, -0x80

    aput-byte v0, v5, v4

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_2

    int-to-long v0, v4

    const/4 v3, 0x3

    shl-long/2addr v0, v3

    const-wide/16 v6, 0xff

    and-long/2addr v6, v0

    long-to-int v3, v6

    int-to-byte v3, v3

    const/16 v4, 0x8

    shr-long v6, v0, v4

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v4, v6

    int-to-byte v4, v4

    const/16 v6, 0x10

    shr-long v6, v0, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x18

    shr-long v8, v0, v7

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v7, v8

    int-to-byte v7, v7

    const/16 v8, 0x20

    shr-long v8, v0, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x28

    shr-long v10, v0, v9

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v9, v10

    int-to-byte v9, v9

    const/16 v10, 0x30

    shr-long v10, v0, v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    const/16 v11, 0x38

    shr-long/2addr v0, v11

    long-to-int v0, v0

    int-to-byte v0, v0

    add-int/lit8 v1, v2, 0x1

    aput-byte v0, v5, v2

    add-int/lit8 v0, v1, 0x1

    aput-byte v10, v5, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v9, v5, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v8, v5, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v7, v5, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v6, v5, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v4, v5, v0

    aput-byte v3, v5, v1

    array-length v0, v5

    div-int/lit8 v2, v0, 0x40

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-lt v1, v2, :cond_3

    const/16 v0, 0x14

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iC:[I

    array-length v2, v2

    if-lt v0, v2, :cond_d

    return-object v1

    :cond_0
    const/16 v1, 0x38

    if-ne v0, v1, :cond_1

    const/16 v1, 0x3f

    add-int/lit8 v0, v4, 0x8

    add-int/lit8 v0, v0, 0x40

    goto/16 :goto_0

    :cond_1
    rsub-int/lit8 v1, v0, 0x3f

    add-int/lit8 v1, v1, 0x38

    add-int/lit8 v2, v4, 0x40

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, 0x40

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v3, v2, 0x1

    const/4 v6, 0x0

    aput-byte v6, v5, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_4
    const/16 v3, 0x10

    if-lt v0, v3, :cond_4

    const/16 v0, 0x10

    :goto_5
    const/16 v3, 0x4f

    if-le v0, v3, :cond_5

    const/4 v0, 0x5

    new-array v3, v0, [I

    const/4 v0, 0x0

    :goto_6
    array-length v4, v3

    if-lt v0, v4, :cond_6

    const/4 v0, 0x0

    :goto_7
    const/16 v4, 0x13

    if-le v0, v4, :cond_7

    const/16 v0, 0x14

    :goto_8
    const/16 v4, 0x27

    if-le v0, v4, :cond_8

    const/16 v0, 0x28

    :goto_9
    const/16 v4, 0x3b

    if-le v0, v4, :cond_9

    const/16 v0, 0x3c

    :goto_a
    const/16 v4, 0x4f

    if-le v0, v4, :cond_a

    const/4 v0, 0x0

    :goto_b
    array-length v4, v3

    if-lt v0, v4, :cond_b

    const/4 v0, 0x0

    :goto_c
    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iD:[I

    array-length v3, v3

    if-lt v0, v3, :cond_c

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iD:[I

    shl-int/lit8 v4, v1, 0x6

    shl-int/lit8 v6, v0, 0x2

    add-int/2addr v4, v6

    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v6

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iD:[I

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iD:[I

    add-int/lit8 v6, v0, -0x3

    aget v4, v4, v6

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iD:[I

    add-int/lit8 v7, v0, -0x8

    aget v6, v6, v7

    xor-int/2addr v4, v6

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iD:[I

    add-int/lit8 v7, v0, -0xe

    aget v6, v6, v7

    xor-int/2addr v4, v6

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iD:[I

    add-int/lit8 v7, v0, -0x10

    aget v6, v6, v7

    xor-int/2addr v4, v6

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->b(II)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_6
    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iC:[I

    aget v4, v4, v0

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_7
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v6, 0x5

    invoke-static {v4, v6}, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->b(II)I

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v8, v3, v8

    and-int/2addr v7, v6

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v8

    or-int/2addr v6, v7

    add-int/2addr v4, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iD:[I

    aget v6, v6, v0

    add-int/2addr v4, v6

    const v6, 0x5a827999

    add-int/2addr v4, v6

    const/4 v6, 0x4

    const/4 v7, 0x3

    aget v7, v3, v7

    aput v7, v3, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    aget v7, v3, v7

    aput v7, v3, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    aget v7, v3, v7

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->b(II)I

    move-result v7

    aput v7, v3, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aget v7, v3, v7

    aput v7, v3, v6

    const/4 v6, 0x0

    aput v4, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_8
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v6, 0x5

    invoke-static {v4, v6}, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->b(II)I

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v8, v3, v8

    xor-int/2addr v6, v7

    xor-int/2addr v6, v8

    add-int/2addr v4, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iD:[I

    aget v6, v6, v0

    add-int/2addr v4, v6

    const v6, 0x6ed9eba1

    add-int/2addr v4, v6

    const/4 v6, 0x4

    const/4 v7, 0x3

    aget v7, v3, v7

    aput v7, v3, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    aget v7, v3, v7

    aput v7, v3, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    aget v7, v3, v7

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->b(II)I

    move-result v7

    aput v7, v3, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aget v7, v3, v7

    aput v7, v3, v6

    const/4 v6, 0x0

    aput v4, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_9
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v6, 0x5

    invoke-static {v4, v6}, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->b(II)I

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v8, v3, v8

    and-int v9, v6, v7

    and-int/2addr v6, v8

    or-int/2addr v6, v9

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    add-int/2addr v4, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iD:[I

    aget v6, v6, v0

    add-int/2addr v4, v6

    const v6, -0x70e44324

    add-int/2addr v4, v6

    const/4 v6, 0x4

    const/4 v7, 0x3

    aget v7, v3, v7

    aput v7, v3, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    aget v7, v3, v7

    aput v7, v3, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    aget v7, v3, v7

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->b(II)I

    move-result v7

    aput v7, v3, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aget v7, v3, v7

    aput v7, v3, v6

    const/4 v6, 0x0

    aput v4, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_a
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v6, 0x5

    invoke-static {v4, v6}, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->b(II)I

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v8, v3, v8

    xor-int/2addr v6, v7

    xor-int/2addr v6, v8

    add-int/2addr v4, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iD:[I

    aget v6, v6, v0

    add-int/2addr v4, v6

    const v6, -0x359d3e2a    # -3715189.5f

    add-int/2addr v4, v6

    const/4 v6, 0x4

    const/4 v7, 0x3

    aget v7, v3, v7

    aput v7, v3, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    aget v7, v3, v7

    aput v7, v3, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    aget v7, v3, v7

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->b(II)I

    move-result v7

    aput v7, v3, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aget v7, v3, v7

    aput v7, v3, v6

    const/4 v6, 0x0

    aput v4, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    :cond_b
    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iC:[I

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iC:[I

    aget v6, v6, v0

    aget v7, v3, v0

    add-int/2addr v6, v7

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_c
    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iD:[I

    const/4 v4, 0x0

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    :cond_d
    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->iC:[I

    aget v2, v2, v0

    shl-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, v2, 0x18

    aput-byte v4, v1, v3

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v3, 0x2

    ushr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v3, v3, 0x3

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method public getDigestOfString([B)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/kunlun/platform/android/gamecenter/midas/SHA;->getDigestOfBytes([B)[B

    move-result-object v3

    const-string v0, ""

    move-object v2, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_0

    return-object v2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, v3, v0

    const/16 v5, 0x10

    new-array v5, v5, [C

    fill-array-data v5, :array_0

    const/4 v6, 0x2

    new-array v6, v6, [C

    ushr-int/lit8 v7, v2, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v5, v7

    aput-char v7, v6, v1

    const/4 v7, 0x1

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v5, v2

    aput-char v2, v6, v7

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method
