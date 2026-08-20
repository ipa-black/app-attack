.class Lcom/appsgeyser/sdk/ads/AdsLoader$4;
.super Ljava/lang/Thread;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/AdsLoader;->reload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/AdsLoader;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$4;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    invoke-static {}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getInstance()Lcom/appsgeyser/sdk/server/network/NetworkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$4;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$200(Lcom/appsgeyser/sdk/ads/AdsLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->loadHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$4;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$300(Lcom/appsgeyser/sdk/ads/AdsLoader;)Lcom/appsgeyser/sdk/ads/AdsLoader$HeadersReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$4;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$300(Lcom/appsgeyser/sdk/ads/AdsLoader;)Lcom/appsgeyser/sdk/ads/AdsLoader$HeadersReceiver;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/appsgeyser/sdk/ads/AdsLoader$HeadersReceiver;->onAdHeadersReceived(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$4;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$100(Lcom/appsgeyser/sdk/ads/AdsLoader;)Lcom/appsgeyser/sdk/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->getBrowser()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$4;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$100(Lcom/appsgeyser/sdk/ads/AdsLoader;)Lcom/appsgeyser/sdk/ads/AdView;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/ads/AdsLoader$4$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/AdsLoader$4$1;-><init>(Lcom/appsgeyser/sdk/ads/AdsLoader$4;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/AdView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$4;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$100(Lcom/appsgeyser/sdk/ads/AdsLoader;)Lcom/appsgeyser/sdk/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$4;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$100(Lcom/appsgeyser/sdk/ads/AdsLoader;)Lcom/appsgeyser/sdk/ads/AdView;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/ads/AdsLoader$4$2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/AdsLoader$4$2;-><init>(Lcom/appsgeyser/sdk/ads/AdsLoader$4;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/AdView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
