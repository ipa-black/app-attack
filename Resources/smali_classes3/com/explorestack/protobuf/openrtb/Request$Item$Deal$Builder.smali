.class public final Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Request.java"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;"
    }
.end annotation


# instance fields
.field private at_:I

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

.field private flr_:D

.field private flrcur_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private wadomain_:Lcom/explorestack/protobuf/LazyStringList;

.field private wseat_:Lcom/explorestack/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5760
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 5998
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 6142
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 6286
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6432
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6734
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 5761
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 5766
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 5998
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 6142
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 6286
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6432
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6734
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 5767
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 5742
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 5742
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 6736
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 6737
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 6738
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureWadomainIsMutable()V
    .locals 2

    .line 6434
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 6435
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6436
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureWseatIsMutable()V
    .locals 2

    .line 6288
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 6289
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6290
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5748
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 6722
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6723
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6725
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 6726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6727
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6728
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6730
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 7033
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 7034
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7038
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 7039
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 7040
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 7042
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 5771
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$3800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5772
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;"
        }
    .end annotation

    .line 6912
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6913
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6914
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 6916
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6918
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllWadomain(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;"
        }
    .end annotation

    .line 6537
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWadomainIsMutable()V

    .line 6538
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 6540
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllWseat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;"
        }
    .end annotation

    .line 6391
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWseatIsMutable()V

    .line 6392
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 6394
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6894
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6895
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6896
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6897
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6899
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6855
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6857
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6859
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6860
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6861
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6863
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6876
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6877
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6878
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6881
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6834
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6836
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6838
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6839
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6840
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6842
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 7004
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 7005
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 7004
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 7016
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 7017
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 7016
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5891
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public addWadomain(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6519
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6521
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWadomainIsMutable()V

    .line 6522
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 6523
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public addWadomainBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6569
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6571
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$5400(Lcom/explorestack/protobuf/ByteString;)V

    .line 6572
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWadomainIsMutable()V

    .line 6573
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 6574
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public addWseat(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6373
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6375
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWseatIsMutable()V

    .line 6376
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 6377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public addWseatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6425
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$5300(Lcom/explorestack/protobuf/ByteString;)V

    .line 6426
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWseatIsMutable()V

    .line 6427
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 6428
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 2

    .line 5818
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    .line 5819
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5820
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 3

    .line 5827
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 5829
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4002(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5830
    iget-wide v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flr_:D

    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4102(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;D)D

    .line 5831
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4202(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5832
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->at_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4302(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;I)I

    .line 5833
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5834
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5835
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 5837
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4402(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 5838
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5839
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5840
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 5842
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4502(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 5843
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 5844
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4602(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 5846
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4602(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 5848
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 5849
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 5850
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 5851
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 5853
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4702(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 5855
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4702(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Ljava/util/List;)Ljava/util/List;

    .line 5857
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 3

    .line 5777
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 5778
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 5780
    iput-wide v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flr_:D

    .line 5782
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5784
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->at_:I

    .line 5786
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5787
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 5788
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5789
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 5790
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5791
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 5793
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5794
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5796
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5797
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 5798
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    goto :goto_1

    .line 5800
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public clearAt()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 6281
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->at_:I

    .line 6282
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 2

    .line 6675
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6676
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6677
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6679
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6680
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6930
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 6932
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 6933
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6935
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5874
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public clearFlr()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 6137
    iput-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flr_:D

    .line 6138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFlrcur()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6217
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlrcur()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 6218
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public clearId()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6073
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 6074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5879
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public clearWadomain()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6552
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6553
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 6554
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWseat()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6406
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6407
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 6408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 5863
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAt()I
    .locals 1

    .line 6254
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->at_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1

    .line 5813
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5808
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 6601
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 6602
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 6604
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 6694
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    .line 6695
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 6705
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 6706
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 6708
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 6709
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 6781
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6782
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 6784
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 6965
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 7028
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 6767
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6768
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 6770
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

    .line 6753
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6754
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6756
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 6976
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6977
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 6978
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

    .line 6990
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 6991
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6993
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFlr()D
    .locals 2

    .line 6110
    iget-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flr_:D

    return-wide v0
.end method

.method public getFlrcur()Ljava/lang/String;
    .locals 2

    .line 6153
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 6154
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6155
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6157
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6158
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    return-object v0

    .line 6161
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 6175
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 6176
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6177
    check-cast v0, Ljava/lang/String;

    .line 6178
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6180
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    return-object v0

    .line 6183
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 6009
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 6010
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6011
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6013
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6014
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 6017
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 6031
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 6032
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6033
    check-cast v0, Ljava/lang/String;

    .line 6034
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6036
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 6039
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getWadomain(I)Ljava/lang/String;
    .locals 1

    .line 6472
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getWadomainBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 6485
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getWadomainCount()I
    .locals 1

    .line 6460
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getWadomainList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 6449
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWadomainList()Ljava/util/List;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getWadomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getWseat(I)Ljava/lang/String;
    .locals 1

    .line 6326
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getWseatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 6339
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getWseatCount()I
    .locals 1

    .line 6314
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getWseatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 6303
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWseatList()Ljava/util/List;
    .locals 1

    .line 5742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getWseatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 6590
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 5754
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 5755
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6653
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 6654
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 6656
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 6658
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6660
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_1

    .line 6662
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

    .line 5742
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

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

    .line 5742
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

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

    .line 5742
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

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

    .line 5742
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5985
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$5000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5991
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5987
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5988
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

    .line 5991
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 5993
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 5895
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    if-eqz v0, :cond_0

    .line 5896
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1

    .line 5898
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 4

    .line 5904
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5905
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5906
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4000(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 5907
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    .line 5909
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlr()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    .line 5910
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlr()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setFlr(D)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 5912
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlrcur()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5913
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4200(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 5914
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    .line 5916
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getAt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 5917
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getAt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setAt(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 5919
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4400(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5920
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5921
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4400(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5922
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    goto :goto_0

    .line 5924
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWseatIsMutable()V

    .line 5925
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4400(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 5927
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    .line 5929
    :cond_6
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4500(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5930
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5931
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4500(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5932
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    goto :goto_1

    .line 5934
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWadomainIsMutable()V

    .line 5935
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4500(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 5937
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    .line 5939
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5940
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 5942
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 5943
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4700(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 5944
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5945
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4700(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 5946
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    goto :goto_2

    .line 5948
    :cond_a
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 5949
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4700(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5951
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_3

    .line 5954
    :cond_b
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4700(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 5955
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5956
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 5957
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 5958
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4700(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 5959
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 5961
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4800()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5962
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_c
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_3

    .line 5964
    :cond_d
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4700(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 5968
    :cond_e
    :goto_3
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4900(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 5969
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 7053
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6947
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6948
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6949
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6950
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6952
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAt(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 6267
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->at_:I

    .line 6268
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6636
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6637
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6638
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6640
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6615
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6617
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6619
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6620
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6622
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6817
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6818
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6819
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6820
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6822
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6796
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6798
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6800
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6801
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6802
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6804
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5869
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public setFlr(D)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 6123
    iput-wide p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flr_:D

    .line 6124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public setFlrcur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 6199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6202
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 6203
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public setFlrcurBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 6234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6236
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$5200(Lcom/explorestack/protobuf/ByteString;)V

    .line 6238
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 6239
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 6055
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6058
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 6059
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 6090
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6092
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$5100(Lcom/explorestack/protobuf/ByteString;)V

    .line 6094
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 6095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5885
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5742
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 7047
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public setWadomain(ILjava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6500
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6502
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWadomainIsMutable()V

    .line 6503
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6504
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public setWseat(ILjava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6354
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6356
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWseatIsMutable()V

    .line 6357
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6358
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method
