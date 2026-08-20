.class Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;
.super Ljava/lang/Object;
.source "BannerJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->addJs(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

.field final synthetic val$hash:Ljava/lang/String;

.field final synthetic val$jsCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;->this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;->val$hash:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;->val$jsCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-appsgeyser-sdk-ads-BannerJavascriptInterface$1(Ljava/lang/String;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;->this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->access$000(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;)Lcom/appsgeyser/sdk/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->getBrowser()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:(function(){ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " })()"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;->this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;->val$hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->checkSecurityCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;->this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->access$000(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;)Lcom/appsgeyser/sdk/ads/AdView;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;->val$jsCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/AdView;->addJsCode(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;->val$jsCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;)V

    invoke-static {v0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getAdditionalJsCode(Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAdditionalJsLoaded;)V

    .line 34
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;->val$jsCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setAdditionalJsCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
