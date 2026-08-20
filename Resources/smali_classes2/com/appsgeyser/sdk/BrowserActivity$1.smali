.class Lcom/appsgeyser/sdk/BrowserActivity$1;
.super Landroid/webkit/WebViewClient;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/BrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/BrowserActivity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private _handleRedirect(Ljava/lang/String;)Z
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {v0}, Lcom/appsgeyser/sdk/BrowserActivity;->access$300(Lcom/appsgeyser/sdk/BrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 145
    :cond_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/BrowserActivity;->access$400(Ljava/lang/String;)Z

    move-result v1

    .line 146
    invoke-static {p1}, Lcom/appsgeyser/sdk/BrowserActivity;->access$500(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 148
    invoke-static {p1}, Lcom/appsgeyser/sdk/BrowserActivity;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-nez v2, :cond_2

    if-nez v1, :cond_5

    .line 152
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 153
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 156
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p1, 0x1

    .line 158
    :try_start_0
    iget-object v3, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {v3}, Lcom/appsgeyser/sdk/BrowserActivity;->access$700(Lcom/appsgeyser/sdk/BrowserActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 159
    iget-object v3, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-virtual {v3, v2}, Lcom/appsgeyser/sdk/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    iget-object v2, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {v2, p1}, Lcom/appsgeyser/sdk/BrowserActivity;->access$702(Lcom/appsgeyser/sdk/BrowserActivity;Z)Z

    .line 162
    :cond_3
    iget-object v2, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {v2}, Lcom/appsgeyser/sdk/BrowserActivity;->access$000(Lcom/appsgeyser/sdk/BrowserActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v2

    const-string v3, "click_finish_market"

    iget-object v4, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-virtual {v2, v3, v1, v4, p1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 169
    :cond_4
    iget-object v2, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/BrowserActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 172
    :catch_0
    iget-object v2, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {v2}, Lcom/appsgeyser/sdk/BrowserActivity;->access$000(Lcom/appsgeyser/sdk/BrowserActivity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 174
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v2

    const-string v3, "click_no_market_on_device"

    iget-object v4, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    .line 175
    invoke-virtual {v2, v3, v1, v4, p1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    :cond_5
    return v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 208
    invoke-static {p2}, Lcom/appsgeyser/sdk/BrowserActivity;->access$500(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    invoke-static {p2}, Lcom/appsgeyser/sdk/BrowserActivity;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {v0}, Lcom/appsgeyser/sdk/BrowserActivity;->access$300(Lcom/appsgeyser/sdk/BrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {v1}, Lcom/appsgeyser/sdk/BrowserActivity;->access$800(Lcom/appsgeyser/sdk/BrowserActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 130
    invoke-direct {p0, p2}, Lcom/appsgeyser/sdk/BrowserActivity$1;->_handleRedirect(Ljava/lang/String;)Z

    .line 131
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {v0}, Lcom/appsgeyser/sdk/BrowserActivity;->access$000(Lcom/appsgeyser/sdk/BrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/appsgeyser/sdk/BrowserActivity;->access$100(Lcom/appsgeyser/sdk/BrowserActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 191
    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "url"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/BrowserActivity$1;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    const/4 v3, 0x1

    const-string v4, "click_loading_error"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 203
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 136
    invoke-direct {p0, p2}, Lcom/appsgeyser/sdk/BrowserActivity$1;->_handleRedirect(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
