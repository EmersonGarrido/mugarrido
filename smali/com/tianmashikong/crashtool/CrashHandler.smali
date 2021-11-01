.class public Lcom/tianmashikong/crashtool/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final TAG:Ljava/lang/String; = "TianmaCrash"

.field private static _instance:Lcom/tianmashikong/crashtool/CrashHandler;


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mDevInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFtpPort:I

.field private mFtpPwd:Ljava/lang/String;

.field private mFtpServer:Ljava/lang/String;

.field private mFtpUser:Ljava/lang/String;

.field private mIMEI:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object v0, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 199
    iput-object v0, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mCtx:Landroid/content/Context;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mDevInfos:Ljava/util/Map;

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mIMEI:Ljava/lang/String;

    .line 205
    const-string v0, "120.132.76.208"

    iput-object v0, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpServer:Ljava/lang/String;

    .line 206
    const/16 v0, 0x4e29

    iput v0, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpPort:I

    .line 207
    const-string v0, "mulog"

    iput-object v0, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpUser:Ljava/lang/String;

    .line 208
    const-string v0, "V4MPVoYYoijv2jFPOMhxWhm"

    iput-object v0, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpPwd:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public static DoCheckCrashLogs()V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/tianmashikong/crashtool/CrashHandler;->getInstance()Lcom/tianmashikong/crashtool/CrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tianmashikong/crashtool/CrashHandler;->CheckCrashLogs()V

    .line 161
    return-void
.end method

.method static synthetic access$0(Lcom/tianmashikong/crashtool/CrashHandler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/tianmashikong/crashtool/CrashHandler;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/tianmashikong/crashtool/CrashHandler;->_instance:Lcom/tianmashikong/crashtool/CrashHandler;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/tianmashikong/crashtool/CrashHandler;

    invoke-direct {v0}, Lcom/tianmashikong/crashtool/CrashHandler;-><init>()V

    sput-object v0, Lcom/tianmashikong/crashtool/CrashHandler;->_instance:Lcom/tianmashikong/crashtool/CrashHandler;

    .line 154
    :cond_0
    sget-object v0, Lcom/tianmashikong/crashtool/CrashHandler;->_instance:Lcom/tianmashikong/crashtool/CrashHandler;

    return-object v0
.end method

.method private saveCrashDump(Ljava/lang/Throwable;)V
    .locals 21
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 353
    .local v14, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tianmashikong/crashtool/CrashHandler;->mDevInfos:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_2

    .line 361
    new-instance v17, Ljava/io/StringWriter;

    invoke-direct/range {v17 .. v17}, Ljava/io/StringWriter;-><init>()V

    .line 362
    .local v17, "writer":Ljava/io/Writer;
    new-instance v12, Ljava/io/PrintWriter;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 363
    .local v12, "print":Ljava/io/PrintWriter;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 365
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 366
    .local v2, "cause":Ljava/lang/Throwable;
    :goto_1
    if-nez v2, :cond_3

    .line 372
    invoke-virtual {v12}, Ljava/io/PrintWriter;->close()V

    .line 373
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 374
    .local v13, "result":Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tianmashikong/crashtool/CrashHandler;->mCtx:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/crash/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 381
    .local v10, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    .line 384
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 388
    :cond_0
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct/range {v18 .. v19}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v18 .. v19}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 390
    .local v15, "time":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tianmashikong/crashtool/CrashHandler;->mDevInfos:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "package"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 391
    .local v11, "pkg":Ljava/lang/String;
    const/16 v18, 0x2e

    const/16 v19, 0x5f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 392
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_crash_android_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tianmashikong/crashtool/CrashHandler;->mIMEI:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".log"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 395
    .local v6, "fileName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 398
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 406
    if-eqz v8, :cond_1

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 413
    .end local v3    # "dir":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v15    # "time":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 353
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v12    # "print":Ljava/io/PrintWriter;
    .end local v13    # "result":Ljava/lang/String;
    .end local v17    # "writer":Ljava/io/Writer;
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 355
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 356
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 357
    .local v16, "value":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 368
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "key":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    .restart local v12    # "print":Ljava/io/PrintWriter;
    .restart local v17    # "writer":Ljava/io/Writer;
    :cond_3
    invoke-virtual {v2, v12}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 369
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto/16 :goto_1

    .line 401
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "path":Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v13    # "result":Ljava/lang/String;
    .restart local v15    # "time":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 406
    :goto_3
    if-eqz v7, :cond_1

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v18

    goto :goto_2

    .line 405
    :catchall_0
    move-exception v18

    .line 406
    :goto_4
    if-eqz v7, :cond_4

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 407
    :cond_4
    :goto_5
    :try_start_6
    throw v18
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 409
    .end local v3    # "dir":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v15    # "time":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 411
    .local v4, "e":Ljava/lang/Exception;
    const-string v18, "TianmaCrash"

    const-string v19, "an exception occured while writing/sending file..."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 406
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "path":Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v15    # "time":Ljava/lang/String;
    :catch_3
    move-exception v19

    goto :goto_5

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v18

    goto :goto_2

    .line 405
    :catchall_1
    move-exception v18

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 401
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v18

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public CheckCrashLogs()V
    .locals 11

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mCtx:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const/4 v1, 0x0

    .line 170
    .local v1, "curVerCode":I
    :try_start_0
    iget-object v0, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 171
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    iget v1, v9, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/crash/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, "dir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/tianmashikong/crashtool/CrashHandler$1;

    invoke-direct {v3, p0}, Lcom/tianmashikong/crashtool/CrashHandler$1;-><init>(Lcom/tianmashikong/crashtool/CrashHandler;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 190
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 193
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/tianmashikong/crashtool/CrashThread;

    iget-object v3, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpServer:Ljava/lang/String;

    iget v4, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpPort:I

    iget-object v5, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpUser:Ljava/lang/String;

    iget-object v6, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpPwd:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/tianmashikong/crashtool/CrashThread;-><init>(I[Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 173
    .end local v2    # "files":[Ljava/io/File;
    .end local v7    # "dir":Ljava/lang/String;
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v8

    .line 175
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public GetPhoneInfos()V
    .locals 12

    .prologue
    .line 315
    :try_start_0
    iget-object v7, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mCtx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 316
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mCtx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 317
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_0

    .line 319
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v7, :cond_1

    const-string v4, "null"

    .line 320
    .local v4, "name":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "code":Ljava/lang/String;
    iget-object v7, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mDevInfos:Ljava/util/Map;

    const-string v8, "package"

    iget-object v9, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v7, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mDevInfos:Ljava/util/Map;

    const-string v8, "versionName"

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v7, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mDevInfos:Ljava/util/Map;

    const-string v8, "versionCode"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "code":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    const-class v7, Landroid/os/Build;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 332
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v8, v3

    const/4 v7, 0x0

    :goto_2
    if-lt v7, v8, :cond_2

    .line 345
    return-void

    .line 319
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 326
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "TianmaCrash"

    const-string v8, "exception occured when collect package info"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 332
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    :cond_2
    aget-object v2, v3, v7

    .line 336
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    :try_start_2
    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 337
    iget-object v9, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mDevInfos:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v9, "TianmaCrash"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 332
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 340
    :catch_1
    move-exception v1

    .line 342
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v9, "TianmaCrash"

    const-string v10, "exception occured when collect package info"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public handleException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/tianmashikong/crashtool/CrashHandler;->GetPhoneInfos()V

    .line 291
    new-instance v0, Lcom/tianmashikong/crashtool/CrashHandler$2;

    invoke-direct {v0, p0}, Lcom/tianmashikong/crashtool/CrashHandler$2;-><init>(Lcom/tianmashikong/crashtool/CrashHandler;)V

    .line 301
    invoke-virtual {v0}, Lcom/tianmashikong/crashtool/CrashHandler$2;->start()V

    .line 304
    invoke-direct {p0, p1}, Lcom/tianmashikong/crashtool/CrashHandler;->saveCrashDump(Ljava/lang/Throwable;)V

    .line 305
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mCtx:Landroid/content/Context;

    .line 232
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 233
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 235
    iget-object v2, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mCtx:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 236
    .local v0, "tel":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mIMEI:Ljava/lang/String;

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mIMEI:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, ""

    iget-object v3, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mIMEI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mCtx:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 244
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 246
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mIMEI:Ljava/lang/String;

    .line 250
    .end local v1    # "wm":Landroid/net/wifi/WifiManager;
    :cond_2
    iget-object v2, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mIMEI:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 252
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0xf4240

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mIMEI:Ljava/lang/String;

    .line 254
    :cond_3
    return-void
.end method

.method public setFtp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;
    .param p5, "remote"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpServer:Ljava/lang/String;

    .line 218
    iput p2, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpPort:I

    .line 219
    iput-object p3, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpUser:Ljava/lang/String;

    .line 220
    iput-object p4, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpPwd:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setFtpPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpPort:I

    return-void
.end method

.method public setFtpPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpPwd:Ljava/lang/String;

    return-void
.end method

.method public setFtpServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpServer:Ljava/lang/String;

    return-void
.end method

.method public setFtpUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mFtpUser:Ljava/lang/String;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Thread;
    .param p2, "arg1"    # Ljava/lang/Throwable;

    .prologue
    .line 262
    invoke-virtual {p0, p2}, Lcom/tianmashikong/crashtool/CrashHandler;->handleException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/tianmashikong/crashtool/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 280
    :goto_0
    return-void

    .line 270
    :cond_0
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 278
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "TianmaCrash"

    const-string v2, "error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
