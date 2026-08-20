.class public final Lcom/explorestack/protobuf/openrtb/Request$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Request.java"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Request$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;"
    }
.end annotation


# instance fields
.field private at_:I

.field private bitField0_:I

.field private cdata_:Ljava/lang/Object;

.field private contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private context_:Lcom/explorestack/protobuf/Any;

.field private cur_:Lcom/explorestack/protobuf/LazyStringList;

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

.field private itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private item_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;"
        }
    .end annotation
.end field

.field private package_:I

.field private seat_:Lcom/explorestack/protobuf/LazyStringList;

.field private sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Source;",
            "Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

.field private test_:Z

.field private tmax_:I

.field private wseat_:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 11133
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 11459
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11699
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11863
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 12058
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 12324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 13082
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 11134
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 11139
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 11459
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11699
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11863
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 12058
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 12324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 13082
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 11140
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 11115
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 11115
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;-><init>()V

    return-void
.end method

.method private ensureCurIsMutable()V
    .locals 2

    .line 11701
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 11702
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11703
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 13084
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 13085
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 13086
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureItemIsMutable()V
    .locals 2

    .line 12326
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 12327
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 12328
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSeatIsMutable()V
    .locals 2

    .line 11865
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 11866
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11867
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 12915
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12916
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 12918
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getContext()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 12919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 12920
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 12921
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 12923
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11121
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 13070
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13071
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 13073
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 13074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 13075
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 13076
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 13078
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 13381
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 13382
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 13386
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 13387
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 13388
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 13390
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12659
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12660
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12664
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 12665
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 12666
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 12668
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSourceFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Source;",
            "Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12312
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12313
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 12315
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v1

    .line 12316
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 12317
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 12318
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 12320
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 11144
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->access$8500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11145
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 11146
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllCur(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;"
        }
    .end annotation

    .line 11818
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureCurIsMutable()V

    .line 11819
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11821
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;"
        }
    .end annotation

    .line 13260
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13261
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 13262
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 13264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 13266
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllItem(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;"
        }
    .end annotation

    .line 12522
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12523
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 12524
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 12526
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12528
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllSeat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;"
        }
    .end annotation

    .line 11968
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureSeatIsMutable()V

    .line 11969
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11971
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public addCur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11798
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11800
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureCurIsMutable()V

    .line 11801
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 11802
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public addCurBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11854
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11856
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10600(Lcom/explorestack/protobuf/ByteString;)V

    .line 11857
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureCurIsMutable()V

    .line 11858
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 11859
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 13242
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13243
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 13244
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13245
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 13247
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 13203
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13205
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13207
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 13208
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13209
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 13211
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 13224
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13225
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 13226
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 13229
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 13182
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13186
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 13187
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13188
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 13190
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 13352
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 13353
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 13352
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 13364
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 13365
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 13364
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public addItem(ILcom/explorestack/protobuf/openrtb/Request$Item$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12502
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12503
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 12504
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12505
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12507
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addItem(ILcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12459
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12461
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12463
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 12464
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12465
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12467
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addItem(Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12482
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12483
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 12484
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12485
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12487
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addItem(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12436
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12438
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12440
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 12441
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12442
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12444
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addItemBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    .line 12626
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 12627
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v1

    .line 12626
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object v0
.end method

.method public addItemBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    .line 12640
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 12641
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v1

    .line 12640
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11311
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public addSeat(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11950
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11952
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureSeatIsMutable()V

    .line 11953
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 11954
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public addSeatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12000
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12002
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10700(Lcom/explorestack/protobuf/ByteString;)V

    .line 12003
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureSeatIsMutable()V

    .line 12004
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 12005
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/openrtb/Request;
    .locals 2

    .line 11216
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    .line 11217
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 11218
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/openrtb/Request;
    .locals 2

    .line 11225
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Request;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 11227
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$8702(Lcom/explorestack/protobuf/openrtb/Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11228
    iget-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->test_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$8802(Lcom/explorestack/protobuf/openrtb/Request;Z)Z

    .line 11229
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->tmax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$8902(Lcom/explorestack/protobuf/openrtb/Request;I)I

    .line 11230
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->at_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9002(Lcom/explorestack/protobuf/openrtb/Request;I)I

    .line 11231
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11232
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11233
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 11235
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9102(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 11236
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11237
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11238
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 11240
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9202(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 11241
    iget-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->wseat_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9302(Lcom/explorestack/protobuf/openrtb/Request;Z)Z

    .line 11242
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9402(Lcom/explorestack/protobuf/openrtb/Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11243
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 11244
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9502(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source;

    goto :goto_0

    .line 11246
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9502(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 11248
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 11249
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 11250
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 11251
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 11253
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9602(Lcom/explorestack/protobuf/openrtb/Request;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 11255
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9602(Lcom/explorestack/protobuf/openrtb/Request;Ljava/util/List;)Ljava/util/List;

    .line 11257
    :goto_1
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->package_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9702(Lcom/explorestack/protobuf/openrtb/Request;I)I

    .line 11258
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 11259
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9802(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    goto :goto_2

    .line 11261
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9802(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    .line 11263
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6

    .line 11264
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9902(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 11266
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9902(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 11268
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_8

    .line 11269
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 11270
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 11271
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 11273
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10002(Lcom/explorestack/protobuf/openrtb/Request;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 11275
    :cond_8
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10002(Lcom/explorestack/protobuf/openrtb/Request;Ljava/util/List;)Ljava/util/List;

    .line 11277
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 3

    .line 11151
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 11152
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 11154
    iput-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->test_:Z

    .line 11156
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->tmax_:I

    .line 11158
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->at_:I

    .line 11160
    sget-object v2, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11161
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 11162
    sget-object v2, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11163
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 11164
    iput-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->wseat_:Z

    .line 11166
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 11168
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 11169
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    goto :goto_0

    .line 11171
    :cond_0
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 11172
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 11174
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 11175
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 11176
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    goto :goto_1

    .line 11178
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 11180
    :goto_1
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->package_:I

    .line 11182
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 11183
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    goto :goto_2

    .line 11185
    :cond_2
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 11186
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 11188
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 11189
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 11191
    :cond_3
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 11192
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 11194
    :goto_3
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 11195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 11196
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    goto :goto_4

    .line 11198
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_4
    return-object p0
.end method

.method public clearAt()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 11694
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->at_:I

    .line 11695
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCdata()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12133
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request;->getCdata()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 12134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContext()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 2

    .line 12850
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12851
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 12852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12854
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 12855
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearCur()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11835
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11836
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 11837
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 2

    .line 13023
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 13024
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 13025
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 13027
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 13028
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 13278
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13279
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 13280
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 13281
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 13283
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11294
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public clearId()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11530
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11531
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearItem()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12542
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12543
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 12544
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 12545
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12547
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11299
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public clearPackage()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 12712
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->package_:I

    .line 12713
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSeat()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11983
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11984
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 11985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSource()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 2

    .line 12262
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12263
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 12264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12266
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 12267
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearTest()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 11599
    iput-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->test_:Z

    .line 11600
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTmax()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 11645
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->tmax_:I

    .line 11646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWseat()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 12053
    iput-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->wseat_:Z

    .line 12054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11283
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAt()I
    .locals 1

    .line 11663
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->at_:I

    return v0
.end method

.method public getCdata()Ljava/lang/String;
    .locals 2

    .line 12069
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 12070
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 12071
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 12073
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 12074
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    return-object v0

    .line 12077
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCdataBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 12091
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 12092
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12093
    check-cast v0, Ljava/lang/String;

    .line 12094
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 12096
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    return-object v0

    .line 12099
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getContext()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 12752
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12753
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0

    .line 12755
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any;

    return-object v0
.end method

.method public getContextBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 12875
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 12876
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public getContextOrBuilder()Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 12892
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 12893
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object v0

    .line 12895
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_1

    .line 12896
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCur(I)Ljava/lang/String;
    .locals 1

    .line 11745
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCurBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 11760
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCurCount()I
    .locals 1

    .line 11731
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCurList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 11718
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurList()Ljava/util/List;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getCurList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1

    .line 11211
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11206
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 12949
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12950
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 12952
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 13042
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 13043
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 13053
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 13054
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 13056
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 13057
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 13129
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13130
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 13132
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 13313
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 13376
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 13115
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13116
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 13118
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

    .line 13101
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13102
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 13104
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 13324
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13325
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 13326
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

    .line 13338
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 13339
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 13341
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 11469
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11470
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 11471
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11473
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11474
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 11477
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 11490
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11491
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11492
    check-cast v0, Ljava/lang/String;

    .line 11493
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 11495
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 11498
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getItem(I)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1

    .line 12377
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12378
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p1

    .line 12380
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p1
.end method

.method public getItemBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 12581
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public getItemBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;",
            ">;"
        }
    .end annotation

    .line 12654
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 12361
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12362
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 12364
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;"
        }
    .end annotation

    .line 12345
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12346
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 12348
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;
    .locals 1

    .line 12594
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12595
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;

    return-object p1

    .line 12596
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;

    return-object p1
.end method

.method public getItemOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12610
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 12611
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 12613
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()I
    .locals 1

    .line 12683
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->package_:I

    return v0
.end method

.method public getSeat(I)Ljava/lang/String;
    .locals 1

    .line 11903
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSeatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 11916
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSeatCount()I
    .locals 1

    .line 11891
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSeatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 11880
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSeatList()Ljava/util/List;
    .locals 1

    .line 11115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getSeatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1

    .line 12184
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12185
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    :cond_0
    return-object v0

    .line 12187
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object v0
.end method

.method public getSourceBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 12282
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 12283
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getSourceFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;
    .locals 1

    .line 12294
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 12295
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;

    return-object v0

    .line 12297
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-nez v0, :cond_1

    .line 12298
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTest()Z
    .locals 1

    .line 11568
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->test_:Z

    return v0
.end method

.method public getTmax()I
    .locals 1

    .line 11616
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->tmax_:I

    return v0
.end method

.method public getWseat()Z
    .locals 1

    .line 12022
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->wseat_:Z

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .line 12735
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

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

.method public hasExt()Z
    .locals 1

    .line 12938
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public hasSource()Z
    .locals 1

    .line 12172
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

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

    .line 11127
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 11128
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeContext(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12822
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12823
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    .line 12825
    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->newBuilder(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    goto :goto_0

    .line 12827
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 12829
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_1

    .line 12831
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 13001
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 13002
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 13004
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 13006
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 13008
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_1

    .line 13010
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

    .line 11115
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

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

    .line 11115
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

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

    .line 11115
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

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

    .line 11115
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11446
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->access$10400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 11452
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11448
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Request;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11449
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

    .line 11452
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 11454
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11315
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Request;

    if-eqz v0, :cond_0

    .line 11316
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1

    .line 11318
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 3

    .line 11324
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11325
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11326
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$8700(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11327
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 11329
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getTest()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11330
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getTest()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setTest(Z)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 11332
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getTmax()I

    move-result v0

    if-eqz v0, :cond_3

    .line 11333
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getTmax()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setTmax(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 11335
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getAt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 11336
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getAt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setAt(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 11338
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9100(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 11339
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11340
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9100(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11341
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    goto :goto_0

    .line 11343
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureCurIsMutable()V

    .line 11344
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9100(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 11346
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 11348
    :cond_6
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9200(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 11349
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11350
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9200(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11351
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    goto :goto_1

    .line 11353
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureSeatIsMutable()V

    .line 11354
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9200(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 11356
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 11358
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getWseat()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11359
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getWseat()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setWseat(Z)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 11361
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getCdata()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 11362
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9400(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 11363
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 11365
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 11366
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeSource(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 11368
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 11369
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9600(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 11370
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 11371
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9600(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 11372
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    goto :goto_2

    .line 11374
    :cond_c
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 11375
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9600(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11377
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_4

    .line 11380
    :cond_d
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9600(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 11381
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11382
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 11383
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 11384
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9600(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 11385
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 11387
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->access$10100()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 11388
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_3

    :cond_e
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 11390
    :cond_f
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9600(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 11394
    :cond_10
    :goto_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getPackage()I

    move-result v0

    if-eqz v0, :cond_11

    .line 11395
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getPackage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setPackage(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 11397
    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 11398
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getContext()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeContext(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 11400
    :cond_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 11401
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 11403
    :cond_13
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_15

    .line 11404
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10000(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 11405
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11406
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10000(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 11407
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    goto :goto_5

    .line 11409
    :cond_14
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 11410
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10000(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11412
    :goto_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_6

    .line 11415
    :cond_15
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10000(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 11416
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 11417
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 11418
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 11419
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10000(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 11420
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 11422
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->access$10200()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 11423
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_16
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_6

    .line 11425
    :cond_17
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10000(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 11429
    :cond_18
    :goto_6
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10300(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 11430
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeSource(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12239
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12240
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-eqz v0, :cond_0

    .line 12242
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->newBuilder(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    goto :goto_0

    .line 12244
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 12246
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_1

    .line 12248
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 13401
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 13295
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13296
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 13297
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13298
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 13300
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeItem(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12561
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12562
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 12563
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12566
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAt(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11678
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->at_:I

    .line 11679
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public setCdata(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 12115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12118
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 12119
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public setCdataBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 12150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12152
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10800(Lcom/explorestack/protobuf/ByteString;)V

    .line 12154
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 12155
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public setContext(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12799
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12800
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 12801
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12803
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setContext(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12772
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12774
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12776
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 12777
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12779
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setCur(ILjava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11777
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11779
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureCurIsMutable()V

    .line 11780
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11781
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12984
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12985
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 12986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12988
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12963
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12965
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12967
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 12968
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12970
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 13165
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13166
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 13167
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13168
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 13170
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 13144
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13146
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13148
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 13149
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13150
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 13152
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11289
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11513
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11516
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11517
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11546
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11548
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10500(Lcom/explorestack/protobuf/ByteString;)V

    .line 11550
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11551
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public setItem(ILcom/explorestack/protobuf/openrtb/Request$Item$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12417
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12418
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 12419
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12420
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12422
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setItem(ILcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12394
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12396
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12398
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 12399
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12400
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12402
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPackage(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 12697
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->package_:I

    .line 12698
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11305
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public setSeat(ILjava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11931
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11933
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureSeatIsMutable()V

    .line 11934
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12221
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12222
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 12223
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12225
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSource(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12199
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12203
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 12204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12206
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTest(Z)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11583
    iput-boolean p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->test_:Z

    .line 11584
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public setTmax(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11630
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->tmax_:I

    .line 11631
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11115
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 13395
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public setWseat(Z)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 12037
    iput-boolean p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->wseat_:Z

    .line 12038
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method
