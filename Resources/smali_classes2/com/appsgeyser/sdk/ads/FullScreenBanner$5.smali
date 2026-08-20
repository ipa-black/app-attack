.class Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;
.super Ljava/lang/Object;
.source "FullScreenBanner.java"

# interfaces
.implements Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setListener(Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

.field final synthetic val$listener:Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->val$listener:Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1900(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I

    move-result v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$2000(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1800(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1802(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    .line 344
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->val$listener:Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    invoke-interface {v0, p1, p2}, Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;->onAdFailedToLoad(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdHided(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    sget-object v1, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->NO_BANNER:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$402(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;)Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    .line 352
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1900(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I

    move-result v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$2000(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->val$listener:Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    invoke-interface {v0, p1, p2}, Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;->onAdHided(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1900(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I

    move-result p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$2000(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$900(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 356
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$2100(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)V

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$902(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    return-void
.end method

.method public onLoadFinished(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$002(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    .line 333
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1900(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I

    move-result v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$2000(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1908(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I

    .line 335
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->show()V

    :cond_0
    return-void
.end method

.method public onLoadStarted()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$002(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    .line 324
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1802(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    .line 325
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1900(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I

    move-result v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$2000(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;->val$listener:Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;->onLoadStarted()V

    :cond_0
    return-void
.end method
