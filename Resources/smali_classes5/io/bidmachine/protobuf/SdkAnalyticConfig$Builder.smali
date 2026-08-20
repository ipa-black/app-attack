.class public final Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SdkAnalyticConfig.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkAnalyticConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private context_:Ljava/lang/Object;

.field private count_:I

.field private interval_:I

.field private metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private metricConfigs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            ">;"
        }
    .end annotation
.end field

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1644
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1834
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1930
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 2113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 1645
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1650
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1834
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1930
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 2113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 1651
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .locals 0

    .line 1626
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .locals 0

    .line 1626
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;-><init>()V

    return-void
.end method

.method private ensureMetricConfigsIsMutable()V
    .locals 2

    .line 2115
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2116
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 2117
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1632
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2340
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2341
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2345
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2346
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2347
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 2349
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1655
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllMetricConfigs(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            ">;)",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;"
        }
    .end annotation

    .line 2251
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2252
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2253
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    goto :goto_0

    .line 2257
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMetricConfigs(ILio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 2237
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2238
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2239
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2240
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    goto :goto_0

    .line 2242
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMetricConfigs(ILio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 2206
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2208
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2210
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2211
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2212
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    goto :goto_0

    .line 2214
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMetricConfigs(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 2223
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2224
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2225
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2226
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    goto :goto_0

    .line 2228
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMetricConfigs(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 2189
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2193
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2194
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2195
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    goto :goto_0

    .line 2197
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMetricConfigsBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 2

    .line 2319
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2320
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v1

    .line 2319
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object v0
.end method

.method public addMetricConfigsBuilder(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 2

    .line 2327
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2328
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v1

    .line 2327
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 0

    .line 1750
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 2

    .line 1692
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    .line 1693
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1694
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 2

    .line 1701
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    .line 1703
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$1702(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$1802(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->interval_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$1902(Lio/bidmachine/protobuf/SdkAnalyticConfig;I)I

    .line 1706
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->count_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2002(Lio/bidmachine/protobuf/SdkAnalyticConfig;I)I

    .line 1707
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 1708
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1709
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 1710
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    .line 1712
    :cond_0
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2102(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1714
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2102(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/util/List;)Ljava/util/List;

    .line 1716
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 1661
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1662
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1664
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1666
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->interval_:I

    .line 1668
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->count_:I

    .line 1670
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1671
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 1672
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    goto :goto_0

    .line 1674
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearContext()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 2001
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 2002
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCount()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2107
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->count_:I

    .line 2108
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 0

    .line 1733
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public clearInterval()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2064
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->interval_:I

    .line 2065
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMetricConfigs()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 2265
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2266
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 2267
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    .line 2268
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    goto :goto_0

    .line 2270
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 0

    .line 1738
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public clearUrl()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 1905
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1906
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 1722
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 2

    .line 1940
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 1941
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1942
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1944
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1945
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    return-object v0

    .line 1948
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContextBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1961
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 1962
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1963
    check-cast v0, Ljava/lang/String;

    .line 1964
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1966
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    return-object v0

    .line 1969
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 2080
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1

    .line 1687
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1682
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .line 2037
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->interval_:I

    return v0
.end method

.method public getMetricConfigs(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .locals 1

    .line 2148
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2149
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p1

    .line 2151
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p1
.end method

.method public getMetricConfigsBuilder(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1

    .line 2292
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public getMetricConfigsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;",
            ">;"
        }
    .end annotation

    .line 2335
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetricConfigsCount()I
    .locals 1

    .line 2138
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2139
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2141
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getMetricConfigsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            ">;"
        }
    .end annotation

    .line 2128
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2129
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2131
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetricConfigsOrBuilder(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;
    .locals 1

    .line 2299
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2300
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;

    return-object p1

    .line 2301
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;

    return-object p1
.end method

.method public getMetricConfigsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2309
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2310
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2312
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 1844
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1845
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1846
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1848
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1849
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    return-object v0

    .line 1852
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1865
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1866
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1867
    check-cast v0, Ljava/lang/String;

    .line 1868
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1870
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    return-object v0

    .line 1873
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1638
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    const-class v2, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 1639
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

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

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

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

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

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

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1821
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1827
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1823
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/SdkAnalyticConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1824
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

    .line 1827
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 1829
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 1754
    instance-of v0, p1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-eqz v0, :cond_0

    .line 1755
    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1

    .line 1757
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 2

    .line 1763
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1764
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1765
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$1700(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1766
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    .line 1768
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1769
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$1800(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 1770
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    .line 1772
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getInterval()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1773
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setInterval(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 1775
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1776
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setCount(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 1778
    :cond_4
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_6

    .line 1779
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1780
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1781
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 1782
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    goto :goto_0

    .line 1784
    :cond_5
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 1785
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1787
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    goto :goto_1

    .line 1790
    :cond_6
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1791
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1792
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1793
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1794
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    .line 1795
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->bitField0_:I

    .line 1797
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1798
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->getMetricConfigsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 1800
    :cond_8
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1804
    :cond_9
    :goto_1
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2300(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 1805
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 0

    .line 2360
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public removeMetricConfigs(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 2278
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2279
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2280
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2281
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    goto :goto_0

    .line 2283
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setContext(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 0

    .line 1984
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1987
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 1988
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public setContextBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 0

    .line 2017
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2019
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2600(Lcom/explorestack/protobuf/ByteString;)V

    .line 2021
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->context_:Ljava/lang/Object;

    .line 2022
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public setCount(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 0

    .line 2093
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->count_:I

    .line 2094
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 0

    .line 1728
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public setInterval(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 0

    .line 2050
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->interval_:I

    .line 2051
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public setMetricConfigs(ILio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 2176
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2177
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2178
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2179
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    goto :goto_0

    .line 2181
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setMetricConfigs(ILio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 2159
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2161
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2163
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->ensureMetricConfigsIsMutable()V

    .line 2164
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2165
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    goto :goto_0

    .line 2167
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 0

    .line 1744
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 0

    .line 2354
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object p1
.end method

.method public setUrl(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 0

    .line 1888
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1891
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1892
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public setUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 0

    .line 1921
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1923
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->access$2500(Lcom/explorestack/protobuf/ByteString;)V

    .line 1925
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->url_:Ljava/lang/Object;

    .line 1926
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->onChanged()V

    return-object p0
.end method
