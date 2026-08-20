.class Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$4;
.super Ljava/lang/Object;
.source "BannerJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->reload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

.field final synthetic val$hash:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$4;->this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$4;->val$hash:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$4;->this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$4;->val$hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->checkSecurityCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$4;->this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->access$100(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;)Lcom/appsgeyser/sdk/ads/AdsLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->reload()V

    :cond_0
    return-void
.end method
