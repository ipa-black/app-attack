.class public final Lcom/explorestack/protobuf/openrtb/Response$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Response.java"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Response$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bidid_:Ljava/lang/Object;

.field private bitField0_:I

.field private cdata_:Ljava/lang/Object;

.field private cur_:Ljava/lang/Object;

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

.field private nbr_:I

.field private seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private seatbid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 8278
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 8532
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8638
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8734
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    .line 8808
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8909
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 9011
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 9478
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 8279
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 8284
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 8532
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8638
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 8734
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    .line 8808
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8909
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 9011
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 9478
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 8285
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0

    .line 8260
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0

    .line 8260
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 9480
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 9481
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 9482
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSeatbidIsMutable()V
    .locals 2

    .line 9013
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 9014
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 9015
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8266
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 9466
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9467
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9469
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 9470
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9471
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9472
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9474
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 9777
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9778
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9782
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 9783
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 9784
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 9786
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9310
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9311
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 9315
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9316
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 9317
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 9319
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 8289
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->access$6400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8290
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8291
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Response$Builder;"
        }
    .end annotation

    .line 9656
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9657
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9658
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 9660
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9662
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllSeatbid(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Response$Builder;"
        }
    .end annotation

    .line 9189
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9190
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 9191
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 9193
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9195
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9638
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9639
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9640
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9643
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9599
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9601
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9603
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9604
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9605
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9607
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9620
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9621
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9622
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9623
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9625
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9578
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9580
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9582
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9583
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9584
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9586
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 9748
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9749
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 9748
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 9760
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9761
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 9760
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8414
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method

.method public addSeatbid(ILcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9171
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9172
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 9173
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9174
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9176
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSeatbid(ILcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9132
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9134
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9136
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 9137
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9140
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSeatbid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9153
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9154
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 9155
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9156
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9158
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSeatbid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9111
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9115
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 9116
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9117
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9119
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSeatbidBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 2

    .line 9281
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9282
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v1

    .line 9281
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object v0
.end method

.method public addSeatbidBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 2

    .line 9293
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9294
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v1

    .line 9293
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/openrtb/Response;
    .locals 2

    .line 8341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    .line 8342
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8343
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/openrtb/Response;
    .locals 2

    .line 8350
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Response;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Response$1;)V

    .line 8352
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6602(Lcom/explorestack/protobuf/openrtb/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8353
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6702(Lcom/explorestack/protobuf/openrtb/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8354
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6802(Lcom/explorestack/protobuf/openrtb/Response;I)I

    .line 8355
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6902(Lcom/explorestack/protobuf/openrtb/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8356
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7002(Lcom/explorestack/protobuf/openrtb/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8357
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 8358
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8359
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 8360
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    .line 8362
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7102(Lcom/explorestack/protobuf/openrtb/Response;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 8364
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7102(Lcom/explorestack/protobuf/openrtb/Response;Ljava/util/List;)Ljava/util/List;

    .line 8366
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 8367
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7202(Lcom/explorestack/protobuf/openrtb/Response;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 8369
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7202(Lcom/explorestack/protobuf/openrtb/Response;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 8371
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 8372
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 8373
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 8374
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    .line 8376
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7302(Lcom/explorestack/protobuf/openrtb/Response;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 8378
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7302(Lcom/explorestack/protobuf/openrtb/Response;Ljava/util/List;)Ljava/util/List;

    .line 8380
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 2

    .line 8296
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 8297
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8299
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8301
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    .line 8303
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8305
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8307
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8308
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 8309
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    goto :goto_0

    .line 8311
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 8313
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 8314
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 8316
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 8317
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8319
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 8320
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 8321
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    goto :goto_2

    .line 8323
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_2
    return-object p0
.end method

.method public clearBidid()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8709
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response;->getBidid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    .line 8710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCdata()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8984
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response;->getCdata()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCur()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8883
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response;->getCur()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8884
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 2

    .line 9419
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9420
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9421
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9423
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9424
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9674
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9675
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 9676
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    .line 9677
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9679
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8397
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method

.method public clearId()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8611
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNbr()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 8803
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    .line 8804
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8402
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method

.method public clearSeatbid()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9207
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9208
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 9209
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    .line 9210
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9212
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8386
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBidid()Ljava/lang/String;
    .locals 2

    .line 8648
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    .line 8649
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8650
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8652
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8653
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    return-object v0

    .line 8656
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBididBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8669
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    .line 8670
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8671
    check-cast v0, Ljava/lang/String;

    .line 8672
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8674
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    return-object v0

    .line 8677
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCdata()Ljava/lang/String;
    .locals 2

    .line 8920
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8921
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8922
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8924
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8925
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    return-object v0

    .line 8928
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCdataBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8942
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8943
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8944
    check-cast v0, Ljava/lang/String;

    .line 8945
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8947
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    return-object v0

    .line 8950
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCur()Ljava/lang/String;
    .locals 2

    .line 8819
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8820
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8821
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8823
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8824
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    return-object v0

    .line 8827
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8841
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8842
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8843
    check-cast v0, Ljava/lang/String;

    .line 8844
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8846
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    return-object v0

    .line 8849
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1

    .line 8336
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8331
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 9345
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9346
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 9348
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 9438
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    .line 9439
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 9449
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9450
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 9452
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 9453
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 9525
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9526
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 9528
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 9709
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 9772
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 9511
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9512
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 9514
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

    .line 9497
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9498
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9500
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 9720
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9721
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 9722
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

    .line 9734
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9735
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9737
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 8544
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8545
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8546
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8548
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8549
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 8552
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8567
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8568
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8569
    check-cast v0, Ljava/lang/String;

    .line 8570
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8572
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 8575
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getNbr()Lcom/explorestack/protobuf/openrtb/NoBidReason;
    .locals 1

    .line 8772
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/NoBidReason;->valueOf(I)Lcom/explorestack/protobuf/openrtb/NoBidReason;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8773
    sget-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->UNRECOGNIZED:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    :cond_0
    return-object v0
.end method

.method public getNbrValue()I
    .locals 1

    .line 8744
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    return v0
.end method

.method public getSeatbid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1

    .line 9058
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9059
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p1

    .line 9061
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p1
.end method

.method public getSeatbidBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 9242
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object p1
.end method

.method public getSeatbidBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;",
            ">;"
        }
    .end annotation

    .line 9305
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSeatbidCount()I
    .locals 1

    .line 9044
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9045
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 9047
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getSeatbidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            ">;"
        }
    .end annotation

    .line 9030
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9031
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9033
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSeatbidOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;
    .locals 1

    .line 9253
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9254
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;

    return-object p1

    .line 9255
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;

    return-object p1
.end method

.method public getSeatbidOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9267
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9268
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9270
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 9334
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 8272
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Response;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    .line 8273
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9397
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9398
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 9400
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 9402
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9404
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_1

    .line 9406
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

    .line 8260
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

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

    .line 8260
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

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

    .line 8260
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

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

    .line 8260
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8519
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->access$7700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8525
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8521
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8522
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

    .line 8525
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    .line 8527
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8418
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Response;

    if-eqz v0, :cond_0

    .line 8419
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1

    .line 8421
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 3

    .line 8427
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 8428
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8429
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6600(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8430
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    .line 8432
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getBidid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8433
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6700(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    .line 8434
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    .line 8436
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6800(Lcom/explorestack/protobuf/openrtb/Response;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 8437
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getNbrValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setNbrValue(I)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    .line 8439
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getCur()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8440
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6900(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8441
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    .line 8443
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getCdata()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8444
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7000(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8445
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    .line 8447
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 8448
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7100(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 8449
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8450
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7100(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 8451
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    goto :goto_0

    .line 8453
    :cond_6
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 8454
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7100(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8456
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_2

    .line 8459
    :cond_7
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7100(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 8460
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8461
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 8462
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8463
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7100(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 8464
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    .line 8466
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->access$7400()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8467
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 8469
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7100(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8473
    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8474
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    .line 8476
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8477
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7300(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 8478
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 8479
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7300(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 8480
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    goto :goto_3

    .line 8482
    :cond_c
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 8483
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7300(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8485
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_4

    .line 8488
    :cond_d
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7300(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 8489
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8490
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 8491
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8492
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7300(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 8493
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    .line 8495
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->access$7500()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8496
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_e
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 8498
    :cond_f
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7300(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8502
    :cond_10
    :goto_4
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7600(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    .line 8503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 9797
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9691
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9692
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9693
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9694
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9696
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeSeatbid(I)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9224
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9225
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 9226
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9229
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setBidid(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8692
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8695
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    .line 8696
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public setBididBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8725
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8727
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7900(Lcom/explorestack/protobuf/ByteString;)V

    .line 8729
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    .line 8730
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public setCdata(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8966
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8969
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8970
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public setCdataBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 9001
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9003
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$8100(Lcom/explorestack/protobuf/ByteString;)V

    .line 9005
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 9006
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public setCur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8865
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8868
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8869
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public setCurBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8900
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8902
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$8000(Lcom/explorestack/protobuf/ByteString;)V

    .line 8904
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8905
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9380
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9381
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9384
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9359
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9361
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9363
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9364
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9366
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9561
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9562
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9563
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9566
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9540
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9542
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9544
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9545
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9546
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9548
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8392
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8592
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8595
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8596
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8629
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8631
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7800(Lcom/explorestack/protobuf/ByteString;)V

    .line 8633
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8634
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public setNbr(Lcom/explorestack/protobuf/openrtb/NoBidReason;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8786
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8789
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/NoBidReason;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    .line 8790
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public setNbrValue(I)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8757
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    .line 8758
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8408
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method

.method public setSeatbid(ILcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9094
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9095
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 9096
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9097
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9099
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSeatbid(ILcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9073
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9075
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9077
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 9078
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9079
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9081
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8260
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 9791
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method
