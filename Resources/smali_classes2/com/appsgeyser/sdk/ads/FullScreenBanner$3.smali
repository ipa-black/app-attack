.class Lcom/appsgeyser/sdk/ads/FullScreenBanner$3;
.super Ljava/lang/Object;
.source "FullScreenBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$3;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$3;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$3;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$700(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
