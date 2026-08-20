.class Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;
.super Lcom/bytedance/adsdk/ugeno/viewpager/cJ;
.source "BaseSwiper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Qhi"
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/viewpager/cJ;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(I)F
    .locals 1

    .line 313
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-gtz p1, :cond_0

    return v0

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)F

    move-result p1

    div-float/2addr v0, p1

    return v0
.end method

.method public Qhi()I
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public Qhi(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public Qhi(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)Z

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    iget-object v1, v1, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/bytedance/adsdk/ugeno/swiper/cJ;->Qhi(ZII)I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;->Qhi:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    invoke-static {v1, p2, v0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;II)Landroid/view/View;

    move-result-object p2

    .line 302
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public Qhi(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 308
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public Qhi(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
