.class Lcom/appsgeyser/sdk/BrowserActivity$2;
.super Landroid/webkit/WebChromeClient;
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

    .line 220
    iput-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity$2;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity$2;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/BrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity$2;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/BrowserActivity;->setProgress(I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 225
    iget-object p2, p0, Lcom/appsgeyser/sdk/BrowserActivity$2;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appsgeyser/sdk/BrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
