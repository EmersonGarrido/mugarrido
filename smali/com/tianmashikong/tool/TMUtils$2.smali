.class Lcom/tianmashikong/tool/TMUtils$2;
.super Ljava/lang/Object;
.source "TMUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/tool/TMUtils;->FuckCoinWorker(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$stridlist:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tianmashikong/tool/TMUtils$2;->val$stridlist:Ljava/lang/String;

    iput-object p2, p0, Lcom/tianmashikong/tool/TMUtils$2;->val$act:Landroid/app/Activity;

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 465
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v10, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$2;->val$stridlist:Ljava/lang/String;

    .line 467
    .local v9, "ret":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tianmashikong/tool/TMUtils$2;->val$act:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 469
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 470
    .local v1, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tianmashikong/tool/TMUtils$2;->val$stridlist:Ljava/lang/String;

    const-string v14, "\\|"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, "packlist":[Ljava/lang/String;
    array-length v14, v8

    const/4 v13, 0x0

    :goto_0
    if-lt v13, v14, :cond_0

    .line 510
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 511
    const-string v13, "tmsktest"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "sb="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v13, "SdkPluginLayer"

    const-string v14, "FuckCallback"

    invoke-static {v13, v14, v9}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void

    .line 471
    :cond_0
    aget-object v7, v8, v13

    .line 472
    .local v7, "packageName":Ljava/lang/String;
    const-string v15, "tmsktest"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "packageName="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v15, ":"

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v7, v15, v16

    .line 475
    const-string v15, "test"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "packageName2="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v5, 0x0

    .line 478
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    const/16 v15, 0x1000

    :try_start_0
    invoke-virtual {v6, v7, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 484
    if-nez v5, :cond_2

    .line 486
    const-string v15, "tmsktest"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "packageName not found -"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 479
    :catch_0
    move-exception v2

    .line 481
    .local v2, "e":Ljava/lang/Exception;
    const-string v15, "tmsktest"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Exception e="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 489
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v15, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, "label":Ljava/lang/String;
    iget-object v12, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 492
    .local v12, "usesPermissionsArray":[Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 494
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v15, v12

    if-ge v3, v15, :cond_1

    .line 496
    aget-object v11, v12, v3

    .line 497
    .local v11, "usesPermissionName":Ljava/lang/String;
    invoke-static {v11}, Lcom/tianmashikong/tool/TMUtils;->IsUnsafePermission(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_3

    .line 494
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 499
    :cond_3
    if-lez v1, :cond_4

    .line 500
    const-string v15, "*"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_4
    const-string v15, "tmsktest"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    add-int/lit8 v1, v1, 0x1

    .line 506
    goto :goto_1
.end method
