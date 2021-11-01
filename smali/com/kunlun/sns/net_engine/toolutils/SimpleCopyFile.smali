.class public final Lcom/kunlun/sns/net_engine/toolutils/SimpleCopyFile;
.super Ljava/lang/Object;
.source "SimpleCopyFile.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static copyFileFromAssetsUseBufferedStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetsFileName"    # Ljava/lang/String;
    .param p2, "outFilePath"    # Ljava/lang/String;

    .prologue
    .line 423
    const/4 v2, 0x0

    .line 424
    .local v2, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 428
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 429
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 430
    .end local v5    # "os":Ljava/io/OutputStream;
    .local v6, "os":Ljava/io/OutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 433
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 434
    .local v4, "length":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    .line 440
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 444
    if-eqz v3, :cond_6

    .line 446
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 451
    const/4 v2, 0x0

    .line 455
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_1
    if-eqz v6, :cond_5

    .line 457
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 462
    const/4 v5, 0x0

    .line 466
    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_2
    return-void

    .line 437
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_1
    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v6, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    goto :goto_0

    .line 441
    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v2, v3

    .line 442
    .end local v3    # "is":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 444
    if-eqz v2, :cond_2

    .line 446
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 451
    const/4 v2, 0x0

    .line 455
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    if-eqz v5, :cond_0

    .line 457
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 462
    const/4 v5, 0x0

    .line 463
    goto :goto_2

    .line 447
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 449
    .local v1, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 451
    const/4 v2, 0x0

    goto :goto_4

    .line 450
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 451
    const/4 v2, 0x0

    .line 452
    throw v7

    .line 458
    :catch_2
    move-exception v1

    .line 460
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 462
    const/4 v5, 0x0

    goto :goto_2

    .line 461
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    .line 462
    const/4 v5, 0x0

    .line 463
    throw v7

    .line 443
    :catchall_2
    move-exception v7

    .line 444
    :goto_5
    if-eqz v2, :cond_3

    .line 446
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 451
    const/4 v2, 0x0

    .line 455
    :cond_3
    :goto_6
    if-eqz v5, :cond_4

    .line 457
    :try_start_c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 462
    const/4 v5, 0x0

    .line 465
    :cond_4
    :goto_7
    throw v7

    .line 447
    :catch_3
    move-exception v1

    .line 449
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 451
    const/4 v2, 0x0

    goto :goto_6

    .line 450
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v7

    .line 451
    const/4 v2, 0x0

    .line 452
    throw v7

    .line 458
    :catch_4
    move-exception v1

    .line 460
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 462
    const/4 v5, 0x0

    goto :goto_7

    .line 461
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v7

    .line 462
    const/4 v5, 0x0

    .line 463
    throw v7

    .line 447
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_5
    move-exception v1

    .line 449
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 451
    const/4 v2, 0x0

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 450
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_5
    move-exception v7

    .line 451
    const/4 v2, 0x0

    .line 452
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    throw v7

    .line 458
    :catch_6
    move-exception v1

    .line 460
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 462
    const/4 v5, 0x0

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 461
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catchall_6
    move-exception v7

    .line 462
    const/4 v5, 0x0

    .line 463
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    throw v7

    .line 443
    .end local v0    # "buffer":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "length":I
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_7
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catchall_8
    move-exception v7

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 441
    :catch_7
    move-exception v1

    goto :goto_3

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_3

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "length":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_5
    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_6
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static copyFileFromAssetsUseNio(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetsFileName"    # Ljava/lang/String;
    .param p2, "outFilePath"    # Ljava/lang/String;

    .prologue
    .line 363
    const/4 v5, 0x0

    .line 364
    .local v5, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 365
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 369
    .local v8, "writeChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 370
    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 371
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 372
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 373
    .local v0, "buffer":[B
    const/16 v9, 0x400

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 375
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 376
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    move-result v7

    .line 377
    .local v7, "length":I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_2

    .line 387
    if-eqz v6, :cond_9

    .line 389
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 394
    const/4 v5, 0x0

    .line 398
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_1
    if-eqz v8, :cond_0

    .line 400
    :try_start_4
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 405
    const/4 v8, 0x0

    .line 409
    :cond_0
    :goto_2
    if-eqz v4, :cond_8

    .line 411
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 416
    const/4 v3, 0x0

    .line 420
    .end local v0    # "buffer":[B
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "length":I
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_3
    return-void

    .line 380
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "length":I
    :cond_2
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 381
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 382
    invoke-virtual {v8, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    goto :goto_0

    .line 384
    .end local v0    # "buffer":[B
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "length":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 385
    .end local v6    # "is":Ljava/io/InputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 387
    if-eqz v5, :cond_3

    .line 389
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 394
    const/4 v5, 0x0

    .line 398
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_5
    if-eqz v8, :cond_4

    .line 400
    :try_start_9
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 405
    const/4 v8, 0x0

    .line 409
    :cond_4
    :goto_6
    if-eqz v3, :cond_1

    .line 411
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 416
    const/4 v3, 0x0

    .line 417
    goto :goto_3

    .line 390
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 392
    .local v2, "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 394
    const/4 v5, 0x0

    goto :goto_5

    .line 393
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 394
    const/4 v5, 0x0

    .line 395
    throw v9

    .line 401
    :catch_2
    move-exception v2

    .line 403
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 405
    const/4 v8, 0x0

    goto :goto_6

    .line 404
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 405
    const/4 v8, 0x0

    .line 406
    throw v9

    .line 412
    :catch_3
    move-exception v2

    .line 414
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 416
    const/4 v3, 0x0

    goto :goto_3

    .line 415
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v9

    .line 416
    const/4 v3, 0x0

    .line 417
    throw v9

    .line 386
    :catchall_3
    move-exception v9

    .line 387
    :goto_7
    if-eqz v5, :cond_5

    .line 389
    :try_start_e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 394
    const/4 v5, 0x0

    .line 398
    :cond_5
    :goto_8
    if-eqz v8, :cond_6

    .line 400
    :try_start_f
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 405
    const/4 v8, 0x0

    .line 409
    :cond_6
    :goto_9
    if-eqz v3, :cond_7

    .line 411
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 416
    const/4 v3, 0x0

    .line 419
    :cond_7
    :goto_a
    throw v9

    .line 390
    :catch_4
    move-exception v2

    .line 392
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 394
    const/4 v5, 0x0

    goto :goto_8

    .line 393
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v9

    .line 394
    const/4 v5, 0x0

    .line 395
    throw v9

    .line 401
    :catch_5
    move-exception v2

    .line 403
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_12
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 405
    const/4 v8, 0x0

    goto :goto_9

    .line 404
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v9

    .line 405
    const/4 v8, 0x0

    .line 406
    throw v9

    .line 412
    :catch_6
    move-exception v2

    .line 414
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 416
    const/4 v3, 0x0

    goto :goto_a

    .line 415
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_6
    move-exception v9

    .line 416
    const/4 v3, 0x0

    .line 417
    throw v9

    .line 390
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "length":I
    :catch_7
    move-exception v2

    .line 392
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 394
    const/4 v5, 0x0

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 393
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catchall_7
    move-exception v9

    .line 394
    const/4 v5, 0x0

    .line 395
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    throw v9

    .line 401
    :catch_8
    move-exception v2

    .line 403
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 405
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 404
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_8
    move-exception v9

    .line 405
    const/4 v8, 0x0

    .line 406
    throw v9

    .line 412
    :catch_9
    move-exception v2

    .line 414
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 416
    const/4 v3, 0x0

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 415
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_9
    move-exception v9

    .line 416
    const/4 v3, 0x0

    .line 417
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    throw v9

    .line 386
    .end local v0    # "buffer":[B
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "length":I
    .restart local v6    # "is":Ljava/io/InputStream;
    :catchall_a
    move-exception v9

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_7

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catchall_b
    move-exception v9

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_7

    .line 384
    :catch_a
    move-exception v2

    goto/16 :goto_4

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_b
    move-exception v2

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto/16 :goto_4

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "length":I
    :cond_8
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_9
    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method public static copyFileFromAssetsUseNioMapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetsFileName"    # Ljava/lang/String;
    .param p2, "outFilePath"    # Ljava/lang/String;

    .prologue
    .line 477
    const/4 v12, 0x0

    .line 478
    .local v12, "is":Ljava/io/DataInputStream;
    const/4 v10, 0x0

    .line 479
    .local v10, "fos":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 482
    .local v2, "writeChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v13, Ljava/io/DataInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 483
    .end local v12    # "is":Ljava/io/DataInputStream;
    .local v13, "is":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 484
    .end local v10    # "fos":Ljava/io/RandomAccessFile;
    .local v11, "fos":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 485
    invoke-virtual {v13}, Ljava/io/DataInputStream;->available()I

    move-result v9

    .line 486
    .local v9, "fileSize":I
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    int-to-long v6, v9

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v15

    .line 488
    .local v15, "mbbo":Ljava/nio/MappedByteBuffer;
    const/16 v3, 0x2000

    new-array v0, v3, [B

    move-object/from16 v16, v0

    .line 490
    .local v16, "tmpBuf":[B
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/DataInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    move-result v14

    .line 491
    .local v14, "len":I
    const/4 v3, -0x1

    if-ne v14, v3, :cond_2

    .line 499
    if-eqz v13, :cond_9

    .line 501
    :try_start_3
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 506
    const/4 v12, 0x0

    .line 510
    .end local v13    # "is":Ljava/io/DataInputStream;
    .restart local v12    # "is":Ljava/io/DataInputStream;
    :goto_1
    if-eqz v2, :cond_0

    .line 512
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 517
    const/4 v2, 0x0

    .line 521
    :cond_0
    :goto_2
    if-eqz v11, :cond_8

    .line 523
    :try_start_5
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 528
    const/4 v10, 0x0

    .line 532
    .end local v9    # "fileSize":I
    .end local v11    # "fos":Ljava/io/RandomAccessFile;
    .end local v14    # "len":I
    .end local v15    # "mbbo":Ljava/nio/MappedByteBuffer;
    .end local v16    # "tmpBuf":[B
    .restart local v10    # "fos":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_3
    return-void

    .line 494
    .end local v10    # "fos":Ljava/io/RandomAccessFile;
    .end local v12    # "is":Ljava/io/DataInputStream;
    .restart local v9    # "fileSize":I
    .restart local v11    # "fos":Ljava/io/RandomAccessFile;
    .restart local v13    # "is":Ljava/io/DataInputStream;
    .restart local v14    # "len":I
    .restart local v15    # "mbbo":Ljava/nio/MappedByteBuffer;
    .restart local v16    # "tmpBuf":[B
    :cond_2
    const/4 v3, 0x0

    :try_start_6
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v3, v14}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    goto :goto_0

    .line 496
    .end local v9    # "fileSize":I
    .end local v14    # "len":I
    .end local v15    # "mbbo":Ljava/nio/MappedByteBuffer;
    .end local v16    # "tmpBuf":[B
    :catch_0
    move-exception v8

    move-object v10, v11

    .end local v11    # "fos":Ljava/io/RandomAccessFile;
    .restart local v10    # "fos":Ljava/io/RandomAccessFile;
    move-object v12, v13

    .line 497
    .end local v13    # "is":Ljava/io/DataInputStream;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v12    # "is":Ljava/io/DataInputStream;
    :goto_4
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 499
    if-eqz v12, :cond_3

    .line 501
    :try_start_8
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 506
    const/4 v12, 0x0

    .line 510
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 512
    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 517
    const/4 v2, 0x0

    .line 521
    :cond_4
    :goto_6
    if-eqz v10, :cond_1

    .line 523
    :try_start_a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 528
    const/4 v10, 0x0

    .line 529
    goto :goto_3

    .line 502
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 504
    .local v8, "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 506
    const/4 v12, 0x0

    goto :goto_5

    .line 505
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 506
    const/4 v12, 0x0

    .line 507
    throw v3

    .line 513
    :catch_2
    move-exception v8

    .line 515
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 517
    const/4 v2, 0x0

    goto :goto_6

    .line 516
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 517
    const/4 v2, 0x0

    .line 518
    throw v3

    .line 524
    :catch_3
    move-exception v8

    .line 526
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 528
    const/4 v10, 0x0

    goto :goto_3

    .line 527
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v3

    .line 528
    const/4 v10, 0x0

    .line 529
    throw v3

    .line 498
    :catchall_3
    move-exception v3

    .line 499
    :goto_7
    if-eqz v12, :cond_5

    .line 501
    :try_start_e
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 506
    const/4 v12, 0x0

    .line 510
    :cond_5
    :goto_8
    if-eqz v2, :cond_6

    .line 512
    :try_start_f
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 517
    const/4 v2, 0x0

    .line 521
    :cond_6
    :goto_9
    if-eqz v10, :cond_7

    .line 523
    :try_start_10
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 528
    const/4 v10, 0x0

    .line 531
    :cond_7
    :goto_a
    throw v3

    .line 502
    :catch_4
    move-exception v8

    .line 504
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 506
    const/4 v12, 0x0

    goto :goto_8

    .line 505
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v3

    .line 506
    const/4 v12, 0x0

    .line 507
    throw v3

    .line 513
    :catch_5
    move-exception v8

    .line 515
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_12
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 517
    const/4 v2, 0x0

    goto :goto_9

    .line 516
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v3

    .line 517
    const/4 v2, 0x0

    .line 518
    throw v3

    .line 524
    :catch_6
    move-exception v8

    .line 526
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 528
    const/4 v10, 0x0

    goto :goto_a

    .line 527
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_6
    move-exception v3

    .line 528
    const/4 v10, 0x0

    .line 529
    throw v3

    .line 502
    .end local v10    # "fos":Ljava/io/RandomAccessFile;
    .end local v12    # "is":Ljava/io/DataInputStream;
    .restart local v9    # "fileSize":I
    .restart local v11    # "fos":Ljava/io/RandomAccessFile;
    .restart local v13    # "is":Ljava/io/DataInputStream;
    .restart local v14    # "len":I
    .restart local v15    # "mbbo":Ljava/nio/MappedByteBuffer;
    .restart local v16    # "tmpBuf":[B
    :catch_7
    move-exception v8

    .line 504
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 506
    const/4 v12, 0x0

    .end local v13    # "is":Ljava/io/DataInputStream;
    .restart local v12    # "is":Ljava/io/DataInputStream;
    goto :goto_1

    .line 505
    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "is":Ljava/io/DataInputStream;
    .restart local v13    # "is":Ljava/io/DataInputStream;
    :catchall_7
    move-exception v3

    .line 506
    const/4 v12, 0x0

    .line 507
    .end local v13    # "is":Ljava/io/DataInputStream;
    .restart local v12    # "is":Ljava/io/DataInputStream;
    throw v3

    .line 513
    :catch_8
    move-exception v8

    .line 515
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 517
    const/4 v2, 0x0

    goto :goto_2

    .line 516
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_8
    move-exception v3

    .line 517
    const/4 v2, 0x0

    .line 518
    throw v3

    .line 524
    :catch_9
    move-exception v8

    .line 526
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 528
    const/4 v10, 0x0

    .end local v11    # "fos":Ljava/io/RandomAccessFile;
    .restart local v10    # "fos":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .line 527
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "fos":Ljava/io/RandomAccessFile;
    .restart local v11    # "fos":Ljava/io/RandomAccessFile;
    :catchall_9
    move-exception v3

    .line 528
    const/4 v10, 0x0

    .line 529
    .end local v11    # "fos":Ljava/io/RandomAccessFile;
    .restart local v10    # "fos":Ljava/io/RandomAccessFile;
    throw v3

    .line 498
    .end local v9    # "fileSize":I
    .end local v12    # "is":Ljava/io/DataInputStream;
    .end local v14    # "len":I
    .end local v15    # "mbbo":Ljava/nio/MappedByteBuffer;
    .end local v16    # "tmpBuf":[B
    .restart local v13    # "is":Ljava/io/DataInputStream;
    :catchall_a
    move-exception v3

    move-object v12, v13

    .end local v13    # "is":Ljava/io/DataInputStream;
    .restart local v12    # "is":Ljava/io/DataInputStream;
    goto :goto_7

    .end local v10    # "fos":Ljava/io/RandomAccessFile;
    .end local v12    # "is":Ljava/io/DataInputStream;
    .restart local v11    # "fos":Ljava/io/RandomAccessFile;
    .restart local v13    # "is":Ljava/io/DataInputStream;
    :catchall_b
    move-exception v3

    move-object v10, v11

    .end local v11    # "fos":Ljava/io/RandomAccessFile;
    .restart local v10    # "fos":Ljava/io/RandomAccessFile;
    move-object v12, v13

    .end local v13    # "is":Ljava/io/DataInputStream;
    .restart local v12    # "is":Ljava/io/DataInputStream;
    goto :goto_7

    .line 496
    :catch_a
    move-exception v8

    goto/16 :goto_4

    .end local v12    # "is":Ljava/io/DataInputStream;
    .restart local v13    # "is":Ljava/io/DataInputStream;
    :catch_b
    move-exception v8

    move-object v12, v13

    .end local v13    # "is":Ljava/io/DataInputStream;
    .restart local v12    # "is":Ljava/io/DataInputStream;
    goto/16 :goto_4

    .end local v10    # "fos":Ljava/io/RandomAccessFile;
    .restart local v9    # "fileSize":I
    .restart local v11    # "fos":Ljava/io/RandomAccessFile;
    .restart local v14    # "len":I
    .restart local v15    # "mbbo":Ljava/nio/MappedByteBuffer;
    .restart local v16    # "tmpBuf":[B
    :cond_8
    move-object v10, v11

    .end local v11    # "fos":Ljava/io/RandomAccessFile;
    .restart local v10    # "fos":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .end local v10    # "fos":Ljava/io/RandomAccessFile;
    .end local v12    # "is":Ljava/io/DataInputStream;
    .restart local v11    # "fos":Ljava/io/RandomAccessFile;
    .restart local v13    # "is":Ljava/io/DataInputStream;
    :cond_9
    move-object v12, v13

    .end local v13    # "is":Ljava/io/DataInputStream;
    .restart local v12    # "is":Ljava/io/DataInputStream;
    goto/16 :goto_1
.end method

.method public static copyFileFromAssetsUseStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetsFileName"    # Ljava/lang/String;
    .param p2, "outFilePath"    # Ljava/lang/String;

    .prologue
    .line 317
    const/4 v2, 0x0

    .line 318
    .local v2, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 322
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 323
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 324
    .end local v4    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [B

    .line 327
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 328
    .local v3, "length":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    .line 334
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 338
    if-eqz v2, :cond_0

    .line 340
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 345
    const/4 v2, 0x0

    .line 349
    :cond_0
    :goto_1
    if-eqz v5, :cond_6

    .line 351
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 356
    const/4 v4, 0x0

    .line 360
    .end local v0    # "buffer":[B
    .end local v3    # "length":I
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :cond_1
    :goto_2
    return-void

    .line 331
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "length":I
    .restart local v5    # "os":Ljava/io/OutputStream;
    :cond_2
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v5, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    goto :goto_0

    .line 335
    .end local v0    # "buffer":[B
    .end local v3    # "length":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 336
    .end local v5    # "os":Ljava/io/OutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 338
    if-eqz v2, :cond_3

    .line 340
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 345
    const/4 v2, 0x0

    .line 349
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    if-eqz v4, :cond_1

    .line 351
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 356
    const/4 v4, 0x0

    .line 357
    goto :goto_2

    .line 341
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 343
    .local v1, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 345
    const/4 v2, 0x0

    goto :goto_4

    .line 344
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 345
    const/4 v2, 0x0

    .line 346
    throw v6

    .line 352
    :catch_2
    move-exception v1

    .line 354
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 356
    const/4 v4, 0x0

    goto :goto_2

    .line 355
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    .line 356
    const/4 v4, 0x0

    .line 357
    throw v6

    .line 337
    :catchall_2
    move-exception v6

    .line 338
    :goto_5
    if-eqz v2, :cond_4

    .line 340
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 345
    const/4 v2, 0x0

    .line 349
    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 351
    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 356
    const/4 v4, 0x0

    .line 359
    :cond_5
    :goto_7
    throw v6

    .line 341
    :catch_3
    move-exception v1

    .line 343
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 345
    const/4 v2, 0x0

    goto :goto_6

    .line 344
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v6

    .line 345
    const/4 v2, 0x0

    .line 346
    throw v6

    .line 352
    :catch_4
    move-exception v1

    .line 354
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 356
    const/4 v4, 0x0

    goto :goto_7

    .line 355
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v6

    .line 356
    const/4 v4, 0x0

    .line 357
    throw v6

    .line 341
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "length":I
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catch_5
    move-exception v1

    .line 343
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 345
    const/4 v2, 0x0

    goto :goto_1

    .line 344
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v6

    .line 345
    const/4 v2, 0x0

    .line 346
    throw v6

    .line 352
    :catch_6
    move-exception v1

    .line 354
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 356
    const/4 v4, 0x0

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 355
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catchall_6
    move-exception v6

    .line 356
    const/4 v4, 0x0

    .line 357
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    throw v6

    .line 337
    .end local v0    # "buffer":[B
    .end local v3    # "length":I
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catchall_7
    move-exception v6

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_5

    .line 335
    :catch_7
    move-exception v1

    goto :goto_3

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "length":I
    .restart local v5    # "os":Ljava/io/OutputStream;
    :cond_6
    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static copyFileUseBufferedStream(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "destination"    # Ljava/lang/String;

    .prologue
    .line 253
    const/4 v7, 0x0

    .line 254
    .local v7, "result":Z
    const/4 v2, 0x0

    .line 255
    .local v2, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 260
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x2000

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 261
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x2000

    invoke-direct {v6, v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 262
    .end local v5    # "os":Ljava/io/OutputStream;
    .local v6, "os":Ljava/io/OutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 264
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 265
    .local v4, "length":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_1

    .line 271
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 273
    const/4 v7, 0x1

    .line 280
    if-eqz v3, :cond_6

    .line 282
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 287
    const/4 v2, 0x0

    .line 291
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_1
    if-eqz v6, :cond_5

    .line 293
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 298
    const/4 v5, 0x0

    .line 303
    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_2
    return v7

    .line 268
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_1
    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v6, v0, v8, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    goto :goto_0

    .line 274
    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v2, v3

    .line 276
    .end local v3    # "is":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 277
    const/4 v7, 0x0

    .line 280
    if-eqz v2, :cond_2

    .line 282
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 287
    const/4 v2, 0x0

    .line 291
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    if-eqz v5, :cond_0

    .line 293
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 298
    const/4 v5, 0x0

    .line 299
    goto :goto_2

    .line 283
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 285
    .local v1, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 287
    const/4 v2, 0x0

    goto :goto_4

    .line 286
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 287
    const/4 v2, 0x0

    .line 288
    throw v8

    .line 294
    :catch_2
    move-exception v1

    .line 296
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 298
    const/4 v5, 0x0

    goto :goto_2

    .line 297
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    .line 298
    const/4 v5, 0x0

    .line 299
    throw v8

    .line 278
    :catchall_2
    move-exception v8

    .line 280
    :goto_5
    if-eqz v2, :cond_3

    .line 282
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 287
    const/4 v2, 0x0

    .line 291
    :cond_3
    :goto_6
    if-eqz v5, :cond_4

    .line 293
    :try_start_c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 298
    const/4 v5, 0x0

    .line 301
    :cond_4
    :goto_7
    throw v8

    .line 283
    :catch_3
    move-exception v1

    .line 285
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 287
    const/4 v2, 0x0

    goto :goto_6

    .line 286
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v8

    .line 287
    const/4 v2, 0x0

    .line 288
    throw v8

    .line 294
    :catch_4
    move-exception v1

    .line 296
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 298
    const/4 v5, 0x0

    goto :goto_7

    .line 297
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v8

    .line 298
    const/4 v5, 0x0

    .line 299
    throw v8

    .line 283
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_5
    move-exception v1

    .line 285
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 287
    const/4 v2, 0x0

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 286
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_5
    move-exception v8

    .line 287
    const/4 v2, 0x0

    .line 288
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    throw v8

    .line 294
    :catch_6
    move-exception v1

    .line 296
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 298
    const/4 v5, 0x0

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 297
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catchall_6
    move-exception v8

    .line 298
    const/4 v5, 0x0

    .line 299
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    throw v8

    .line 278
    .end local v0    # "buffer":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "length":I
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_7
    move-exception v8

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catchall_8
    move-exception v8

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 274
    :catch_7
    move-exception v1

    goto :goto_3

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_3

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "length":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_5
    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_6
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static copyFileUseNio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "destination"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 124
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 125
    .local v7, "readChannel":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 127
    .local v8, "writeChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 128
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    .line 129
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 130
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 131
    const/16 v9, 0x400

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 133
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 134
    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    move-result v6

    .line 135
    .local v6, "len":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    .line 146
    if-eqz v7, :cond_0

    .line 148
    :try_start_3
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 153
    const/4 v7, 0x0

    .line 158
    :cond_0
    :goto_1
    if-eqz v8, :cond_1

    .line 160
    :try_start_4
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    .line 165
    const/4 v8, 0x0

    .line 169
    :cond_1
    :goto_2
    if-eqz v3, :cond_c

    .line 171
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 176
    const/4 v2, 0x0

    .line 180
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v5, :cond_b

    .line 182
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    .line 187
    const/4 v4, 0x0

    .line 192
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_4
    return-void

    .line 138
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    :cond_3
    :try_start_7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 139
    invoke-virtual {v8, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_e

    goto :goto_0

    .line 141
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "len":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 143
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 146
    if-eqz v7, :cond_4

    .line 148
    :try_start_9
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 153
    const/4 v7, 0x0

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_6
    if-eqz v8, :cond_5

    .line 160
    :try_start_a
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 165
    const/4 v8, 0x0

    .line 169
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 171
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 176
    const/4 v2, 0x0

    .line 180
    :cond_6
    :goto_8
    if-eqz v4, :cond_2

    .line 182
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 187
    const/4 v4, 0x0

    .line 188
    goto :goto_4

    .line 149
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 153
    const/4 v7, 0x0

    goto :goto_6

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 153
    const/4 v7, 0x0

    .line 154
    throw v9

    .line 161
    :catch_2
    move-exception v1

    .line 163
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 165
    const/4 v8, 0x0

    goto :goto_7

    .line 164
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 165
    const/4 v8, 0x0

    .line 166
    throw v9

    .line 172
    :catch_3
    move-exception v1

    .line 174
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 176
    const/4 v2, 0x0

    goto :goto_8

    .line 175
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v9

    .line 176
    const/4 v2, 0x0

    .line 177
    throw v9

    .line 183
    :catch_4
    move-exception v1

    .line 185
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 187
    const/4 v4, 0x0

    goto :goto_4

    .line 186
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v9

    .line 187
    const/4 v4, 0x0

    .line 188
    throw v9

    .line 144
    :catchall_4
    move-exception v9

    .line 146
    :goto_9
    if-eqz v7, :cond_7

    .line 148
    :try_start_11
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 153
    const/4 v7, 0x0

    .line 158
    :cond_7
    :goto_a
    if-eqz v8, :cond_8

    .line 160
    :try_start_12
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 165
    const/4 v8, 0x0

    .line 169
    :cond_8
    :goto_b
    if-eqz v2, :cond_9

    .line 171
    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 176
    const/4 v2, 0x0

    .line 180
    :cond_9
    :goto_c
    if-eqz v4, :cond_a

    .line 182
    :try_start_14
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 187
    const/4 v4, 0x0

    .line 190
    :cond_a
    :goto_d
    throw v9

    .line 149
    :catch_5
    move-exception v1

    .line 151
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 153
    const/4 v7, 0x0

    goto :goto_a

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v9

    .line 153
    const/4 v7, 0x0

    .line 154
    throw v9

    .line 161
    :catch_6
    move-exception v1

    .line 163
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 165
    const/4 v8, 0x0

    goto :goto_b

    .line 164
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_6
    move-exception v9

    .line 165
    const/4 v8, 0x0

    .line 166
    throw v9

    .line 172
    :catch_7
    move-exception v1

    .line 174
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_17
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 176
    const/4 v2, 0x0

    goto :goto_c

    .line 175
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v9

    .line 176
    const/4 v2, 0x0

    .line 177
    throw v9

    .line 183
    :catch_8
    move-exception v1

    .line 185
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_18
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 187
    const/4 v4, 0x0

    goto :goto_d

    .line 186
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_8
    move-exception v9

    .line 187
    const/4 v4, 0x0

    .line 188
    throw v9

    .line 149
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    :catch_9
    move-exception v1

    .line 151
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_19
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 153
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_9
    move-exception v9

    .line 153
    const/4 v7, 0x0

    .line 154
    throw v9

    .line 161
    :catch_a
    move-exception v1

    .line 163
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 165
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 164
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_a
    move-exception v9

    .line 165
    const/4 v8, 0x0

    .line 166
    throw v9

    .line 172
    :catch_b
    move-exception v1

    .line 174
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 176
    const/4 v2, 0x0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 175
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_b
    move-exception v9

    .line 176
    const/4 v2, 0x0

    .line 177
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    throw v9

    .line 183
    :catch_c
    move-exception v1

    .line 185
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    .line 187
    const/4 v4, 0x0

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 186
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_c
    move-exception v9

    .line 187
    const/4 v4, 0x0

    .line 188
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    throw v9

    .line 144
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_d
    move-exception v9

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_e
    move-exception v9

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_9

    .line 141
    :catch_d
    move-exception v1

    goto/16 :goto_5

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_e
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    :cond_b
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_c
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static copyFileUseNioMapped(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 24
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "destination"    # Ljava/lang/String;

    .prologue
    .line 39
    const/16 v21, 0x0

    .line 40
    .local v21, "result":Z
    const/16 v17, 0x0

    .line 41
    .local v17, "rafi":Ljava/io/RandomAccessFile;
    const/16 v19, 0x0

    .line 42
    .local v19, "rafo":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 43
    .local v2, "readChannel":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 45
    .local v8, "writeChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v18, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 46
    .end local v17    # "rafi":Ljava/io/RandomAccessFile;
    .local v18, "rafi":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v20, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    .line 47
    .end local v19    # "rafo":Ljava/io/RandomAccessFile;
    .local v20, "rafo":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 48
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 49
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 50
    .local v6, "fileSize":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v15

    .line 51
    .local v15, "mbbi":Ljava/nio/MappedByteBuffer;
    sget-object v9, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v10, 0x0

    move-wide v12, v6

    invoke-virtual/range {v8 .. v13}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v16

    .line 53
    .local v16, "mbbo":Ljava/nio/MappedByteBuffer;
    const/16 v3, 0x2000

    new-array v0, v3, [B

    move-object/from16 v22, v0

    .line 54
    .local v22, "tmpBuf":[B
    :goto_0
    invoke-virtual {v15}, Ljava/nio/MappedByteBuffer;->hasRemaining()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    move-result v3

    if-nez v3, :cond_3

    .line 59
    const/16 v21, 0x1

    .line 66
    if-eqz v2, :cond_0

    .line 68
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 73
    const/4 v2, 0x0

    .line 78
    :cond_0
    :goto_1
    if-eqz v8, :cond_1

    .line 80
    :try_start_4
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    .line 85
    const/4 v8, 0x0

    .line 89
    :cond_1
    :goto_2
    if-eqz v18, :cond_c

    .line 91
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 96
    const/16 v17, 0x0

    .line 100
    .end local v18    # "rafi":Ljava/io/RandomAccessFile;
    .restart local v17    # "rafi":Ljava/io/RandomAccessFile;
    :goto_3
    if-eqz v20, :cond_b

    .line 102
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    .line 107
    const/16 v19, 0x0

    .line 112
    .end local v6    # "fileSize":J
    .end local v15    # "mbbi":Ljava/nio/MappedByteBuffer;
    .end local v16    # "mbbo":Ljava/nio/MappedByteBuffer;
    .end local v20    # "rafo":Ljava/io/RandomAccessFile;
    .end local v22    # "tmpBuf":[B
    .restart local v19    # "rafo":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_4
    return v21

    .line 55
    .end local v17    # "rafi":Ljava/io/RandomAccessFile;
    .end local v19    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v6    # "fileSize":J
    .restart local v15    # "mbbi":Ljava/nio/MappedByteBuffer;
    .restart local v16    # "mbbo":Ljava/nio/MappedByteBuffer;
    .restart local v18    # "rafi":Ljava/io/RandomAccessFile;
    .restart local v20    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v22    # "tmpBuf":[B
    :cond_3
    :try_start_7
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v23

    .line 56
    .local v23, "tmpByteBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_e

    goto :goto_0

    .line 60
    .end local v6    # "fileSize":J
    .end local v15    # "mbbi":Ljava/nio/MappedByteBuffer;
    .end local v16    # "mbbo":Ljava/nio/MappedByteBuffer;
    .end local v22    # "tmpBuf":[B
    .end local v23    # "tmpByteBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v14

    move-object/from16 v19, v20

    .end local v20    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v19    # "rafo":Ljava/io/RandomAccessFile;
    move-object/from16 v17, v18

    .line 62
    .end local v18    # "rafi":Ljava/io/RandomAccessFile;
    .local v14, "e":Ljava/lang/Exception;
    .restart local v17    # "rafi":Ljava/io/RandomAccessFile;
    :goto_5
    :try_start_8
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 63
    const/16 v21, 0x0

    .line 66
    if-eqz v2, :cond_4

    .line 68
    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 73
    const/4 v2, 0x0

    .line 78
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_6
    if-eqz v8, :cond_5

    .line 80
    :try_start_a
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 85
    const/4 v8, 0x0

    .line 89
    :cond_5
    :goto_7
    if-eqz v17, :cond_6

    .line 91
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 96
    const/16 v17, 0x0

    .line 100
    :cond_6
    :goto_8
    if-eqz v19, :cond_2

    .line 102
    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 107
    const/16 v19, 0x0

    .line 108
    goto :goto_4

    .line 69
    .restart local v14    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v14

    .line 71
    .local v14, "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 73
    const/4 v2, 0x0

    goto :goto_6

    .line 72
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 73
    const/4 v2, 0x0

    .line 74
    throw v3

    .line 81
    :catch_2
    move-exception v14

    .line 83
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 85
    const/4 v8, 0x0

    goto :goto_7

    .line 84
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 85
    const/4 v8, 0x0

    .line 86
    throw v3

    .line 92
    :catch_3
    move-exception v14

    .line 94
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 96
    const/16 v17, 0x0

    goto :goto_8

    .line 95
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v3

    .line 96
    const/16 v17, 0x0

    .line 97
    throw v3

    .line 103
    :catch_4
    move-exception v14

    .line 105
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 107
    const/16 v19, 0x0

    goto :goto_4

    .line 106
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v3

    .line 107
    const/16 v19, 0x0

    .line 108
    throw v3

    .line 64
    :catchall_4
    move-exception v3

    .line 66
    :goto_9
    if-eqz v2, :cond_7

    .line 68
    :try_start_11
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 73
    const/4 v2, 0x0

    .line 78
    :cond_7
    :goto_a
    if-eqz v8, :cond_8

    .line 80
    :try_start_12
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 85
    const/4 v8, 0x0

    .line 89
    :cond_8
    :goto_b
    if-eqz v17, :cond_9

    .line 91
    :try_start_13
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 96
    const/16 v17, 0x0

    .line 100
    :cond_9
    :goto_c
    if-eqz v19, :cond_a

    .line 102
    :try_start_14
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 107
    const/16 v19, 0x0

    .line 110
    :cond_a
    :goto_d
    throw v3

    .line 69
    :catch_5
    move-exception v14

    .line 71
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 73
    const/4 v2, 0x0

    goto :goto_a

    .line 72
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v3

    .line 73
    const/4 v2, 0x0

    .line 74
    throw v3

    .line 81
    :catch_6
    move-exception v14

    .line 83
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 85
    const/4 v8, 0x0

    goto :goto_b

    .line 84
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_6
    move-exception v3

    .line 85
    const/4 v8, 0x0

    .line 86
    throw v3

    .line 92
    :catch_7
    move-exception v14

    .line 94
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_17
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 96
    const/16 v17, 0x0

    goto :goto_c

    .line 95
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v3

    .line 96
    const/16 v17, 0x0

    .line 97
    throw v3

    .line 103
    :catch_8
    move-exception v14

    .line 105
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_18
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 107
    const/16 v19, 0x0

    goto :goto_d

    .line 106
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_8
    move-exception v3

    .line 107
    const/16 v19, 0x0

    .line 108
    throw v3

    .line 69
    .end local v17    # "rafi":Ljava/io/RandomAccessFile;
    .end local v19    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v6    # "fileSize":J
    .restart local v15    # "mbbi":Ljava/nio/MappedByteBuffer;
    .restart local v16    # "mbbo":Ljava/nio/MappedByteBuffer;
    .restart local v18    # "rafi":Ljava/io/RandomAccessFile;
    .restart local v20    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v22    # "tmpBuf":[B
    :catch_9
    move-exception v14

    .line 71
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_19
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 73
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 72
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_9
    move-exception v3

    .line 73
    const/4 v2, 0x0

    .line 74
    throw v3

    .line 81
    :catch_a
    move-exception v14

    .line 83
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_1a
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 85
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 84
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_a
    move-exception v3

    .line 85
    const/4 v8, 0x0

    .line 86
    throw v3

    .line 92
    :catch_b
    move-exception v14

    .line 94
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_1b
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 96
    const/16 v17, 0x0

    .end local v18    # "rafi":Ljava/io/RandomAccessFile;
    .restart local v17    # "rafi":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .line 95
    .end local v14    # "e":Ljava/io/IOException;
    .end local v17    # "rafi":Ljava/io/RandomAccessFile;
    .restart local v18    # "rafi":Ljava/io/RandomAccessFile;
    :catchall_b
    move-exception v3

    .line 96
    const/16 v17, 0x0

    .line 97
    .end local v18    # "rafi":Ljava/io/RandomAccessFile;
    .restart local v17    # "rafi":Ljava/io/RandomAccessFile;
    throw v3

    .line 103
    :catch_c
    move-exception v14

    .line 105
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_1c
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    .line 107
    const/16 v19, 0x0

    .end local v20    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v19    # "rafo":Ljava/io/RandomAccessFile;
    goto/16 :goto_4

    .line 106
    .end local v14    # "e":Ljava/io/IOException;
    .end local v19    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v20    # "rafo":Ljava/io/RandomAccessFile;
    :catchall_c
    move-exception v3

    .line 107
    const/16 v19, 0x0

    .line 108
    .end local v20    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v19    # "rafo":Ljava/io/RandomAccessFile;
    throw v3

    .line 64
    .end local v6    # "fileSize":J
    .end local v15    # "mbbi":Ljava/nio/MappedByteBuffer;
    .end local v16    # "mbbo":Ljava/nio/MappedByteBuffer;
    .end local v17    # "rafi":Ljava/io/RandomAccessFile;
    .end local v22    # "tmpBuf":[B
    .restart local v18    # "rafi":Ljava/io/RandomAccessFile;
    :catchall_d
    move-exception v3

    move-object/from16 v17, v18

    .end local v18    # "rafi":Ljava/io/RandomAccessFile;
    .restart local v17    # "rafi":Ljava/io/RandomAccessFile;
    goto :goto_9

    .end local v17    # "rafi":Ljava/io/RandomAccessFile;
    .end local v19    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v18    # "rafi":Ljava/io/RandomAccessFile;
    .restart local v20    # "rafo":Ljava/io/RandomAccessFile;
    :catchall_e
    move-exception v3

    move-object/from16 v19, v20

    .end local v20    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v19    # "rafo":Ljava/io/RandomAccessFile;
    move-object/from16 v17, v18

    .end local v18    # "rafi":Ljava/io/RandomAccessFile;
    .restart local v17    # "rafi":Ljava/io/RandomAccessFile;
    goto :goto_9

    .line 60
    :catch_d
    move-exception v14

    goto/16 :goto_5

    .end local v17    # "rafi":Ljava/io/RandomAccessFile;
    .restart local v18    # "rafi":Ljava/io/RandomAccessFile;
    :catch_e
    move-exception v14

    move-object/from16 v17, v18

    .end local v18    # "rafi":Ljava/io/RandomAccessFile;
    .restart local v17    # "rafi":Ljava/io/RandomAccessFile;
    goto/16 :goto_5

    .end local v19    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v6    # "fileSize":J
    .restart local v15    # "mbbi":Ljava/nio/MappedByteBuffer;
    .restart local v16    # "mbbo":Ljava/nio/MappedByteBuffer;
    .restart local v20    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v22    # "tmpBuf":[B
    :cond_b
    move-object/from16 v19, v20

    .end local v20    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v19    # "rafo":Ljava/io/RandomAccessFile;
    goto/16 :goto_4

    .end local v17    # "rafi":Ljava/io/RandomAccessFile;
    .end local v19    # "rafo":Ljava/io/RandomAccessFile;
    .restart local v18    # "rafi":Ljava/io/RandomAccessFile;
    .restart local v20    # "rafo":Ljava/io/RandomAccessFile;
    :cond_c
    move-object/from16 v17, v18

    .end local v18    # "rafi":Ljava/io/RandomAccessFile;
    .restart local v17    # "rafi":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public static copyFileUseStream(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "destination"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 204
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 205
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 206
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 208
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 209
    .local v6, "length":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 215
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 221
    if-eqz v3, :cond_6

    .line 223
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 228
    const/4 v2, 0x0

    .line 232
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_5

    .line 234
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 239
    const/4 v4, 0x0

    .line 244
    .end local v0    # "buffer":[B
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "length":I
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_2
    return-void

    .line 212
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "length":I
    :cond_1
    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v5, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    goto :goto_0

    .line 216
    .end local v0    # "buffer":[B
    .end local v6    # "length":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 218
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 221
    if-eqz v2, :cond_2

    .line 223
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 228
    const/4 v2, 0x0

    .line 232
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    if-eqz v4, :cond_0

    .line 234
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 239
    const/4 v4, 0x0

    .line 240
    goto :goto_2

    .line 224
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 226
    .local v1, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 228
    const/4 v2, 0x0

    goto :goto_4

    .line 227
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 228
    const/4 v2, 0x0

    .line 229
    throw v7

    .line 235
    :catch_2
    move-exception v1

    .line 237
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 239
    const/4 v4, 0x0

    goto :goto_2

    .line 238
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    .line 239
    const/4 v4, 0x0

    .line 240
    throw v7

    .line 219
    :catchall_2
    move-exception v7

    .line 221
    :goto_5
    if-eqz v2, :cond_3

    .line 223
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 228
    const/4 v2, 0x0

    .line 232
    :cond_3
    :goto_6
    if-eqz v4, :cond_4

    .line 234
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 239
    const/4 v4, 0x0

    .line 242
    :cond_4
    :goto_7
    throw v7

    .line 224
    :catch_3
    move-exception v1

    .line 226
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 228
    const/4 v2, 0x0

    goto :goto_6

    .line 227
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v7

    .line 228
    const/4 v2, 0x0

    .line 229
    throw v7

    .line 235
    :catch_4
    move-exception v1

    .line 237
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 239
    const/4 v4, 0x0

    goto :goto_7

    .line 238
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v7

    .line 239
    const/4 v4, 0x0

    .line 240
    throw v7

    .line 224
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "length":I
    :catch_5
    move-exception v1

    .line 226
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 228
    const/4 v2, 0x0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 227
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v7

    .line 228
    const/4 v2, 0x0

    .line 229
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    throw v7

    .line 235
    :catch_6
    move-exception v1

    .line 237
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 239
    const/4 v4, 0x0

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 238
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_6
    move-exception v7

    .line 239
    const/4 v4, 0x0

    .line 240
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    throw v7

    .line 219
    .end local v0    # "buffer":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "length":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_7
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_8
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 216
    :catch_7
    move-exception v1

    goto :goto_3

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "length":I
    :cond_5
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method
