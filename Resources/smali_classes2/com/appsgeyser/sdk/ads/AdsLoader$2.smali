.class Lcom/appsgeyser/sdk/ads/AdsLoader$2;
.super Ljava/lang/Thread;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/AdsLoader;->init(Lcom/appsgeyser/sdk/ads/AdView;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
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

    .line 86
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$2;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$2;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$000(Lcom/appsgeyser/sdk/ads/AdsLoader;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 89
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$2;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$100(Lcom/appsgeyser/sdk/ads/AdsLoader;)Lcom/appsgeyser/sdk/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->getBrowser()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$2;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$100(Lcom/appsgeyser/sdk/ads/AdsLoader;)Lcom/appsgeyser/sdk/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->getBrowser()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$2;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$100(Lcom/appsgeyser/sdk/ads/AdsLoader;)Lcom/appsgeyser/sdk/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->hide()V

    return-void
.end method
