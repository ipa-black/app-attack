.class public abstract Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
.super Landroid/widget/FrameLayout;
.source "BaseSwiper.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$fl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$cJ;,
        Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$fl;"
    }
.end annotation


# instance fields
.field private ABk:Z

.field private CJ:I

.field private Gm:Z

.field private HzH:Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;

.field private final MQ:Ljava/lang/Runnable;

.field protected Qhi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private ROR:I

.field private Sf:Ljava/lang/String;

.field private Tgh:I

.field private WAv:Z

.field private ac:I

.field protected cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

.field private fl:I

.field private hm:F

.field private hpZ:I

.field private iMK:I

.field private kYc:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;

.field private pA:I

.field private final qMt:Ljava/lang/Runnable;

.field private tP:Lcom/bytedance/adsdk/ugeno/swiper/Qhi;

.field private zc:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi:Ljava/util/List;

    const/16 v0, 0x7d0

    .line 33
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ac:I

    const/16 v0, 0x1f4

    .line 34
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->CJ:I

    const/16 v0, 0xa

    .line 35
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->fl:I

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Tgh:I

    .line 37
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ROR:I

    .line 39
    const-string v1, "normal"

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Sf:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->hm:F

    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->WAv:Z

    .line 42
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Gm:Z

    .line 43
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->zc:Z

    .line 44
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ABk:Z

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->iMK:I

    .line 47
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->pA:I

    .line 48
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->hpZ:I

    .line 388
    new-instance v1, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$1;

    invoke-direct {v1, p0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$1;-><init>(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)V

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->MQ:Ljava/lang/Runnable;

    .line 410
    new-instance v1, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;

    invoke-direct {v1, p0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$2;-><init>(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)V

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->qMt:Ljava/lang/Runnable;

    .line 60
    new-instance v1, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$cJ;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$cJ;-><init>(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    .line 61
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 62
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 63
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v0, Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;

    invoke-direct {v0, p1}, Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->HzH:Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;

    .line 66
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)Ljava/lang/Runnable;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->qMt:Ljava/lang/Runnable;

    return-object p0
.end method

.method private Qhi(II)Landroid/view/View;
    .locals 3

    .line 201
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 202
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 204
    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ROR(I)Landroid/view/View;

    move-result-object p1

    .line 205
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 206
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 209
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 212
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 213
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 214
    invoke-virtual {p2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 217
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method static synthetic Qhi(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;II)Landroid/view/View;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->zc:Z

    return p0
.end method

.method static synthetic Tgh(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ABk:Z

    return p0
.end method

.method static synthetic ac(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Gm:Z

    return p0
.end method

.method static synthetic cJ(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->hm:F

    return p0
.end method

.method static synthetic fl(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ac:I

    return p0
.end method


# virtual methods
.method public CJ(I)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
    .locals 6

    .line 132
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->fl:I

    .line 133
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Sf:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Tgh:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ROR:I

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(Ljava/lang/String;IIIZ)V

    return-object p0
.end method

.method public Qhi(F)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
    .locals 0

    .line 121
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->hm:F

    return-object p0
.end method

.method public Qhi(I)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
    .locals 0

    .line 81
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ac:I

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ()V

    return-object p0
.end method

.method public Qhi(Ljava/lang/Object;)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->WAv:Z

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->HzH:Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;->cJ()V

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->kYc:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;

    if-eqz p1, :cond_1

    .line 233
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;->ac()V

    .line 234
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->HzH:Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->iMK:I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;->Qhi(II)V

    :cond_1
    return-object p0
.end method

.method public Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
    .locals 6

    .line 126
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Sf:Ljava/lang/String;

    .line 127
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->fl:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Tgh:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ROR:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(Ljava/lang/String;IIIZ)V

    return-object p0
.end method

.method public Qhi(Z)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Gm:Z

    .line 71
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ()V

    return-object p0
.end method

.method public Qhi()V
    .locals 6

    .line 174
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Sf:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->fl:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Tgh:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ROR:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(Ljava/lang/String;IIIZ)V

    .line 175
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->kYc:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;-><init>(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->kYc:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;

    .line 177
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->Qhi(Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$fl;)V

    .line 178
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->kYc:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->setAdapter(Lcom/bytedance/adsdk/ugeno/viewpager/cJ;)V

    .line 182
    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->iMK:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->iMK:I

    .line 185
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->zc:Z

    if-eqz v0, :cond_3

    const v0, 0x3fffffff    # 1.9999999f

    .line 186
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->iMK:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 188
    :cond_3
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->iMK:I

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->Qhi(IZ)V

    .line 192
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->zc:Z

    if-nez v0, :cond_4

    .line 193
    invoke-virtual {p0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Sf(I)V

    .line 195
    :cond_4
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Gm:Z

    if-eqz v0, :cond_5

    .line 196
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ()V

    :cond_5
    return-void
.end method

.method public Qhi(IFI)V
    .locals 0

    .line 258
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->tP:Lcom/bytedance/adsdk/ugeno/swiper/Qhi;

    if-eqz p2, :cond_0

    .line 259
    iget-boolean p2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->zc:Z

    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/bytedance/adsdk/ugeno/swiper/cJ;->Qhi(ZII)I

    :cond_0
    return-void
.end method

.method public Qhi(Ljava/lang/String;IIIZ)V
    .locals 2

    .line 150
    iget-object p5, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->kYc:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;

    if-eqz p5, :cond_0

    .line 151
    invoke-virtual {p5}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;->ac()V

    :cond_0
    const/4 p5, 0x0

    .line 154
    invoke-virtual {p0, p5}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->setClipChildren(Z)V

    .line 155
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0, p5}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->setClipChildren(Z)V

    .line 156
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0, p2}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->setPageMargin(I)V

    .line 157
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 158
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 159
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int/2addr p3, p2

    iput p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p4, p2

    .line 160
    iput p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 161
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    :cond_1
    const-string p2, "linear"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 165
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    new-instance p2, Lcom/bytedance/adsdk/ugeno/swiper/Qhi/Qhi;

    invoke-direct {p2}, Lcom/bytedance/adsdk/ugeno/swiper/Qhi/Qhi;-><init>()V

    invoke-virtual {p1, p5, p2}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->Qhi(ZLcom/bytedance/adsdk/ugeno/viewpager/ViewPager$Tgh;)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    const/4 p2, 0x0

    invoke-virtual {p1, p5, p2}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->Qhi(ZLcom/bytedance/adsdk/ugeno/viewpager/ViewPager$Tgh;)V

    .line 169
    :goto_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->hm:F

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public abstract ROR(I)Landroid/view/View;
.end method

.method public Sf(I)V
    .locals 8

    .line 265
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->tP:Lcom/bytedance/adsdk/ugeno/swiper/Qhi;

    if-eqz v0, :cond_2

    .line 266
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->zc:Z

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/swiper/cJ;->Qhi(ZII)I

    move-result v4

    .line 267
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->tP:Lcom/bytedance/adsdk/ugeno/swiper/Qhi;

    iget-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->zc:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v4, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-ne v4, v5, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    move v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/bytedance/adsdk/ugeno/swiper/Qhi;->Qhi(ZIIZZ)V

    .line 269
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->WAv:Z

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->HzH:Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;->Qhi(I)V

    :cond_3
    return-void
.end method

.method public Tgh(I)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
    .locals 6

    .line 144
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ROR:I

    .line 145
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Sf:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->fl:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Tgh:I

    const/4 v5, 0x1

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(Ljava/lang/String;IIIZ)V

    return-object p0
.end method

.method public WAv(I)V
    .locals 6

    .line 356
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Sf:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->fl:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Tgh:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ROR:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(Ljava/lang/String;IIIZ)V

    .line 357
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->kYc:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;-><init>(Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->kYc:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;

    .line 359
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->Qhi(Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$fl;)V

    .line 360
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->kYc:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->setAdapter(Lcom/bytedance/adsdk/ugeno/viewpager/cJ;)V

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->zc:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const v0, 0x7fffffff

    if-lt p1, v0, :cond_1

    .line 366
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    const v0, 0x3fffffff    # 1.9999999f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->Qhi(IZ)V

    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->Qhi(IZ)V

    return-void

    :cond_2
    if-ltz p1, :cond_4

    .line 372
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->Qhi(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public ac(I)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->HzH:Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;->setUnSelectedColor(I)V

    return-object p0
.end method

.method public ac(Z)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->HzH:Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;->setLoop(Z)V

    .line 108
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->zc:Z

    if-eq v0, p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/cJ;->Qhi(ZII)I

    move-result v0

    .line 110
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->zc:Z

    .line 111
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->kYc:Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper$Qhi;->ac()V

    .line 113
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-object p0
.end method

.method public ac()V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->qMt:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cJ(I)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->HzH:Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/swiper/indicator/DotIndicator;->setSelectedColor(I)V

    return-object p0
.end method

.method public cJ(Z)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->WAv:Z

    return-object p0
.end method

.method public cJ()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->qMt:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 328
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->qMt:Ljava/lang/Runnable;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ac:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 439
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Gm:Z

    if-eqz v0, :cond_2

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 446
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ac()V

    goto :goto_1

    .line 444
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ()V

    .line 450
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public fl(I)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;
    .locals 6

    .line 138
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Tgh:I

    .line 139
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Sf:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->fl:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ROR:I

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(Ljava/lang/String;IIIZ)V

    return-object p0
.end method

.method public getAdapter()Lcom/bytedance/adsdk/ugeno/viewpager/cJ;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->getAdapter()Lcom/bytedance/adsdk/ugeno/viewpager/cJ;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getViewPager()Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    return-object v0
.end method

.method public hm(I)V
    .locals 0

    return-void
.end method

.method public setOnPageChangeListener(Lcom/bytedance/adsdk/ugeno/swiper/Qhi;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->tP:Lcom/bytedance/adsdk/ugeno/swiper/Qhi;

    return-void
.end method
