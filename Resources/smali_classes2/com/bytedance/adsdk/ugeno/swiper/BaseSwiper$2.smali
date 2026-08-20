.class Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;
.super Ljava/lang/Object;
.source "BaseSwiper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ac(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 415
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-static {v2}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const v2, 0x7fffffff

    if-lt v0, v2, :cond_0

    .line 418
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->Qhi(IZ)V

    goto :goto_0

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    iget-object v2, v2, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->Qhi(IZ)V

    .line 422
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->CJ(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-static {v2}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->fl(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 424
    :cond_1
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    iget-object v2, v2, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->getAdapter()Lcom/bytedance/adsdk/ugeno/viewpager/cJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/viewpager/cJ;->Qhi()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 426
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0, v3, v3}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->Qhi(IZ)V

    .line 427
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->CJ(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-static {v2}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->fl(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 429
    :cond_2
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    iget-object v2, v2, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->Qhi(IZ)V

    .line 430
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->CJ(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-static {v2}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->fl(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
