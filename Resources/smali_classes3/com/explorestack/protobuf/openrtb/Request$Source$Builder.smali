.class public final Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Request.java"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request$Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cert_:Ljava/lang/Object;

.field private digest_:Ljava/lang/Object;

.field private ds_:Ljava/lang/Object;

.field private dsgver_:I

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

.field private pchain_:Ljava/lang/Object;

.field private tid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1222
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1441
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1557
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1724
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1825
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1931
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 2198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 1223
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1228
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1441
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1557
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1724
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1825
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1931
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 2198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 1229
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 1204
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 1204
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 2200
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2201
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 2202
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1210
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Source_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 2186
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2187
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2189
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 2190
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2191
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2192
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2194
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 2497
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2498
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2502
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2504
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 2506
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1233
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;"
        }
    .end annotation

    .line 2376
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2377
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2378
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2380
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2382
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2358
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2359
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2360
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2361
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2363
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2319
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2321
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2323
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2324
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2325
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2327
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2340
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2341
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2342
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2343
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2345
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2298
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2300
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2302
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2303
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2304
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2306
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 2468
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2469
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 2468
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 2480
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2481
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 2480
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1345
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 2

    .line 1280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    .line 1281
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1282
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 2

    .line 1289
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 1291
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$402(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$502(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->dsgver_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$602(Lcom/explorestack/protobuf/openrtb/Request$Source;I)I

    .line 1294
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$702(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$802(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$902(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 1298
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1002(Lcom/explorestack/protobuf/openrtb/Request$Source;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 1300
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1002(Lcom/explorestack/protobuf/openrtb/Request$Source;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 1302
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2

    .line 1303
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1304
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 1305
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    .line 1307
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1102(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 1309
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1102(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/util/List;)Ljava/util/List;

    .line 1311
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 2

    .line 1239
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1240
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1242
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1244
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->dsgver_:I

    .line 1246
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1248
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1250
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 1252
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1253
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 1255
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 1256
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1258
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 1260
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    goto :goto_1

    .line 1262
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public clearCert()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1904
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCert()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1905
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDigest()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1799
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigest()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1800
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDs()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1648
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDsgver()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1719
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->dsgver_:I

    .line 1720
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 2

    .line 2139
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2140
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2141
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2143
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2144
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2394
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 2396
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    .line 2397
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2399
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1328
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1333
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method

.method public clearPchain()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2014
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 2015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTid()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1528
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1529
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1317
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCert()Ljava/lang/String;
    .locals 2

    .line 1837
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1838
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1839
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1841
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1842
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    return-object v0

    .line 1845
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCertBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1860
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1861
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1862
    check-cast v0, Ljava/lang/String;

    .line 1863
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1865
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    return-object v0

    .line 1868
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1

    .line 1275
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1270
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Source_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDigest()Ljava/lang/String;
    .locals 2

    .line 1735
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1736
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1737
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1739
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1740
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    return-object v0

    .line 1743
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDigestBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1757
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1758
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1759
    check-cast v0, Ljava/lang/String;

    .line 1760
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1762
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    return-object v0

    .line 1765
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDs()Ljava/lang/String;
    .locals 2

    .line 1572
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1573
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1574
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1576
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1577
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    return-object v0

    .line 1580
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1598
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1599
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1600
    check-cast v0, Ljava/lang/String;

    .line 1601
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1603
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    return-object v0

    .line 1606
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDsgver()I
    .locals 1

    .line 1690
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->dsgver_:I

    return v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 2065
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2066
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 2068
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 2158
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    .line 2159
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 2169
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2170
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 2172
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 2173
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 2245
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2246
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 2248
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 2429
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 2492
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 2231
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2232
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2234
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

    .line 2217
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2218
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2220
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 2440
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2441
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 2442
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

    .line 2454
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2455
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2457
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPchain()Ljava/lang/String;
    .locals 2

    .line 1944
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 1945
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1946
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1948
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1949
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    return-object v0

    .line 1952
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPchainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1968
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 1969
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1970
    check-cast v0, Ljava/lang/String;

    .line 1971
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1973
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    return-object v0

    .line 1976
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 2

    .line 1455
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1456
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1457
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1459
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1460
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    return-object v0

    .line 1463
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1480
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1481
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1482
    check-cast v0, Ljava/lang/String;

    .line 1483
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1485
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    return-object v0

    .line 1488
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 2054
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 1216
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Source_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    .line 1217
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2117
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2118
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 2120
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 2122
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2124
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_1

    .line 2126
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

    .line 1204
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

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

    .line 1204
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

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

    .line 1204
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

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

    .line 1204
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1428
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1434
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1430
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Request$Source;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1431
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

    .line 1434
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    .line 1436
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1349
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-eqz v0, :cond_0

    .line 1350
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1

    .line 1352
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 2

    .line 1358
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1359
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1360
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$400(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1361
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    .line 1363
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1364
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$500(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1365
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    .line 1367
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsgver()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1368
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsgver()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setDsgver(I)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    .line 1370
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1371
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$700(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1372
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    .line 1374
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCert()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1375
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$800(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1376
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    .line 1378
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1379
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$900(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 1380
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    .line 1382
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1383
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    .line 1385
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    .line 1386
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1387
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1388
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 1389
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    goto :goto_0

    .line 1391
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 1392
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1394
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_1

    .line 1397
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1398
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1399
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1400
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1401
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 1402
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    .line 1404
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1405
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 1407
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1411
    :cond_c
    :goto_1
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1300(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    .line 1412
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 2517
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2411
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2412
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2413
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2414
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2416
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setCert(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1885
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1888
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1889
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public setCertBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1922
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1924
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1800(Lcom/explorestack/protobuf/ByteString;)V

    .line 1926
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1927
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public setDigest(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1781
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1784
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1785
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public setDigestBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1816
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1818
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1700(Lcom/explorestack/protobuf/ByteString;)V

    .line 1820
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1821
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public setDs(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1629
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1630
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public setDsBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1669
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1671
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1600(Lcom/explorestack/protobuf/ByteString;)V

    .line 1673
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1674
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public setDsgver(I)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1704
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->dsgver_:I

    .line 1705
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2100
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2101
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2102
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2104
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2079
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2081
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2083
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2084
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2086
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2281
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2282
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2283
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2284
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2286
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2260
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2262
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2264
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2265
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2266
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2268
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1323
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method

.method public setPchain(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1994
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1997
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 1998
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public setPchainBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 2033
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2035
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1900(Lcom/explorestack/protobuf/ByteString;)V

    .line 2037
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 2038
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1339
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method

.method public setTid(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1507
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1510
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1511
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public setTidBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1550
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1500(Lcom/explorestack/protobuf/ByteString;)V

    .line 1552
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1553
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 2511
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method
