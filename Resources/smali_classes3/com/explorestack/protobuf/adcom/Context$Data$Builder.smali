.class public final Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Context.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$Data$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

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

.field private id_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private segment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16937
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 17171
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 17267
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 17364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 17831
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 16938
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 16943
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 17171
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 17267
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 17364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 17831
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 16944
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 16919
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 16919
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 17833
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 17834
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 17835
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSegmentIsMutable()V
    .locals 2

    .line 17366
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 17367
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 17368
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 16925
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 17819
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17820
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 17822
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 17823
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 17824
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 17825
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 17827
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 18130
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 18131
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 18135
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 18136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 18137
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 18139
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 17663
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 17664
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 17668
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 17669
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 17670
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 17672
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 16948
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16949
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 16950
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Builder;"
        }
    .end annotation

    .line 18009
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 18010
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 18011
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 18013
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 18015
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllSegment(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Builder;"
        }
    .end annotation

    .line 17542
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17543
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 17544
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 17546
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17548
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17991
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17992
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17993
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17994
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17996
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17952
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17954
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17956
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17957
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17958
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17960
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17973
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17974
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17975
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17976
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17978
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17931
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17933
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17935
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17936
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17939
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 18101
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 18102
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 18101
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 18113
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 18114
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 18113
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 17064
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method

.method public addSegment(ILcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17524
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17525
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 17526
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17527
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17529
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSegment(ILcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17485
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17487
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17489
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 17490
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17491
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17493
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSegment(Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17506
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17507
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 17508
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17509
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17511
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSegment(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17464
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17466
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17468
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 17469
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17470
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17472
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSegmentBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 2

    .line 17634
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 17635
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v1

    .line 17634
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object v0
.end method

.method public addSegmentBuilder(I)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 2

    .line 17646
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 17647
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v1

    .line 17646
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 2

    .line 16994
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    .line 16995
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 16996
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 2

    .line 17003
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 17005
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14502(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17006
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14602(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17007
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 17008
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 17009
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 17010
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    .line 17012
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14702(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 17014
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14702(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/util/List;)Ljava/util/List;

    .line 17016
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 17017
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14802(Lcom/explorestack/protobuf/adcom/Context$Data;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 17019
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14802(Lcom/explorestack/protobuf/adcom/Context$Data;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 17021
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 17022
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 17023
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 17024
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    .line 17026
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14902(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 17028
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14902(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/util/List;)Ljava/util/List;

    .line 17030
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 2

    .line 16955
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 16956
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 16958
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 16960
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16961
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 16962
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    goto :goto_0

    .line 16964
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 16966
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 16967
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 16969
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 16970
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 16972
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 16973
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 16974
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    goto :goto_2

    .line 16976
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_2
    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 2

    .line 17772
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 17773
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 17774
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17776
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 17777
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 18027
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 18028
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 18029
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    .line 18030
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 18032
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 17047
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method

.method public clearId()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17242
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 17243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17338
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 17339
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 17052
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method

.method public clearSegment()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17560
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17561
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 17562
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    .line 17563
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17565
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17036
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 16919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1

    .line 16989
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 16984
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 17698
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 17699
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 17701
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 17791
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    .line 17792
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 17802
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 17803
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 17805
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 17806
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 17878
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17879
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 17881
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 18062
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 18125
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 17864
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17865
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 17867
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

    .line 17850
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17851
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17853
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 18073
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 18074
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 18075
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

    .line 18087
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 18088
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 18090
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 17181
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 17182
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17183
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17185
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17186
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 17189
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 17202
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 17203
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17204
    check-cast v0, Ljava/lang/String;

    .line 17205
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 17207
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 17210
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 17277
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 17278
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17279
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17281
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17282
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 17285
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 17298
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 17299
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17300
    check-cast v0, Ljava/lang/String;

    .line 17301
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 17303
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 17306
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSegment(I)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1

    .line 17411
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17412
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p1

    .line 17414
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p1
.end method

.method public getSegmentBuilder(I)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 17595
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object p1
.end method

.method public getSegmentBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;",
            ">;"
        }
    .end annotation

    .line 17658
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentCount()I
    .locals 1

    .line 17397
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17398
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 17400
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getSegmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation

    .line 17383
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17384
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17386
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentOrBuilder(I)Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;
    .locals 1

    .line 17606
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17607
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;

    return-object p1

    .line 17608
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;

    return-object p1
.end method

.method public getSegmentOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 17620
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 17621
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17623
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 17687
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 16931
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Data;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    .line 16932
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17750
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 17751
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 17753
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 17755
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 17757
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_1

    .line 17759
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

    .line 16919
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

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

    .line 16919
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

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

    .line 16919
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

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

    .line 16919
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17158
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$15300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 17164
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17160
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context$Data;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17161
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

    .line 17164
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    .line 17166
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17068
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context$Data;

    if-eqz v0, :cond_0

    .line 17069
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1

    .line 17071
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 3

    .line 17077
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 17078
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 17079
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14500(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 17080
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    .line 17082
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 17083
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14600(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 17084
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    .line 17086
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 17087
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17088
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17089
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 17090
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    goto :goto_0

    .line 17092
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 17093
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17095
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_2

    .line 17098
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17099
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17100
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 17101
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 17102
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 17103
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    .line 17105
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$15000()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17106
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 17108
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 17112
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17113
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    .line 17115
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_a

    .line 17116
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 17117
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17118
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 17119
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    goto :goto_3

    .line 17121
    :cond_9
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17122
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17124
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_4

    .line 17127
    :cond_a
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 17128
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 17129
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 17130
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 17131
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 17132
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    .line 17134
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$15100()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 17135
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_b
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 17137
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 17141
    :cond_d
    :goto_4
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$15200(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    .line 17142
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 18150
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 18044
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 18045
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 18046
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18047
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 18049
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeSegment(I)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17577
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17578
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 17579
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17580
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17582
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17733
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17734
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 17735
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17737
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17712
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17714
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17716
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 17717
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17719
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17914
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17915
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17916
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17917
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17919
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17893
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17895
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17897
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17898
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17899
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17901
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 17042
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 17225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17228
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 17229
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 17258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17260
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$15400(Lcom/explorestack/protobuf/ByteString;)V

    .line 17262
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 17263
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 17321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17324
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 17325
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 17354
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17356
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$15500(Lcom/explorestack/protobuf/ByteString;)V

    .line 17358
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 17359
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 17058
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method

.method public setSegment(ILcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17447
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17448
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 17449
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17450
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17452
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSegment(ILcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17426
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17428
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17430
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 17431
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17432
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17434
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16919
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 18144
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method
