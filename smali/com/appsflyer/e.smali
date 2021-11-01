.class final Lcom/appsflyer/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private instanceId:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private tokenTimestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/appsflyer/e;->tokenTimestamp:J

    .line 14
    iput-object p3, p0, Lcom/appsflyer/e;->token:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/appsflyer/e;->instanceId:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-nez p1, :cond_0

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appsflyer/e;->tokenTimestamp:J

    .line 24
    :goto_0
    iput-object p2, p0, Lcom/appsflyer/e;->token:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/appsflyer/e;->instanceId:Ljava/lang/String;

    .line 26
    return-void

    .line 22
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/e;->tokenTimestamp:J

    goto :goto_0
.end method


# virtual methods
.method public final getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/appsflyer/e;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/appsflyer/e;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenTimestamp()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/appsflyer/e;->tokenTimestamp:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/appsflyer/e;->tokenTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/e;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/e;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final update(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "tokenTimestamp"    # J
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/appsflyer/e;->token:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/appsflyer/e;->tokenTimestamp:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 35
    iput-wide p1, p0, Lcom/appsflyer/e;->tokenTimestamp:J

    .line 36
    iput-object p3, p0, Lcom/appsflyer/e;->token:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/appsflyer/e;->instanceId:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final update(Lcom/appsflyer/e;)Z
    .locals 4
    .param p1, "token"    # Lcom/appsflyer/e;

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/appsflyer/e;->getTokenTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/appsflyer/e;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/appsflyer/e;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/appsflyer/e;->update(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
