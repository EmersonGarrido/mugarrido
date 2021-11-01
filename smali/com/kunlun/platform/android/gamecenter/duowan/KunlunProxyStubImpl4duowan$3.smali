.class final Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duowan/sdk/listener/GameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

.field private final synthetic gi:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gi:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRoleInfo()Lcom/duowan/sdk/RoleInfo;
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->h(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/duowan/sdk/RoleInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    new-instance v1, Lcom/duowan/sdk/RoleInfo;

    invoke-direct {v1}, Lcom/duowan/sdk/RoleInfo;-><init>()V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->a(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;Lcom/duowan/sdk/RoleInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gi:Landroid/os/Bundle;

    const-string v1, "roleId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->h(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/duowan/sdk/RoleInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gi:Landroid/os/Bundle;

    const-string v2, "roleId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duowan/sdk/RoleInfo;->setPlayerId(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gi:Landroid/os/Bundle;

    const-string v1, "roleName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->h(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/duowan/sdk/RoleInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gi:Landroid/os/Bundle;

    const-string v2, "roleName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duowan/sdk/RoleInfo;->setNickName(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gi:Landroid/os/Bundle;

    const-string v1, "roleLevel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->h(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/duowan/sdk/RoleInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gi:Landroid/os/Bundle;

    const-string v2, "roleLevel"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duowan/sdk/RoleInfo;->setLevel(I)V

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gi:Landroid/os/Bundle;

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->h(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/duowan/sdk/RoleInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gi:Landroid/os/Bundle;

    const-string v2, "serverId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duowan/sdk/RoleInfo;->setZone(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gi:Landroid/os/Bundle;

    const-string v1, "serverName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->h(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/duowan/sdk/RoleInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gi:Landroid/os/Bundle;

    const-string v2, "serverName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duowan/sdk/RoleInfo;->setZoneName(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->h(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/duowan/sdk/RoleInfo;

    move-result-object v0

    return-object v0
.end method
