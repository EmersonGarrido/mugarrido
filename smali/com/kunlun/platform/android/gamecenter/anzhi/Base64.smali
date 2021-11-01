.class public final Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final decodingTable:[B

.field private static final encodingTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x80

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->encodingTable:[B

    new-array v0, v3, [B

    sput-object v0, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-le v0, v1, :cond_3

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    return-void

    :cond_0
    sget-object v1, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(B)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x3d

    if-ne p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p0, :cond_2

    const/16 v2, 0x80

    if-lt p0, v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    aget-byte v2, v2, p0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static a([B)[B
    .locals 12

    const/4 v1, 0x0

    const/16 v11, 0x3d

    array-length v0, p0

    rem-int/lit8 v3, v0, 0x3

    if-nez v3, :cond_0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    :goto_0
    array-length v2, p0

    sub-int v4, v2, v3

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    :goto_2
    :pswitch_0
    return-object v0

    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    goto :goto_0

    :cond_1
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    sget-object v8, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->encodingTable:[B

    ushr-int/lit8 v9, v5, 0x2

    and-int/lit8 v9, v9, 0x3f

    aget-byte v8, v8, v9

    aput-byte v8, v0, v1

    add-int/lit8 v8, v1, 0x1

    sget-object v9, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->encodingTable:[B

    shl-int/lit8 v5, v5, 0x4

    ushr-int/lit8 v10, v6, 0x4

    or-int/2addr v5, v10

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v9, v5

    aput-byte v5, v0, v8

    add-int/lit8 v5, v1, 0x2

    sget-object v8, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->encodingTable:[B

    shl-int/lit8 v6, v6, 0x2

    ushr-int/lit8 v9, v7, 0x6

    or-int/2addr v6, v9

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v8, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v1, 0x3

    sget-object v6, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->encodingTable:[B

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v0, v5

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :pswitch_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v2, v1, 0x2

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    sget-object v4, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->encodingTable:[B

    aget-byte v2, v4, v2

    aput-byte v2, v0, v3

    array-length v2, v0

    add-int/lit8 v2, v2, -0x3

    sget-object v3, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->encodingTable:[B

    aget-byte v1, v3, v1

    aput-byte v1, v0, v2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aput-byte v11, v0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v11, v0, v1

    goto :goto_2

    :pswitch_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v4, v2, 0x4

    or-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    array-length v4, v0

    add-int/lit8 v4, v4, -0x4

    sget-object v5, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->encodingTable:[B

    aget-byte v3, v5, v3

    aput-byte v3, v0, v4

    array-length v3, v0

    add-int/lit8 v3, v3, -0x3

    sget-object v4, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->encodingTable:[B

    aget-byte v1, v4, v1

    aput-byte v1, v0, v3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    sget-object v3, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->encodingTable:[B

    aget-byte v2, v3, v2

    aput-byte v2, v0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v11, v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static final decode([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 10

    const/4 v1, 0x0

    const/16 v9, 0x3d

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    :goto_2
    move v2, v1

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    if-lt v2, v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_6

    sget-object v1, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v2, v2, v3

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->a(B)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    goto :goto_2

    :cond_5
    sget-object v4, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-byte v5, v5, v6

    sget-object v6, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    add-int/lit8 v7, v2, 0x2

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget-byte v6, v6, v7

    sget-object v7, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    add-int/lit8 v8, v2, 0x3

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v7, v7, v8

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v4, v1, 0x1

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v8, v6, 0x2

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x2

    shl-int/lit8 v5, v6, 0x6

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_7

    sget-object v1, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v2, v2, v4

    sget-object v4, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v4, v3

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v5, v2, 0x4

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v2, v2, v4

    sget-object v4, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v5, v3

    array-length v5, v0

    add-int/lit8 v5, v5, -0x3

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v6, v2, 0x4

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v5, v4, 0x2

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v4, 0x6

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0
.end method

.method public static final decode([B)[B
    .locals 10

    const/16 v9, 0x3d

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    :goto_1
    array-length v3, p0

    if-lt v0, v3, :cond_1

    new-array v3, v2, [B

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, v3, v0

    if-ne v0, v9, :cond_3

    array-length v0, v3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    :goto_2
    move v2, v1

    :goto_3
    array-length v4, v3

    add-int/lit8 v4, v4, -0x4

    if-lt v2, v4, :cond_5

    array-length v1, v3

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, v3, v1

    if-ne v1, v9, :cond_6

    sget-object v1, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    array-length v2, v3

    add-int/lit8 v2, v2, -0x4

    aget-byte v2, v3, v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    array-length v4, v3

    add-int/lit8 v4, v4, -0x3

    aget-byte v3, v3, v4

    aget-byte v2, v2, v3

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_0

    :cond_1
    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->a(B)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget-byte v5, p0, v0

    aput-byte v5, v4, v2

    move v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v3, v0

    if-ne v0, v9, :cond_4

    array-length v0, v3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    goto :goto_2

    :cond_4
    array-length v0, v3

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    goto :goto_2

    :cond_5
    sget-object v4, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    aget-byte v5, v3, v2

    aget-byte v4, v4, v5

    sget-object v5, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v3, v6

    aget-byte v5, v5, v6

    sget-object v6, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, v3, v7

    aget-byte v6, v6, v7

    sget-object v7, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    add-int/lit8 v8, v2, 0x3

    aget-byte v8, v3, v8

    aget-byte v7, v7, v8

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v4, v1, 0x1

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v8, v6, 0x2

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x2

    shl-int/lit8 v5, v6, 0x6

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_3

    :cond_6
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v3, v1

    if-ne v1, v9, :cond_7

    sget-object v1, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    array-length v2, v3

    add-int/lit8 v2, v2, -0x4

    aget-byte v2, v3, v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    array-length v4, v3

    add-int/lit8 v4, v4, -0x3

    aget-byte v4, v3, v4

    aget-byte v2, v2, v4

    sget-object v4, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    aget-byte v3, v3, v5

    aget-byte v3, v4, v3

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v5, v2, 0x4

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    array-length v2, v3

    add-int/lit8 v2, v2, -0x4

    aget-byte v2, v3, v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    array-length v4, v3

    add-int/lit8 v4, v4, -0x3

    aget-byte v4, v3, v4

    aget-byte v2, v2, v4

    sget-object v4, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    aget-byte v5, v3, v5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->decodingTable:[B

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-byte v3, v3, v6

    aget-byte v3, v5, v3

    array-length v5, v0

    add-int/lit8 v5, v5, -0x3

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v6, v2, 0x4

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v5, v4, 0x2

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v4, 0x6

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0
.end method

.method public static final encodeToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final encodeToString([B)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/kunlun/platform/android/gamecenter/anzhi/Base64;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
