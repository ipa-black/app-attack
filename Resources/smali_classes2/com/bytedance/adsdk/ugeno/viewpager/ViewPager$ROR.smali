.class Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$ROR;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ROR"
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;)V
    .locals 0

    .line 3105
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$ROR;->Qhi:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 3110
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$ROR;->Qhi:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->cJ()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 3114
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager$ROR;->Qhi:Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/viewpager/ViewPager;->cJ()V

    return-void
.end method
