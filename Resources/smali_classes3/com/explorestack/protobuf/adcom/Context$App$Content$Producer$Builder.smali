.class public final Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Context.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$App$Content$ProducerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Context$App$Content$ProducerOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cat_:Lcom/explorestack/protobuf/LazyStringList;

.field private cattax_:I

.field private domain_:Ljava/lang/Object;

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


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4794
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 5016
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 5112
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 5208
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 5304
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 5459
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    .line 5689
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 4795
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 4800
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 5016
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 5112
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 5208
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 5304
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 p1, 0x0

    .line 5459
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    .line 5689
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 4801
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 4776
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 4776
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;-><init>()V

    return-void
.end method

.method private ensureCatIsMutable()V
    .locals 2

    .line 5306
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 5307
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5308
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 5691
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 5692
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 5693
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4782
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Content_Producer_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 5677
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5678
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5680
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 5681
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5682
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5683
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5685
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 5988
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5989
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5993
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 5994
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 5995
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 5997
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 4805
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4806
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllCat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;"
        }
    .end annotation

    .line 5416
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureCatIsMutable()V

    .line 5417
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5419
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;"
        }
    .end annotation

    .line 5867
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5868
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5869
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5871
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5873
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addCat(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5397
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5399
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureCatIsMutable()V

    .line 5400
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 5401
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public addCatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5450
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5452
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3600(Lcom/explorestack/protobuf/ByteString;)V

    .line 5453
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureCatIsMutable()V

    .line 5454
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 5455
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5849
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5850
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5851
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5854
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5810
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5812
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5814
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5815
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5816
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5818
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5831
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5832
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5833
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5836
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5789
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5791
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5793
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5794
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5795
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5797
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 5959
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5960
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 5959
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 5971
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5972
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 5971
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4918
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 2

    .line 4850
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    .line 4851
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4852
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 2

    .line 4859
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 4861
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2302(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4862
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2402(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4863
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2502(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4864
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4865
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 4866
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    .line 4868
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2602(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 4869
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2702(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;I)I

    .line 4870
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 4871
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2802(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 4873
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2802(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 4875
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 4876
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 4877
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 4878
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    .line 4880
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2902(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 4882
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2902(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/util/List;)Ljava/util/List;

    .line 4884
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 2

    .line 4811
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 4812
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 4814
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 4816
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 4818
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 4819
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4820
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    .line 4822
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4823
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 4825
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4826
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4828
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4829
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 4830
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    goto :goto_1

    .line 4832
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public clearCat()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5432
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5433
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    .line 5434
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCattax()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5528
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    .line 5529
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDomain()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5279
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 5280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 2

    .line 5630
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5631
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5632
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5634
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5635
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5885
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5886
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 5887
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    .line 5888
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5890
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4901
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method

.method public clearId()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5087
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 5088
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5183
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 5184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4906
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 4890
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCat(I)Ljava/lang/String;
    .locals 1

    .line 5347
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 5361
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCatCount()I
    .locals 1

    .line 5334
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 5322
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCatList()Ljava/util/List;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 5497
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5498
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public getCattaxValue()I
    .locals 1

    .line 5469
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1

    .line 4845
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4840
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Content_Producer_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .line 5218
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 5219
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5220
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5222
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5223
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    return-object v0

    .line 5226
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDomainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 5239
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 5240
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5241
    check-cast v0, Ljava/lang/String;

    .line 5242
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5244
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    return-object v0

    .line 5247
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 5556
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5557
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 5559
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 5649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    .line 5650
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 5660
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 5661
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 5663
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 5664
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 5736
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5737
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 5739
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 5920
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 5983
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 5722
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5723
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 5725
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

    .line 5708
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5709
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5711
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 5931
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5932
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 5933
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

    .line 5945
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 5946
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5948
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 5026
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 5027
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5028
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5030
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5031
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 5034
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 5047
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 5048
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5049
    check-cast v0, Ljava/lang/String;

    .line 5050
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5052
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 5055
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 5122
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 5123
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5124
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5126
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5127
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 5130
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 5143
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 5144
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5145
    check-cast v0, Ljava/lang/String;

    .line 5146
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5148
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 5151
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 5545
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 4788
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Content_Producer_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    .line 4789
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5608
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5609
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 5611
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 5613
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5615
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_1

    .line 5617
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

    .line 4776
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

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

    .line 4776
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

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

    .line 4776
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

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

    .line 4776
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5003
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5009
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5005
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5006
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

    .line 5009
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    .line 5011
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 4922
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    if-eqz v0, :cond_0

    .line 4923
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1

    .line 4925
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 2

    .line 4931
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4932
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4933
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2300(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 4934
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    .line 4936
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4937
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2400(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 4938
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    .line 4940
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4941
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2500(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 4942
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    .line 4944
    :cond_3
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2600(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4945
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4946
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2600(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 4947
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    goto :goto_0

    .line 4949
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureCatIsMutable()V

    .line 4950
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2600(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 4952
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    .line 4954
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2700(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 4955
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCattaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    .line 4957
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4958
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    .line 4960
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    .line 4961
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4962
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4963
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 4964
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    goto :goto_1

    .line 4966
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 4967
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4969
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_2

    .line 4972
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4973
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4974
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 4975
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 4976
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 4977
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    .line 4979
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3000()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4980
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 4982
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 4986
    :cond_c
    :goto_2
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3100(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    .line 4987
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 6008
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5902
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5903
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5904
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5905
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5907
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setCat(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5377
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5379
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureCatIsMutable()V

    .line 5380
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public setCattax(Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5511
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5514
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    .line 5515
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5482
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    .line 5483
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5262
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5265
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 5266
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public setDomainBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5297
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3500(Lcom/explorestack/protobuf/ByteString;)V

    .line 5299
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 5300
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5591
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5592
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5593
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5595
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5570
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5572
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5574
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5575
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5577
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5772
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5773
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5774
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5777
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5751
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5753
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5755
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5756
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5757
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5759
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4896
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5070
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5073
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 5074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5105
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3300(Lcom/explorestack/protobuf/ByteString;)V

    .line 5107
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 5108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5169
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 5170
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5201
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3400(Lcom/explorestack/protobuf/ByteString;)V

    .line 5203
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 5204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4912
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4776
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 6002
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method
