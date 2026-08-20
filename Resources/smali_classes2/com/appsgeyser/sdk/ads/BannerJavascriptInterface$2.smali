.class Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$2;
.super Ljava/lang/Object;
.source "BannerJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$2;->this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$2;->this$0:Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->access$000(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;)Lcom/appsgeyser/sdk/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->hide()V

    return-void
.end method
