.class public final Lio/bidmachine/protobuf/AdNetwork$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdNetwork.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdNetworkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/AdNetwork$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/AdNetworkOrBuilder;"
    }
.end annotation


# instance fields
.field private adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private adUnits_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private className_:Ljava/lang/Object;

.field private customParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1463
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1646
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1722
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1927
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1464
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1469
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1646
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1722
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1927
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1470
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdNetwork$1;)V
    .locals 0

    .line 1423
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/AdNetwork$1;)V
    .locals 0

    .line 1423
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;-><init>()V

    return-void
.end method

.method private ensureAdUnitsIsMutable()V
    .locals 2

    .line 1929
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1930
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1931
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2154
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2155
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2159
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 2160
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2161
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 2163
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1429
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetCustomParams()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1802
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 1803
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1810
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    .line 1811
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 1812
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 1815
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1816
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 1818
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1474
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAdUnits(ILio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 2051
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2052
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2053
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2054
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 2056
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdUnits(ILio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 2020
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2022
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2024
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2025
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2026
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 2028
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdUnits(Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 2037
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2038
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2039
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2040
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 2042
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdUnits(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 2003
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2005
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2007
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2008
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2009
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 2011
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdUnitsBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 2

    .line 2133
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2134
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v1

    .line 2133
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object v0
.end method

.method public addAdUnitsBuilder(I)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 2

    .line 2141
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2142
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v1

    .line 2141
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public addAllAdUnits(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;)",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;"
        }
    .end annotation

    .line 2065
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2066
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2067
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2069
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 2071
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1566
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/AdNetwork;
    .locals 2

    .line 1508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    .line 1509
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1510
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/AdNetwork;
    .locals 2

    .line 1517
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/AdNetwork;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdNetwork$1;)V

    .line 1519
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1502(Lio/bidmachine/protobuf/AdNetwork;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1602(Lio/bidmachine/protobuf/AdNetwork;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1702(Lio/bidmachine/protobuf/AdNetwork;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 1522
    invoke-static {v0}, Lio/bidmachine/protobuf/AdNetwork;->access$1700(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 1523
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 1524
    iget v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1525
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1526
    iget v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    .line 1528
    :cond_0
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1802(Lio/bidmachine/protobuf/AdNetwork;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1530
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1802(Lio/bidmachine/protobuf/AdNetwork;Ljava/util/List;)Ljava/util/List;

    .line 1532
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1480
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1481
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1483
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1485
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->clear()V

    .line 1486
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1487
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1488
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    goto :goto_0

    .line 1490
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearAdUnits()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 2079
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2080
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 2081
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    .line 2082
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 2084
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearClassName()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1777
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1778
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCustomParams()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1880
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1881
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1549
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public clearName()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1701
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1702
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1554
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1538
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsCustomParams(Ljava/lang/String;)Z
    .locals 1

    .line 1831
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1832
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAdUnits(I)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1

    .line 1962
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1963
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p1

    .line 1965
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p1
.end method

.method public getAdUnitsBuilder(I)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 1

    .line 2106
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public getAdUnitsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;",
            ">;"
        }
    .end annotation

    .line 2149
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitsCount()I
    .locals 1

    .line 1952
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1953
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1955
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getAdUnitsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1942
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1943
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1945
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitsOrBuilder(I)Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;
    .locals 1

    .line 2113
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2114
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;

    return-object p1

    .line 2115
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;

    return-object p1
.end method

.method public getAdUnitsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2123
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2124
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2126
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 1728
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1729
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1730
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1732
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1733
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    return-object v0

    .line 1736
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClassNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1745
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1746
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1747
    check-cast v0, Ljava/lang/String;

    .line 1748
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1750
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    return-object v0

    .line 1753
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCustomParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1840
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsCount()I
    .locals 1

    .line 1822
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCustomParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1848
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1858
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1860
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1861
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1870
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1872
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1873
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1876
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1874
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;
    .locals 1

    .line 1503
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1498
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMutableCustomParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1901
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1652
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1653
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1654
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1656
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1657
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 1660
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1669
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1670
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1671
    check-cast v0, Ljava/lang/String;

    .line 1672
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1674
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 1677
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1457
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdNetwork;

    const-class v2, Lio/bidmachine/protobuf/AdNetwork$Builder;

    .line 1458
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1437
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 1439
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map field number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1448
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 1450
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map field number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$Builder;

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

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;

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

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$Builder;

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

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1633
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->access$2200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1639
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1635
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/AdNetwork;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1636
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

    .line 1639
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    .line 1641
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1570
    instance-of v0, p1, Lio/bidmachine/protobuf/AdNetwork;

    if-eqz v0, :cond_0

    .line 1571
    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1

    .line 1573
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 2

    .line 1579
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1580
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1581
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1500(Lio/bidmachine/protobuf/AdNetwork;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1582
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    .line 1584
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1585
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1600(Lio/bidmachine/protobuf/AdNetwork;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    .line 1588
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 1589
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1900(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 1588
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 1590
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 1591
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1592
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1593
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1594
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    goto :goto_0

    .line 1596
    :cond_3
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 1597
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1599
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_1

    .line 1602
    :cond_4
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1603
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1604
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1605
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1606
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1607
    iget v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    .line 1609
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->access$2000()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1610
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 1612
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1616
    :cond_7
    :goto_1
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$2100(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    .line 1617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 2174
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public putAllCustomParams(Ljava/util/Map;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;"
        }
    .end annotation

    .line 1921
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1922
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putCustomParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1909
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1910
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1911
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1912
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeAdUnits(I)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 2092
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2093
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2094
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2095
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 2097
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeCustomParams(Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1890
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1891
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1892
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAdUnits(ILio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1990
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1991
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 1992
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1993
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 1995
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAdUnits(ILio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1973
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1975
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1977
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 1978
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1979
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 1981
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1764
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1767
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1768
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public setClassNameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1789
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1791
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$2400(Lcom/explorestack/protobuf/ByteString;)V

    .line 1793
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1794
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1544
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public setName(Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1688
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1691
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1692
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1713
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1715
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$2300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1717
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1560
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 2168
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method
