.class Lcom/appsgeyser/sdk/BrowserActivity$DetectJSInterface;
.super Ljava/lang/Object;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetectJSInterface"
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "HtmlViewer"


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/BrowserActivity;


# direct methods
.method private constructor <init>(Lcom/appsgeyser/sdk/BrowserActivity;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity$DetectJSInterface;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/sdk/BrowserActivity;Lcom/appsgeyser/sdk/BrowserActivity$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/BrowserActivity$DetectJSInterface;-><init>(Lcom/appsgeyser/sdk/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public detectHTML(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    const-string v0, "click_finish_html"

    goto :goto_0

    .line 78
    :cond_0
    const-string v0, "click_finish_epmty_html"

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/appsgeyser/sdk/BrowserActivity$DetectJSInterface;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {v1}, Lcom/appsgeyser/sdk/BrowserActivity;->access$000(Lcom/appsgeyser/sdk/BrowserActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    iget-object v2, p0, Lcom/appsgeyser/sdk/BrowserActivity$DetectJSInterface;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    const/16 v3, 0x3e8

    .line 82
    invoke-static {v2, p1, v3}, Lcom/appsgeyser/sdk/BrowserActivity;->access$100(Lcom/appsgeyser/sdk/BrowserActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 81
    const-string v2, "details"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v2, p0, Lcom/appsgeyser/sdk/BrowserActivity$DetectJSInterface;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method
