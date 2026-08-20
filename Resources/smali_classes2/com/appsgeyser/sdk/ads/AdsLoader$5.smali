.class Lcom/appsgeyser/sdk/ads/AdsLoader$5;
.super Ljava/util/TimerTask;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/AdsLoader;->setRefreshTimeout(F)V
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

    .line 207
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$5;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$5;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->reload()V

    .line 211
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$5;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$000(Lcom/appsgeyser/sdk/ads/AdsLoader;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
