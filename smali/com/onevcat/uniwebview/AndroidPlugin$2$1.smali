.class Lcom/onevcat/uniwebview/AndroidPlugin$2$1;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/AndroidPlugin$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/AndroidPlugin$2;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .locals 2
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "AnimationFinished"

    invoke-static {v0, v1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public onDialogClose(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 203
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v1, v1, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewManager;->removeUniWebView(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public onDialogKeyDown(Lcom/onevcat/uniwebview/UniWebViewDialog;I)V
    .locals 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "keyCode"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "WebViewKeyDown"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public onDialogShouldCloseByBackButton(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 194
    const-string v0, "UniWebView"

    const-string v1, "dialog should be closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "WebViewDone"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public onHideTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "HideTransitionFinished"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public onJavaScriptFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .locals 2
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "EvalJavaScriptFinished"

    invoke-static {v0, v1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public onPageFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .locals 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page load finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "LoadComplete"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onPageStarted(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .locals 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page load started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "LoadBegin"

    invoke-static {v0, v1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onReceivedError(Lcom/onevcat/uniwebview/UniWebViewDialog;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page load error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "LoadComplete"

    invoke-static {v0, v1, p3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public onShowTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "ShowTransitionFinished"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Z
    .locals 8
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v4, 0x0

    .line 158
    .local v4, "shouldOverride":Z
    const-string v5, "mailto:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 161
    const/4 v4, 0x1

    .line 190
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 162
    :cond_1
    const-string v5, "tel:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 163
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    .line 164
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 165
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 166
    const/4 v4, 0x1

    .line 167
    goto :goto_0

    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v5, "sms:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 170
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    const/4 v4, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "UniWebView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v0, 0x0

    .line 179
    .local v0, "canResponseScheme":Z
    iget-object v5, p1, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 180
    .local v3, "scheme":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 181
    const/4 v0, 0x1

    .line 185
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_0

    .line 186
    iget-object v5, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v5, v5, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v6, "ReceivedMessage"

    invoke-static {v5, v6, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v4, 0x1

    goto/16 :goto_0
.end method
