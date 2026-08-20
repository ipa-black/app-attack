.class public abstract Lcom/bytedance/adsdk/ugeno/viewpager/cJ;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# instance fields
.field private final Qhi:Landroid/database/DataSetObservable;

.field private cJ:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/viewpager/cJ;->Qhi:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public Qhi(I)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public abstract Qhi()I
.end method

.method public Qhi(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public Qhi(Landroid/view/View;I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Required method instantiateItem was not overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Qhi(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/viewpager/cJ;->Qhi(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method Qhi(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/viewpager/cJ;->cJ:Landroid/database/DataSetObserver;

    .line 318
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public Qhi(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Required method destroyItem was not overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Qhi(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/viewpager/cJ;->Qhi(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public abstract Qhi(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public ac()V
    .locals 1

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/viewpager/cJ;->cJ:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 293
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/viewpager/cJ;->Qhi:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void

    :catchall_0
    move-exception v0

    .line 293
    monitor-exit p0

    throw v0
.end method

.method public cJ()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
