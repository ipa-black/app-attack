.class Lcom/appsgeyser/sdk/ads/AdsLoader$4$1;
.super Ljava/lang/Object;
.source "AdsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/AdsLoader$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/sdk/ads/AdsLoader$4;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/AdsLoader$4;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$4$1;->this$1:Lcom/appsgeyser/sdk/ads/AdsLoader$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$4$1;->this$1:Lcom/appsgeyser/sdk/ads/AdsLoader$4;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/AdsLoader$4;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$100(Lcom/appsgeyser/sdk/ads/AdsLoader;)Lcom/appsgeyser/sdk/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->getBrowser()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$4$1;->this$1:Lcom/appsgeyser/sdk/ads/AdsLoader$4;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/AdsLoader$4;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$200(Lcom/appsgeyser/sdk/ads/AdsLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
