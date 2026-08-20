.class Lcom/appsgeyser/sdk/ads/FullScreenBanner$4;
.super Ljava/lang/Object;
.source "FullScreenBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/FullScreenBanner;->show()V
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

    .line 298
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$4;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$4;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$600(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1600(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$4;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1700(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V

    .line 303
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$4;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$400(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->HTML:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$4;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$400(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->NO_BANNER:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$4;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1100(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appsgeyser/sdk/AdActivity;->startActivity(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
