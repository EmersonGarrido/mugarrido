.class public Lcom/umeng/fb/model/Reply;
.super Ljava/lang/Object;
.source "Reply.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/umeng/fb/model/Reply;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_AUDIO_REPLY:Ljava/lang/String; = "audio_reply"

.field public static final CONTENT_TYPE_IMAGE_REPLY:Ljava/lang/String; = "image_reply"

.field public static final CONTENT_TYPE_TEXT_REPLY:Ljava/lang/String; = "text_reply"

.field public static final STATUS_NOT_SENT:Ljava/lang/String; = "not_sent"

.field public static final STATUS_SENDING:Ljava/lang/String; = "sending"

.field public static final STATUS_SENT:Ljava/lang/String; = "sent"

.field public static final STATUS_WILL_SENT:Ljava/lang/String; = "will_sent"

.field public static final TYPE_DEV_REPLY:Ljava/lang/String; = "dev_reply"

.field public static final TYPE_NEW_FEEDBACK:Ljava/lang/String; = "new_feedback"

.field public static final TYPE_USER_REPLY:Ljava/lang/String; = "user_reply"

.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "content"

.field private static final c:Ljava/lang/String; = "reply_id"

.field private static final d:Ljava/lang/String; = "type"

.field private static final e:Ljava/lang/String; = "created_at"

.field private static final f:Ljava/lang/String; = "status"

.field private static final g:Ljava/lang/String; = "content_type"

.field private static final h:Ljava/lang/String; = "audio_duration"


# instance fields
.field public audio_duration:F

.field public content:Ljava/lang/String;

.field public content_type:Ljava/lang/String;

.field public created_at:J

.field public feedback_id:Ljava/lang/String;

.field public reply_id:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/umeng/fb/model/Reply;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/model/Reply;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/umeng/fb/model/Reply;->content:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/umeng/fb/model/Reply;->type:Ljava/lang/String;

    .line 81
    iput-wide p4, p0, Lcom/umeng/fb/model/Reply;->created_at:J

    .line 82
    const-string v0, "not_sent"

    iput-object v0, p0, Lcom/umeng/fb/model/Reply;->status:Ljava/lang/String;

    .line 83
    const-string v0, "text_reply"

    iput-object v0, p0, Lcom/umeng/fb/model/Reply;->content_type:Ljava/lang/String;

    .line 84
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/umeng/fb/model/Reply;->audio_duration:F

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;F)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/umeng/fb/model/Reply;->content:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/umeng/fb/model/Reply;->type:Ljava/lang/String;

    .line 71
    iput-wide p4, p0, Lcom/umeng/fb/model/Reply;->created_at:J

    .line 72
    const-string v0, "not_sent"

    iput-object v0, p0, Lcom/umeng/fb/model/Reply;->status:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lcom/umeng/fb/model/Reply;->content_type:Ljava/lang/String;

    .line 74
    iput p7, p0, Lcom/umeng/fb/model/Reply;->audio_duration:F

    .line 75
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/umeng/fb/model/Reply;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v0, "content"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v0, "reply_id"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    const-string v0, "content_type"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    const-string v0, "created_at"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 93
    const-string v0, "audio_duration"

    const-wide/16 v8, -0x1

    invoke-virtual {p0, v0, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    long-to-float v7, v8

    .line 95
    if-nez v6, :cond_0

    .line 96
    const-string v6, "text_reply"

    .line 98
    :cond_0
    new-instance v0, Lcom/umeng/fb/model/Reply;

    invoke-direct/range {v0 .. v7}, Lcom/umeng/fb/model/Reply;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;F)V

    .line 100
    const-string v1, "dev_reply"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string v1, "sent"

    iput-object v1, v0, Lcom/umeng/fb/model/Reply;->status:Ljava/lang/String;

    .line 105
    :goto_0
    return-object v0

    .line 103
    :cond_1
    const-string v1, "status"

    const-string v2, "not_sent"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/fb/model/Reply;->status:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/umeng/fb/model/Reply;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 128
    iget-wide v0, p0, Lcom/umeng/fb/model/Reply;->created_at:J

    iget-wide v2, p1, Lcom/umeng/fb/model/Reply;->created_at:J

    sub-long/2addr v0, v2

    .line 129
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    .line 131
    :cond_0
    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 132
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/umeng/fb/model/Reply;

    invoke-virtual {p0, p1}, Lcom/umeng/fb/model/Reply;->compareTo(Lcom/umeng/fb/model/Reply;)I

    move-result v0

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 110
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 111
    const-string v1, "content"

    iget-object v2, p0, Lcom/umeng/fb/model/Reply;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v1, "reply_id"

    iget-object v2, p0, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v1, "type"

    iget-object v2, p0, Lcom/umeng/fb/model/Reply;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v1, "created_at"

    iget-wide v2, p0, Lcom/umeng/fb/model/Reply;->created_at:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 115
    const-string v1, "status"

    iget-object v2, p0, Lcom/umeng/fb/model/Reply;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v1, "content_type"

    iget-object v2, p0, Lcom/umeng/fb/model/Reply;->content_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v1, "audio_duration"

    iget v2, p0, Lcom/umeng/fb/model/Reply;->audio_duration:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/umeng/fb/model/Reply;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
