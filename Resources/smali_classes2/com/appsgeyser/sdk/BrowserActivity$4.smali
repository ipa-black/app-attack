.class Lcom/appsgeyser/sdk/BrowserActivity$4;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/BrowserActivity;
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

    .line 270
    iput-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity$4;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity$4;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {v0}, Lcom/appsgeyser/sdk/BrowserActivity;->access$900(Lcom/appsgeyser/sdk/BrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity$4;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {v0}, Lcom/appsgeyser/sdk/BrowserActivity;->access$900(Lcom/appsgeyser/sdk/BrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:window.HtmlViewer.detectHTML(document.documentElement.innerHTML);"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
