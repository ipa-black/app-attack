.class Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$3;
.super Ljava/lang/Object;
.source "BannerJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->setClickUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

.field final synthetic val$hash:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$3;->this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$3;->val$hash:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$3;->this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$3;->val$hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->checkSecurityCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$3;->this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->access$100(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;)Lcom/appsgeyser/sdk/ads/AdsLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/AdsLoader;->setClickUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
