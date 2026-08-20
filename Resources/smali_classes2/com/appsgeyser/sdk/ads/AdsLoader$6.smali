.class Lcom/appsgeyser/sdk/ads/AdsLoader$6;
.super Ljava/lang/Object;
.source "AdsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/AdsLoader;->proceedClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/AdsLoader;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$6;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$6;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$6;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->access$100(Lcom/appsgeyser/sdk/ads/AdsLoader;)Lcom/appsgeyser/sdk/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->getBrowser()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$6;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
