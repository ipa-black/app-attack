.class Lcom/appsgeyser/sdk/BrowserActivity$5;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/BrowserActivity;->initButtons()V
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

    .line 280
    iput-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity$5;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 284
    iget-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity$5;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {p1}, Lcom/appsgeyser/sdk/BrowserActivity;->access$000(Lcom/appsgeyser/sdk/BrowserActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 286
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity$5;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    .line 287
    invoke-static {v0}, Lcom/appsgeyser/sdk/BrowserActivity;->access$900(Lcom/appsgeyser/sdk/BrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 286
    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/BrowserActivity$5;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    const/4 v2, 0x1

    const-string v3, "click_cross_mini_browser"

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity$5;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/BrowserActivity;->finish()V

    return-void
.end method
