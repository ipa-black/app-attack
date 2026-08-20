.class public final Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Context.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$Geo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;"
    }
.end annotation


# instance fields
.field private accur_:I

.field private bitField0_:I

.field private city_:Ljava/lang/Object;

.field private country_:Ljava/lang/Object;

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

.field private ipserv_:I

.field private lastfix_:J

.field private lat_:F

.field private lon_:F

.field private metro_:Ljava/lang/Object;

.field private region_:Ljava/lang/Object;

.field private type_:I

.field private utcoffset_:I

.field private zip_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19416
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 19671
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    .line 19917
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    .line 19991
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 20087
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 20183
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 20279
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 20375
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 20670
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 19417
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 19422
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 19671
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    .line 19917
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    .line 19991
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 20087
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 20183
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 20279
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 20375
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 20670
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 19423
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 19398
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 19398
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 20672
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 20673
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 20674
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 19404
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Geo_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 20658
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20659
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 20661
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 20662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 20663
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 20664
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 20666
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 20969
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 20970
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 20974
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 20975
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 20976
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 20978
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 19427
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$15900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19428
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;"
        }
    .end annotation

    .line 20848
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20849
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 20850
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 20852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 20854
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20830
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20831
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 20832
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 20835
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20791
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20793
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20795
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 20796
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20797
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 20799
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20812
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20813
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 20814
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20815
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 20817
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20770
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20772
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20774
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 20775
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 20778
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 20940
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 20941
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 20940
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 20952
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 20953
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 20952
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19557
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 2

    .line 19486
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    .line 19487
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 19488
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 3

    .line 19495
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 19497
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16102(Lcom/explorestack/protobuf/adcom/Context$Geo;I)I

    .line 19498
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lat_:F

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16202(Lcom/explorestack/protobuf/adcom/Context$Geo;F)F

    .line 19499
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lon_:F

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16302(Lcom/explorestack/protobuf/adcom/Context$Geo;F)F

    .line 19500
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->accur_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16402(Lcom/explorestack/protobuf/adcom/Context$Geo;I)I

    .line 19501
    iget-wide v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lastfix_:J

    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16502(Lcom/explorestack/protobuf/adcom/Context$Geo;J)J

    .line 19502
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16602(Lcom/explorestack/protobuf/adcom/Context$Geo;I)I

    .line 19503
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16702(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19504
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16802(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19505
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16902(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19506
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17002(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19507
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17102(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19508
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->utcoffset_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17202(Lcom/explorestack/protobuf/adcom/Context$Geo;I)I

    .line 19509
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 19510
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17302(Lcom/explorestack/protobuf/adcom/Context$Geo;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 19512
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17302(Lcom/explorestack/protobuf/adcom/Context$Geo;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 19514
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2

    .line 19515
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 19516
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 19517
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    .line 19519
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17402(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 19521
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17402(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/util/List;)Ljava/util/List;

    .line 19523
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 3

    .line 19433
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 19434
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    const/4 v1, 0x0

    .line 19436
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lat_:F

    .line 19438
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lon_:F

    .line 19440
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->accur_:I

    const-wide/16 v1, 0x0

    .line 19442
    iput-wide v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lastfix_:J

    .line 19444
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    .line 19446
    const-string v1, ""

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 19448
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 19450
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 19452
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 19454
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 19456
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->utcoffset_:I

    .line 19458
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 19459
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 19461
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 19462
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 19464
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 19465
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 19466
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    goto :goto_1

    .line 19468
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public clearAccur()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 19869
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->accur_:I

    .line 19870
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCity()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20350
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 20351
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCountry()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20062
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 20063
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 2

    .line 20611
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 20612
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 20613
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 20615
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 20616
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20866
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20867
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 20868
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    .line 20869
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 20871
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19540
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public clearIpserv()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 19986
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    .line 19987
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLastfix()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 19912
    iput-wide v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lastfix_:J

    .line 19913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLat()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 19783
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lat_:F

    .line 19784
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLon()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 19826
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lon_:F

    .line 19827
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMetro()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20254
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getMetro()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 20255
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19545
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public clearRegion()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20158
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 20159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearType()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 19740
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    .line 19741
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUtcoffset()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 20509
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->utcoffset_:I

    .line 20510
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearZip()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20446
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getZip()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 20447
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19529
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccur()I
    .locals 1

    .line 19842
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->accur_:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 2

    .line 20289
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 20290
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 20291
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20293
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 20294
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    return-object v0

    .line 20297
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCityBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20310
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 20311
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20312
    check-cast v0, Ljava/lang/String;

    .line 20313
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20315
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    return-object v0

    .line 20318
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 2

    .line 20001
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 20002
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 20003
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20005
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 20006
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    return-object v0

    .line 20009
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCountryBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20022
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 20023
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20024
    check-cast v0, Ljava/lang/String;

    .line 20025
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20027
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    return-object v0

    .line 20030
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 19398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 19481
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 19476
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Geo_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 20537
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 20538
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 20540
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 20630
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    .line 20631
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 20641
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 20642
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 20644
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 20645
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 20717
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20718
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 20720
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 20901
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 20964
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 20703
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20704
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 20706
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

    .line 20689
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20690
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 20692
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 20912
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20913
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 20914
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

    .line 20926
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 20927
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 20929
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIpserv()Lcom/explorestack/protobuf/adcom/IpLocationService;
    .locals 1

    .line 19955
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/IpLocationService;->valueOf(I)Lcom/explorestack/protobuf/adcom/IpLocationService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19956
    sget-object v0, Lcom/explorestack/protobuf/adcom/IpLocationService;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/IpLocationService;

    :cond_0
    return-object v0
.end method

.method public getIpservValue()I
    .locals 1

    .line 19927
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    return v0
.end method

.method public getLastfix()J
    .locals 2

    .line 19885
    iget-wide v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lastfix_:J

    return-wide v0
.end method

.method public getLat()F
    .locals 1

    .line 19756
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lat_:F

    return v0
.end method

.method public getLon()F
    .locals 1

    .line 19799
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lon_:F

    return v0
.end method

.method public getMetro()Ljava/lang/String;
    .locals 2

    .line 20193
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 20194
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 20195
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20197
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 20198
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    return-object v0

    .line 20201
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMetroBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20214
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 20215
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20216
    check-cast v0, Ljava/lang/String;

    .line 20217
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20219
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    return-object v0

    .line 20222
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 2

    .line 20097
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 20098
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 20099
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 20102
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    return-object v0

    .line 20105
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRegionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20118
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 20119
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20120
    check-cast v0, Ljava/lang/String;

    .line 20121
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20123
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    return-object v0

    .line 20126
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getType()Lcom/explorestack/protobuf/adcom/LocationType;
    .locals 1

    .line 19709
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/LocationType;->valueOf(I)Lcom/explorestack/protobuf/adcom/LocationType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19710
    sget-object v0, Lcom/explorestack/protobuf/adcom/LocationType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/LocationType;

    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 19681
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    return v0
.end method

.method public getUtcoffset()I
    .locals 1

    .line 20482
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->utcoffset_:I

    return v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 2

    .line 20385
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 20386
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 20387
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20389
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 20390
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    return-object v0

    .line 20393
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getZipBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20406
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 20407
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20408
    check-cast v0, Ljava/lang/String;

    .line 20409
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20411
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    return-object v0

    .line 20414
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 20526
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 19410
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Geo_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 19411
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20589
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 20590
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 20592
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 20594
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 20596
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_1

    .line 20598
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

    .line 19398
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

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

    .line 19398
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

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

    .line 19398
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

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

    .line 19398
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 19658
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 19664
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19660
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context$Geo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19661
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

    .line 19664
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 19666
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19561
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_0

    .line 19562
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1

    .line 19564
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 4

    .line 19570
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 19571
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16100(Lcom/explorestack/protobuf/adcom/Context$Geo;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 19572
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setTypeValue(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 19574
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLat()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 19575
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLat(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 19577
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLon()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 19578
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLon()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLon(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 19580
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getAccur()I

    move-result v0

    if-eqz v0, :cond_4

    .line 19581
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getAccur()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setAccur(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 19583
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLastfix()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 19584
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLastfix()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLastfix(J)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 19586
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16600(Lcom/explorestack/protobuf/adcom/Context$Geo;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 19587
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getIpservValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setIpservValue(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 19589
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 19590
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16700(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 19591
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    .line 19593
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 19594
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16800(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 19595
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    .line 19597
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getMetro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 19598
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16900(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 19599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    .line 19601
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 19602
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17000(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 19603
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    .line 19605
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getZip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 19606
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17100(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 19607
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    .line 19609
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getUtcoffset()I

    move-result v0

    if-eqz v0, :cond_c

    .line 19610
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getUtcoffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setUtcoffset(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 19612
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 19613
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 19615
    :cond_d
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_f

    .line 19616
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17400(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 19617
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 19618
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17400(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 19619
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    goto :goto_0

    .line 19621
    :cond_e
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 19622
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17400(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19624
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_1

    .line 19627
    :cond_f
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17400(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 19628
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 19629
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 19630
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 19631
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17400(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 19632
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    .line 19634
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17500()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 19635
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_10
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 19637
    :cond_11
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17400(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 19641
    :cond_12
    :goto_1
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17600(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 19642
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 20989
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20883
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20884
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 20885
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20886
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 20888
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAccur(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19855
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->accur_:I

    .line 19856
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 20333
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20336
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 20337
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setCityBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 20366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20368
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$18100(Lcom/explorestack/protobuf/ByteString;)V

    .line 20370
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 20371
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 20045
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20048
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 20049
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setCountryBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 20078
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20080
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17800(Lcom/explorestack/protobuf/ByteString;)V

    .line 20082
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 20083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20572
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20573
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 20574
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 20576
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20551
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20553
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20555
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 20556
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 20558
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20753
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20754
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 20755
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20756
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 20758
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 20732
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20734
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20736
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 20737
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20738
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 20740
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19535
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public setIpserv(Lcom/explorestack/protobuf/adcom/IpLocationService;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19969
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19972
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/IpLocationService;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    .line 19973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setIpservValue(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19940
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    .line 19941
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setLastfix(J)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19898
    iput-wide p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lastfix_:J

    .line 19899
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setLat(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19769
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lat_:F

    .line 19770
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setLon(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19812
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lon_:F

    .line 19813
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setMetro(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 20237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20240
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 20241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setMetroBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 20270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20272
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$18000(Lcom/explorestack/protobuf/ByteString;)V

    .line 20274
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 20275
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 20141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20144
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 20145
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setRegionBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 20174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20176
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17900(Lcom/explorestack/protobuf/ByteString;)V

    .line 20178
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 20179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19551
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public setType(Lcom/explorestack/protobuf/adcom/LocationType;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19723
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19726
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/LocationType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    .line 19727
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setTypeValue(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19694
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    .line 19695
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19398
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 20983
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public setUtcoffset(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 20495
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->utcoffset_:I

    .line 20496
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setZip(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 20429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20432
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 20433
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setZipBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 20462
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20464
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$18200(Lcom/explorestack/protobuf/ByteString;)V

    .line 20466
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 20467
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method
