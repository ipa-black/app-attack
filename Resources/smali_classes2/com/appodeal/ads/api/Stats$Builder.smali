.class public final Lcom/appodeal/ads/api/Stats$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Stats.java"

# interfaces
.implements Lcom/appodeal/ads/api/StatsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Stats$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/StatsOrBuilder;"
    }
.end annotation


# instance fields
.field private adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/appodeal/ads/api/Stats$AdUnit;",
            "Lcom/appodeal/ads/api/Stats$AdUnit$Builder;",
            "Lcom/appodeal/ads/api/Stats$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private adUnit_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appodeal/ads/api/Stats$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/appodeal/ads/api/Adapter;",
            "Lcom/appodeal/ads/api/Adapter$Builder;",
            "Lcom/appodeal/ads/api/AdapterOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private adapter_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appodeal/ads/api/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private capacity_:I

.field private completed_:Z

.field private finish_:J

.field private start_:J

.field private successful_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1870
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2322
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    .line 2634
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    .line 1871
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Stats$1;)V
    .locals 0

    .line 1852
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1876
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2322
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    .line 2634
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    .line 1877
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Stats$1;)V
    .locals 0

    .line 1852
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureAdUnitIsMutable()V
    .locals 2

    .line 2324
    iget v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2325
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    .line 2326
    iget v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureAdapterIsMutable()V
    .locals 2

    .line 2636
    iget v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2637
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    .line 2638
    iget v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAdUnitFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/appodeal/ads/api/Stats$AdUnit;",
            "Lcom/appodeal/ads/api/Stats$AdUnit$Builder;",
            "Lcom/appodeal/ads/api/Stats$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2621
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2622
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    iget v2, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2626
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2627
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2628
    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    .line 2630
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getAdapterFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/appodeal/ads/api/Adapter;",
            "Lcom/appodeal/ads/api/Adapter$Builder;",
            "Lcom/appodeal/ads/api/AdapterOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2933
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2934
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    iget v2, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2938
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 2939
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2940
    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    .line 2942
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1858
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Stats_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1881
    invoke-static {}, Lcom/appodeal/ads/api/Stats;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1882
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getAdUnitFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1883
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getAdapterFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAdUnit(ILcom/appodeal/ads/api/Stats$AdUnit$Builder;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2482
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2483
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdUnitIsMutable()V

    .line 2484
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->build()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2485
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2487
    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->build()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdUnit(ILcom/appodeal/ads/api/Stats$AdUnit;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2443
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2445
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2447
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdUnitIsMutable()V

    .line 2448
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2449
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2451
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdUnit(Lcom/appodeal/ads/api/Stats$AdUnit$Builder;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2464
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2465
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdUnitIsMutable()V

    .line 2466
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->build()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2467
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2469
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->build()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdUnit(Lcom/appodeal/ads/api/Stats$AdUnit;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2422
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2424
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2426
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdUnitIsMutable()V

    .line 2427
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2428
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2430
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdUnitBuilder()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 2

    .line 2592
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getAdUnitFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2593
    invoke-static {}, Lcom/appodeal/ads/api/Stats$AdUnit;->getDefaultInstance()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v1

    .line 2592
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    return-object v0
.end method

.method public addAdUnitBuilder(I)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 2

    .line 2604
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getAdUnitFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2605
    invoke-static {}, Lcom/appodeal/ads/api/Stats$AdUnit;->getDefaultInstance()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v1

    .line 2604
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    return-object p1
.end method

.method public addAdapter(ILcom/appodeal/ads/api/Adapter$Builder;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2794
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2795
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdapterIsMutable()V

    .line 2796
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/appodeal/ads/api/Adapter$Builder;->build()Lcom/appodeal/ads/api/Adapter;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2797
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2799
    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/api/Adapter$Builder;->build()Lcom/appodeal/ads/api/Adapter;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdapter(ILcom/appodeal/ads/api/Adapter;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2755
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2757
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2759
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdapterIsMutable()V

    .line 2760
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2761
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2763
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdapter(Lcom/appodeal/ads/api/Adapter$Builder;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2776
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2777
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdapterIsMutable()V

    .line 2778
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Adapter$Builder;->build()Lcom/appodeal/ads/api/Adapter;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2779
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2781
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Adapter$Builder;->build()Lcom/appodeal/ads/api/Adapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdapter(Lcom/appodeal/ads/api/Adapter;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2734
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2736
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2738
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdapterIsMutable()V

    .line 2739
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2740
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2742
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdapterBuilder()Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 2

    .line 2904
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getAdapterFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2905
    invoke-static {}, Lcom/appodeal/ads/api/Adapter;->getDefaultInstance()Lcom/appodeal/ads/api/Adapter;

    move-result-object v1

    .line 2904
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Adapter$Builder;

    return-object v0
.end method

.method public addAdapterBuilder(I)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 2

    .line 2916
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getAdapterFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2917
    invoke-static {}, Lcom/appodeal/ads/api/Adapter;->getDefaultInstance()Lcom/appodeal/ads/api/Adapter;

    move-result-object v1

    .line 2916
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Adapter$Builder;

    return-object p1
.end method

.method public addAllAdUnit(Ljava/lang/Iterable;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/appodeal/ads/api/Stats$AdUnit;",
            ">;)",
            "Lcom/appodeal/ads/api/Stats$Builder;"
        }
    .end annotation

    .line 2500
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2501
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdUnitIsMutable()V

    .line 2502
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2504
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2506
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllAdapter(Ljava/lang/Iterable;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/appodeal/ads/api/Adapter;",
            ">;)",
            "Lcom/appodeal/ads/api/Stats$Builder;"
        }
    .end annotation

    .line 2812
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2813
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdapterIsMutable()V

    .line 2814
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2816
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2818
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 0

    .line 1995
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/Stats;
    .locals 2

    .line 1927
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->buildPartial()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    .line 1928
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Stats;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1929
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Stats$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->build()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->build()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Stats;
    .locals 3

    .line 1936
    new-instance v0, Lcom/appodeal/ads/api/Stats;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Stats;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Stats$1;)V

    .line 1938
    iget v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->capacity_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Stats;->access$1802(Lcom/appodeal/ads/api/Stats;I)I

    .line 1939
    iget-wide v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->start_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Stats;->access$1902(Lcom/appodeal/ads/api/Stats;J)J

    .line 1940
    iget-wide v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->finish_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Stats;->access$2002(Lcom/appodeal/ads/api/Stats;J)J

    .line 1941
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->successful_:Z

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Stats;->access$2102(Lcom/appodeal/ads/api/Stats;Z)Z

    .line 1942
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->completed_:Z

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Stats;->access$2202(Lcom/appodeal/ads/api/Stats;Z)Z

    .line 1943
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 1944
    iget v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1945
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    .line 1946
    iget v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    .line 1948
    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Stats;->access$2302(Lcom/appodeal/ads/api/Stats;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1950
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Stats;->access$2302(Lcom/appodeal/ads/api/Stats;Ljava/util/List;)Ljava/util/List;

    .line 1952
    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 1953
    iget v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1954
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    .line 1955
    iget v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    .line 1957
    :cond_2
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Stats;->access$2402(Lcom/appodeal/ads/api/Stats;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 1959
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Stats;->access$2402(Lcom/appodeal/ads/api/Stats;Ljava/util/List;)Ljava/util/List;

    .line 1961
    :goto_1
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->buildPartial()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->buildPartial()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Stats$Builder;
    .locals 3

    .line 1888
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 1889
    iput v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->capacity_:I

    const-wide/16 v1, 0x0

    .line 1891
    iput-wide v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->start_:J

    .line 1893
    iput-wide v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->finish_:J

    .line 1895
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->successful_:Z

    .line 1897
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->completed_:Z

    .line 1899
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1900
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    .line 1901
    iget v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    goto :goto_0

    .line 1903
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 1905
    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1906
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    .line 1907
    iget v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    goto :goto_1

    .line 1909
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->clear()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->clear()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->clear()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->clear()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAdUnit()Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2518
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2519
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    .line 2520
    iget v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    .line 2521
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2523
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearAdapter()Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2830
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2831
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    .line 2832
    iget v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    .line 2833
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2835
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearCapacity()Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2144
    iput v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->capacity_:I

    .line 2145
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCompleted()Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2316
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->completed_:Z

    .line 2317
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 0

    .line 1978
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFinish()Lcom/appodeal/ads/api/Stats$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 2230
    iput-wide v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->finish_:J

    .line 2231
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 0

    .line 1983
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearStart()Lcom/appodeal/ads/api/Stats$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 2187
    iput-wide v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->start_:J

    .line 2188
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSuccessful()Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2273
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->successful_:Z

    .line 2274
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 1967
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Stats$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->clone()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->clone()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->clone()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->clone()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->clone()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->clone()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnit(I)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1

    .line 2369
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2370
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p1

    .line 2372
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p1
.end method

.method public getAdUnitBuilder(I)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 1

    .line 2553
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getAdUnitFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    return-object p1
.end method

.method public getAdUnitBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appodeal/ads/api/Stats$AdUnit$Builder;",
            ">;"
        }
    .end annotation

    .line 2616
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getAdUnitFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitCount()I
    .locals 1

    .line 2355
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2356
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2358
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getAdUnitList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appodeal/ads/api/Stats$AdUnit;",
            ">;"
        }
    .end annotation

    .line 2341
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2344
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitOrBuilder(I)Lcom/appodeal/ads/api/Stats$AdUnitOrBuilder;
    .locals 1

    .line 2564
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2565
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnitOrBuilder;

    return-object p1

    .line 2566
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnitOrBuilder;

    return-object p1
.end method

.method public getAdUnitOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/appodeal/ads/api/Stats$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2578
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2579
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2581
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter(I)Lcom/appodeal/ads/api/Adapter;
    .locals 1

    .line 2681
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2682
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Adapter;

    return-object p1

    .line 2684
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Adapter;

    return-object p1
.end method

.method public getAdapterBuilder(I)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 1

    .line 2865
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getAdapterFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Adapter$Builder;

    return-object p1
.end method

.method public getAdapterBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appodeal/ads/api/Adapter$Builder;",
            ">;"
        }
    .end annotation

    .line 2928
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getAdapterFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterCount()I
    .locals 1

    .line 2667
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2668
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2670
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getAdapterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appodeal/ads/api/Adapter;",
            ">;"
        }
    .end annotation

    .line 2653
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2654
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2656
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterOrBuilder(I)Lcom/appodeal/ads/api/AdapterOrBuilder;
    .locals 1

    .line 2876
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2877
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/AdapterOrBuilder;

    return-object p1

    .line 2878
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/AdapterOrBuilder;

    return-object p1
.end method

.method public getAdapterOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/appodeal/ads/api/AdapterOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2890
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2891
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2893
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCapacity()I
    .locals 1

    .line 2117
    iget v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->capacity_:I

    return v0
.end method

.method public getCompleted()Z
    .locals 1

    .line 2289
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->completed_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Stats;
    .locals 1

    .line 1922
    invoke-static {}, Lcom/appodeal/ads/api/Stats;->getDefaultInstance()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1917
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Stats_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFinish()J
    .locals 2

    .line 2203
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->finish_:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    .line 2160
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->start_:J

    return-wide v0
.end method

.method public getSuccessful()Z
    .locals 1

    .line 2246
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->successful_:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1864
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Stats_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Stats;

    const-class v2, Lcom/appodeal/ads/api/Stats$Builder;

    .line 1865
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Stats;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 4

    .line 2008
    invoke-static {}, Lcom/appodeal/ads/api/Stats;->getDefaultInstance()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2009
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getCapacity()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2010
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getCapacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Stats$Builder;->setCapacity(I)Lcom/appodeal/ads/api/Stats$Builder;

    .line 2012
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getStart()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2013
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getStart()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/Stats$Builder;->setStart(J)Lcom/appodeal/ads/api/Stats$Builder;

    .line 2015
    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getFinish()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 2016
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getFinish()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/Stats$Builder;->setFinish(J)Lcom/appodeal/ads/api/Stats$Builder;

    .line 2018
    :cond_3
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2019
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getSuccessful()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Stats$Builder;->setSuccessful(Z)Lcom/appodeal/ads/api/Stats$Builder;

    .line 2021
    :cond_4
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getCompleted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2022
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getCompleted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Stats$Builder;->setCompleted(Z)Lcom/appodeal/ads/api/Stats$Builder;

    .line 2024
    :cond_5
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 2025
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats;->access$2300(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2026
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2027
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats;->access$2300(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    .line 2028
    iget v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    goto :goto_0

    .line 2030
    :cond_6
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdUnitIsMutable()V

    .line 2031
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-static {p1}, Lcom/appodeal/ads/api/Stats;->access$2300(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2033
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_2

    .line 2036
    :cond_7
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats;->access$2300(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2037
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2038
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 2039
    iput-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2040
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats;->access$2300(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    .line 2041
    iget v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    .line 2043
    invoke-static {}, Lcom/appodeal/ads/api/Stats;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2044
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getAdUnitFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 2046
    :cond_9
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/appodeal/ads/api/Stats;->access$2300(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2050
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_c

    .line 2051
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats;->access$2400(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2052
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2053
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats;->access$2400(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    .line 2054
    iget v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    goto :goto_3

    .line 2056
    :cond_b
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdapterIsMutable()V

    .line 2057
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-static {p1}, Lcom/appodeal/ads/api/Stats;->access$2400(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2059
    :goto_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_4

    .line 2062
    :cond_c
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats;->access$2400(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2063
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2064
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 2065
    iput-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2066
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats;->access$2400(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    .line 2067
    iget v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->bitField0_:I

    .line 2069
    invoke-static {}, Lcom/appodeal/ads/api/Stats;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2070
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->getAdapterFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_d
    iput-object v1, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 2072
    :cond_e
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/appodeal/ads/api/Stats;->access$2400(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2076
    :cond_f
    :goto_4
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats;->access$2700(Lcom/appodeal/ads/api/Stats;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$Builder;

    .line 2077
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2093
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Stats;->access$2800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2099
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->mergeFrom(Lcom/appodeal/ads/api/Stats;)Lcom/appodeal/ads/api/Stats$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2095
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Stats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2096
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 2099
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Stats$Builder;->mergeFrom(Lcom/appodeal/ads/api/Stats;)Lcom/appodeal/ads/api/Stats$Builder;

    .line 2101
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 1999
    instance-of v0, p1, Lcom/appodeal/ads/api/Stats;

    if-eqz v0, :cond_0

    .line 2000
    check-cast p1, Lcom/appodeal/ads/api/Stats;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->mergeFrom(Lcom/appodeal/ads/api/Stats;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1

    .line 2002
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 0

    .line 2953
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeAdUnit(I)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2535
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2536
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdUnitIsMutable()V

    .line 2537
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2538
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2540
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeAdapter(I)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2847
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2848
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdapterIsMutable()V

    .line 2849
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2850
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2852
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAdUnit(ILcom/appodeal/ads/api/Stats$AdUnit$Builder;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2405
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2406
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdUnitIsMutable()V

    .line 2407
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->build()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2408
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2410
    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->build()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAdUnit(ILcom/appodeal/ads/api/Stats$AdUnit;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2384
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnitBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2386
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2388
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdUnitIsMutable()V

    .line 2389
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adUnit_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2390
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2392
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAdapter(ILcom/appodeal/ads/api/Adapter$Builder;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2717
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2718
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdapterIsMutable()V

    .line 2719
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/appodeal/ads/api/Adapter$Builder;->build()Lcom/appodeal/ads/api/Adapter;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2720
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2722
    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/api/Adapter$Builder;->build()Lcom/appodeal/ads/api/Adapter;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAdapter(ILcom/appodeal/ads/api/Adapter;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 2696
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapterBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2698
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2700
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$Builder;->ensureAdapterIsMutable()V

    .line 2701
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$Builder;->adapter_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2702
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    goto :goto_0

    .line 2704
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setCapacity(I)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 0

    .line 2130
    iput p1, p0, Lcom/appodeal/ads/api/Stats$Builder;->capacity_:I

    .line 2131
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    return-object p0
.end method

.method public setCompleted(Z)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 0

    .line 2302
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Stats$Builder;->completed_:Z

    .line 2303
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 0

    .line 1973
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFinish(J)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 0

    .line 2216
    iput-wide p1, p0, Lcom/appodeal/ads/api/Stats$Builder;->finish_:J

    .line 2217
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 0

    .line 1989
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Stats$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Stats$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStart(J)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 0

    .line 2173
    iput-wide p1, p0, Lcom/appodeal/ads/api/Stats$Builder;->start_:J

    .line 2174
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    return-object p0
.end method

.method public setSuccessful(Z)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 0

    .line 2259
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Stats$Builder;->successful_:Z

    .line 2260
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 0

    .line 2947
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method
