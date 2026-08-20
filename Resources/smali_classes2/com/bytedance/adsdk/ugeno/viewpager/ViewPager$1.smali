.class final Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$cJ;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$cJ;Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$cJ;)I
    .locals 0

    .line 132
    iget p1, p1, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$cJ;->cJ:I

    iget p2, p2, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$cJ;->cJ:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 129
    check-cast p1, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$cJ;

    check-cast p2, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$cJ;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$1;->Qhi(Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$cJ;Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$cJ;)I

    move-result p1

    return p1
.end method
