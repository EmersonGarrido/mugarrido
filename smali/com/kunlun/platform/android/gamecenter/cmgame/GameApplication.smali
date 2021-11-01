.class public Lcom/kunlun/platform/android/gamecenter/cmgame/GameApplication;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/app/Application;)V
    .locals 2

    const-string v0, "CmgameApplication"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "megjb"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/kunlun/platform/android/gamecenter/cmgame/GameApplication;->onCreate(Landroid/app/Application;)V

    return-void
.end method
