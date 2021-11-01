.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;
.super Ljava/lang/Object;
.source "KunlunFbFriendCircleActivity.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->setPropsLog(Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRespondBean;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$kunlun$sns$channel$facebookCenter$tools$FbRequestBean$SETPROPSLOG_ACTION:[I


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

.field private final synthetic val$action:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

.field private final synthetic val$actionButton:Landroid/widget/Button;

.field private final synthetic val$receiverId:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$kunlun$sns$channel$facebookCenter$tools$FbRequestBean$SETPROPSLOG_ACTION()[I
    .locals 3

    .prologue
    .line 223
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->$SWITCH_TABLE$com$kunlun$sns$channel$facebookCenter$tools$FbRequestBean$SETPROPSLOG_ACTION:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->values()[Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->ASKFOR:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->INVITE:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->SEND:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->$SWITCH_TABLE$com$kunlun$sns$channel$facebookCenter$tools$FbRequestBean$SETPROPSLOG_ACTION:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$receiverId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$action:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    iput-object p4, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$actionButton:Landroid/widget/Button;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 3
    .param p1, "error"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$6(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->FB_REQUEST_ERROR_MSG:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 253
    return-void
.end method

.method public onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRespondBean;)V
    .locals 5
    .param p1, "respondDomainBean"    # Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRespondBean;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$5(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$receiverId:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$action:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->modifyList(Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;)V

    .line 228
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$actionButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 229
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$actionButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->$SWITCH_TABLE$com$kunlun$sns$channel$facebookCenter$tools$FbRequestBean$SETPROPSLOG_ACTION()[I

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$action:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->fB_REQUEST_SUCCESS_MSG:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$actionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "kunlun_fb_btn_disable"

    invoke-static {v1, v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 235
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$actionButton:Landroid/widget/Button;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->GIVE_GIFT_BUTTON:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$actionButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    const-string v1, "Success"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$actionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "kunlun_fb_btn_disable"

    invoke-static {v1, v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 241
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$actionButton:Landroid/widget/Button;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->ASK_GIFT_BUTTON:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->val$actionButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRespondBean;

    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;->onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRespondBean;)V

    return-void
.end method
