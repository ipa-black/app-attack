.class Lcom/appsgeyser/sdk/ads/AdView$1;
.super Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/AdView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/AdView;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/AdView;Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdView$1;->this$0:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-direct {p0, p2}, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public networkIsDown()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView$1;->this$0:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->hide()V

    return-void
.end method

.method public networkIsUp()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView$1;->this$0:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->show()V

    .line 62
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView$1;->this$0:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/AdView;->access$000(Lcom/appsgeyser/sdk/ads/AdView;)Lcom/appsgeyser/sdk/ads/AdsLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->reload()V

    return-void
.end method
