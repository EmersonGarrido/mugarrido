.class public Lcom/tianmashikong/crashtool/TmskApplication;
.super Landroid/app/Application;
.source "TmskApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    invoke-static {}, Lcom/tianmashikong/crashtool/CrashHandler;->getInstance()Lcom/tianmashikong/crashtool/CrashHandler;

    move-result-object v0

    .line 17
    .local v0, "catchHandler":Lcom/tianmashikong/crashtool/CrashHandler;
    invoke-virtual {p0}, Lcom/tianmashikong/crashtool/TmskApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tianmashikong/crashtool/CrashHandler;->init(Landroid/content/Context;)V

    .line 19
    return-void
.end method
