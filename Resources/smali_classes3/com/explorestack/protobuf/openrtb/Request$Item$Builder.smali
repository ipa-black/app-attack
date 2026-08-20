.class public final Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Request.java"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private deal_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;"
        }
    .end annotation
.end field

.field private dlvy_:I

.field private dt_:Ljava/lang/Object;

.field private exp_:I

.field private extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extProto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private flr_:D

.field private flrcur_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private metric_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;"
        }
    .end annotation
.end field

.field private private_:Z

.field private qty_:I

.field private seq_:I

.field private specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private spec_:Lcom/explorestack/protobuf/Any;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7955
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 8288
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8524
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8676
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8830
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 9142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 9861
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 7956
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 7961
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 8288
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8524
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8676
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8830
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 9142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 9861
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 7962
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 7937
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 7937
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;-><init>()V

    return-void
.end method

.method private ensureDealIsMutable()V
    .locals 2

    .line 9144
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 9145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 9146
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 9863
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 9864
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 9865
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMetricIsMutable()V
    .locals 2

    .line 8832
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 8833
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 8834
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9441
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9442
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9446
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 9447
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 9448
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 9450
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7943
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9849
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9850
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 9853
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9854
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9855
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9857
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10160
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 10161
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 10165
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 10166
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 10167
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 10169
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9129
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9130
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 9134
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 9136
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 9138
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSpecFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9694
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9695
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9697
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 9698
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9699
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9700
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 9702
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 7966
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$5800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7967
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7968
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 7969
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllDeal(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;"
        }
    .end annotation

    .line 9320
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9321
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 9322
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 9324
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9326
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;"
        }
    .end annotation

    .line 10039
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 10040
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 10041
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 10043
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 10045
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllMetric(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;"
        }
    .end annotation

    .line 9008
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9009
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 9010
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 9012
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9014
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDeal(ILcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9302
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9303
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 9304
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9305
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9307
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDeal(ILcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9263
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9265
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9267
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 9268
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9269
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9271
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDeal(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9284
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9285
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 9286
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9287
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9289
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDeal(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9242
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9246
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 9247
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9248
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9250
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDealBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 2

    .line 9412
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9413
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v1

    .line 9412
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object v0
.end method

.method public addDealBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 2

    .line 9424
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9425
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v1

    .line 9424
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 10021
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 10022
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 10023
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10024
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 10026
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9982
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9984
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9986
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 9987
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9988
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9990
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 10003
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 10004
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 10005
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10006
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 10008
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9961
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9963
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9965
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 9966
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9967
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9969
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 10131
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 10132
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 10131
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 10143
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 10144
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 10143
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public addMetric(ILcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8990
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8991
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8992
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8993
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8995
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMetric(ILcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8951
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8953
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8955
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8956
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8957
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8959
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMetric(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8972
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8973
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8974
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8975
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8977
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMetric(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8930
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8932
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8934
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8935
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8936
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8938
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMetricBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 2

    .line 9100
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9101
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v1

    .line 9100
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object v0
.end method

.method public addMetricBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 2

    .line 9112
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9113
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v1

    .line 9112
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8130
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 2

    .line 8039
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    .line 8040
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8041
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 3

    .line 8048
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 8050
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6002(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8051
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->qty_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6102(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I

    .line 8052
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->seq_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6202(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I

    .line 8053
    iget-wide v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flr_:D

    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6302(Lcom/explorestack/protobuf/openrtb/Request$Item;D)D

    .line 8054
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6402(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8055
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->exp_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6502(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I

    .line 8056
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6602(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8057
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dlvy_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6702(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I

    .line 8058
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 8059
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8060
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 8061
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 8063
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6802(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 8065
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6802(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;

    .line 8067
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 8068
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 8069
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 8070
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 8072
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6902(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 8074
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6902(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;

    .line 8076
    :goto_1
    iget-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->private_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7002(Lcom/explorestack/protobuf/openrtb/Request$Item;Z)Z

    .line 8077
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 8078
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7102(Lcom/explorestack/protobuf/openrtb/Request$Item;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    goto :goto_2

    .line 8080
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7102(Lcom/explorestack/protobuf/openrtb/Request$Item;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    .line 8082
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 8083
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7202(Lcom/explorestack/protobuf/openrtb/Request$Item;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 8085
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7202(Lcom/explorestack/protobuf/openrtb/Request$Item;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 8087
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_7

    .line 8088
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 8089
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 8090
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 8092
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7302(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 8094
    :cond_7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7302(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;

    .line 8096
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 4

    .line 7974
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 7975
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7977
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->qty_:I

    .line 7979
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->seq_:I

    const-wide/16 v2, 0x0

    .line 7981
    iput-wide v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flr_:D

    .line 7983
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 7985
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->exp_:I

    .line 7987
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 7989
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dlvy_:I

    .line 7991
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7992
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 7993
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    goto :goto_0

    .line 7995
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 7997
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 7998
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 7999
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    goto :goto_1

    .line 8001
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 8003
    :goto_1
    iput-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->private_:Z

    .line 8005
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 8006
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    goto :goto_2

    .line 8008
    :cond_2
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 8009
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8011
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 8012
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 8014
    :cond_3
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 8015
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8017
    :goto_3
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 8018
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 8019
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    goto :goto_4

    .line 8021
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_4
    return-object p0
.end method

.method public clearDeal()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9338
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9339
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 9340
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 9341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9343
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearDlvy()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 8824
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dlvy_:I

    .line 8825
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDt()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8751
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8752
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExp()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 8671
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->exp_:I

    .line 8672
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    .line 9802
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9803
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9804
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9806
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9807
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 10057
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 10058
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 10059
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 10060
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 10062
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8113
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public clearFlr()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 8519
    iput-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flr_:D

    .line 8520
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFlrcur()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8603
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcur()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public clearId()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8363
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8364
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMetric()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9026
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9027
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 9028
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 9029
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9031
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8118
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public clearPrivate()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 9500
    iput-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->private_:Z

    .line 9501
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public clearQty()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 8430
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->qty_:I

    .line 8431
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSeq()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 8476
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->seq_:I

    .line 8477
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSpec()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    .line 9632
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9633
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 9634
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9636
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 9637
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8102
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDeal(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1

    .line 9189
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9190
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p1

    .line 9192
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p1
.end method

.method public getDealBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 9373
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public getDealBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;",
            ">;"
        }
    .end annotation

    .line 9436
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDealCount()I
    .locals 1

    .line 9175
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9176
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 9178
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getDealList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;"
        }
    .end annotation

    .line 9161
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9162
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9164
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDealOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;
    .locals 1

    .line 9384
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9385
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;

    return-object p1

    .line 9386
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;

    return-object p1
.end method

.method public getDealOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9398
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9399
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9401
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1

    .line 8034
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8029
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDlvy()I
    .locals 1

    .line 8791
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dlvy_:I

    return v0
.end method

.method public getDt()Ljava/lang/String;
    .locals 2

    .line 8687
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8688
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8689
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8691
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8692
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    return-object v0

    .line 8695
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDtBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8709
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8710
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8711
    check-cast v0, Ljava/lang/String;

    .line 8712
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8714
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    return-object v0

    .line 8717
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getExp()I
    .locals 1

    .line 8642
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->exp_:I

    return v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 9728
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9729
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 9731
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 9821
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    .line 9822
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 9832
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9833
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 9835
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 9836
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 9908
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9909
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 9911
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 10092
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public getExtProtoBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any$Builder;",
            ">;"
        }
    .end annotation

    .line 10155
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 9894
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9895
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 9897
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getExtProtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 9880
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9881
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9883
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 10103
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 10104
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 10105
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public getExtProtoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10117
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 10118
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 10120
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFlr()D
    .locals 2

    .line 8492
    iget-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flr_:D

    return-wide v0
.end method

.method public getFlrcur()Ljava/lang/String;
    .locals 2

    .line 8536
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8537
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8538
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8540
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8541
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    return-object v0

    .line 8544
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8559
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8560
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8561
    check-cast v0, Ljava/lang/String;

    .line 8562
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8564
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    return-object v0

    .line 8567
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 8299
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8300
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8301
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8303
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8304
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 8307
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8321
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8322
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8323
    check-cast v0, Ljava/lang/String;

    .line 8324
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8326
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 8329
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMetric(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1

    .line 8877
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8878
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p1

    .line 8880
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p1
.end method

.method public getMetricBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 9061
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    return-object p1
.end method

.method public getMetricBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;",
            ">;"
        }
    .end annotation

    .line 9124
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetricCount()I
    .locals 1

    .line 8863
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8864
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 8866
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getMetricList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;"
        }
    .end annotation

    .line 8849
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8850
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8852
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetricOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;
    .locals 1

    .line 9072
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9073
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;

    return-object p1

    .line 9074
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;

    return-object p1
.end method

.method public getMetricOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9086
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9087
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9089
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrivate()Z
    .locals 1

    .line 9467
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->private_:Z

    return v0
.end method

.method public getQty()I
    .locals 1

    .line 8401
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->qty_:I

    return v0
.end method

.method public getSeq()I
    .locals 1

    .line 8447
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->seq_:I

    return v0
.end method

.method public getSpec()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 9538
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9539
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0

    .line 9541
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any;

    return-object v0
.end method

.method public getSpecBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 9656
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    .line 9657
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getSpecFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public getSpecOrBuilder()Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 9672
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9673
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object v0

    .line 9675
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_1

    .line 9676
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 9717
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasSpec()Z
    .locals 1

    .line 9522
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 7949
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 7950
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9780
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9781
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 9783
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 9785
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9787
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_1

    .line 9789
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7937
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

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

    .line 7937
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

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

    .line 7937
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

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

    .line 7937
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8275
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8281
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8277
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Request$Item;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8278
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

    .line 8281
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 8283
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8134
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v0, :cond_0

    .line 8135
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1

    .line 8137
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 4

    .line 8143
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 8144
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8145
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6000(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    .line 8148
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getQty()I

    move-result v0

    if-eqz v0, :cond_2

    .line 8149
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getQty()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setQty(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 8151
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSeq()I

    move-result v0

    if-eqz v0, :cond_3

    .line 8152
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSeq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setSeq(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 8154
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlr()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    .line 8155
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlr()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setFlr(D)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 8157
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcur()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8158
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6400(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    .line 8161
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExp()I

    move-result v0

    if-eqz v0, :cond_6

    .line 8162
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExp()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setExp(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 8164
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8165
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6600(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8166
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    .line 8168
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDlvy()I

    move-result v0

    if-eqz v0, :cond_8

    .line 8169
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDlvy()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setDlvy(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 8171
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 8172
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 8173
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8174
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 8175
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    goto :goto_0

    .line 8177
    :cond_9
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8178
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8180
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_2

    .line 8183
    :cond_a
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 8184
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 8185
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 8186
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8187
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    .line 8188
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 8190
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7400()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8191
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getMetricFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_b
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 8193
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8197
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_f

    .line 8198
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 8199
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8200
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 8201
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    goto :goto_3

    .line 8203
    :cond_e
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 8204
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8206
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_5

    .line 8209
    :cond_f
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 8210
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8211
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 8212
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8213
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    .line 8214
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 8216
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7500()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 8217
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getDealFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_4

    :cond_10
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    .line 8219
    :cond_11
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8223
    :cond_12
    :goto_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getPrivate()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 8224
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getPrivate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setPrivate(Z)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 8226
    :cond_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasSpec()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8227
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeSpec(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 8229
    :cond_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8230
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 8232
    :cond_15
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_17

    .line 8233
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 8234
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 8235
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 8236
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    goto :goto_6

    .line 8238
    :cond_16
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 8239
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8241
    :goto_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_7

    .line 8244
    :cond_17
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 8245
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 8246
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 8247
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8248
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    .line 8249
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->bitField0_:I

    .line 8251
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7600()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 8252
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_18
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_7

    .line 8254
    :cond_19
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8258
    :cond_1a
    :goto_7
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7700(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 8259
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeSpec(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9605
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9606
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    .line 9608
    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->newBuilder(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    goto :goto_0

    .line 9610
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 9612
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_1

    .line 9614
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 10180
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public removeDeal(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9355
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9356
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 9357
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9358
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9360
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 10074
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 10075
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 10076
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10077
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 10079
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeMetric(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9043
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9044
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 9045
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9046
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9048
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setDeal(ILcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9225
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9226
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 9227
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9228
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9230
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDeal(ILcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9204
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dealBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9206
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9208
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureDealIsMutable()V

    .line 9209
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->deal_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9210
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9212
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDlvy(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8807
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dlvy_:I

    .line 8808
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public setDt(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8733
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8736
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8737
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public setDtBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8768
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8770
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$8100(Lcom/explorestack/protobuf/ByteString;)V

    .line 8772
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->dt_:Ljava/lang/Object;

    .line 8773
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public setExp(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8656
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->exp_:I

    .line 8657
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9763
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9764
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9767
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9742
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9744
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9746
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9747
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9749
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9944
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9945
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 9946
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9947
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9949
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9923
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9925
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9927
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureExtProtoIsMutable()V

    .line 9928
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9929
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9931
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8108
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public setFlr(D)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8505
    iput-wide p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flr_:D

    .line 8506
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public setFlrcur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8584
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8587
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8588
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public setFlrcurBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8621
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8623
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$8000(Lcom/explorestack/protobuf/ByteString;)V

    .line 8625
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->flrcur_:Ljava/lang/Object;

    .line 8626
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8348
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8349
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8380
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8382
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->access$7900(Lcom/explorestack/protobuf/ByteString;)V

    .line 8384
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->id_:Ljava/lang/Object;

    .line 8385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public setMetric(ILcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8913
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8914
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8915
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8916
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8918
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setMetric(ILcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 8892
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metricBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8894
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8896
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->ensureMetricIsMutable()V

    .line 8897
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->metric_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8898
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 8900
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPrivate(Z)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 9483
    iput-boolean p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->private_:Z

    .line 9484
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public setQty(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8415
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->qty_:I

    .line 8416
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8124
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public setSeq(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 8461
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->seq_:I

    .line 8462
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    return-object p0
.end method

.method public setSpec(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9583
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9584
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 9585
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9587
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSpec(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 9557
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->specBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9559
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9561
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->spec_:Lcom/explorestack/protobuf/Any;

    .line 9562
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->onChanged()V

    goto :goto_0

    .line 9564
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7937
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 0

    .line 10174
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method
