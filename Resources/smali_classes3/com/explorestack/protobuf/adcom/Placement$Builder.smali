.class public final Lcom/explorestack/protobuf/adcom/Placement$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Placement.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Placement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Placement$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;"
    }
.end annotation


# instance fields
.field private admx_:Z

.field private badv_:Lcom/explorestack/protobuf/LazyStringList;

.field private bapp_:Lcom/explorestack/protobuf/LazyStringList;

.field private battr_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bcat_:Lcom/explorestack/protobuf/LazyStringList;

.field private bitField0_:I

.field private cattax_:I

.field private curlx_:Z

.field private displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

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

.field private reward_:Z

.field private sdk_:Ljava/lang/Object;

.field private sdkver_:Ljava/lang/Object;

.field private secure_:Z

.field private ssai_:I

.field private tagid_:Ljava/lang/Object;

.field private videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

.field private wlang_:Lcom/explorestack/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 27622
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 27970
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 28112
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 28208
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 28347
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 28493
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    .line 28567
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28713
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28860
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 29047
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 29806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 27623
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 27628
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 27970
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 28112
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 28208
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 28347
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 p1, 0x0

    .line 28493
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    .line 28567
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28713
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28860
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 29047
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 29806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 27629
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 27604
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 27604
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;-><init>()V

    return-void
.end method

.method private ensureBadvIsMutable()V
    .locals 2

    .line 28569
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 28570
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28571
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBappIsMutable()V
    .locals 2

    .line 28715
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 28716
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28717
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBattrIsMutable()V
    .locals 2

    .line 28862
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 28863
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 28864
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBcatIsMutable()V
    .locals 2

    .line 28349
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 28350
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28351
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 29808
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 29809
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 29810
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureWlangIsMutable()V
    .locals 2

    .line 29049
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 29050
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 29051
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 27610
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getDisplayFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 29475
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29476
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 29478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v1

    .line 29479
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 29480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 29481
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 29483
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 29794
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29795
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 29797
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 29798
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 29799
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 29800
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 29802
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 30105
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 30106
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 30110
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 30111
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 30112
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 30114
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getVideoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 29639
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29640
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 29642
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v1

    .line 29643
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 29644
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 29645
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 29647
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 27633
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->access$19900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27634
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllBadv(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 28672
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBadvIsMutable()V

    .line 28673
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 28675
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllBapp(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 28818
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBappIsMutable()V

    .line 28819
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 28821
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllBattr(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 28951
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 28952
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 28953
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28955
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllBattrValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 29039
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 29040
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 29041
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29043
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllBcat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 28452
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBcatIsMutable()V

    .line 28453
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 28455
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 29984
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29985
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 29986
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 29988
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29990
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllWlang(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;"
        }
    .end annotation

    .line 29152
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureWlangIsMutable()V

    .line 29153
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 29155
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addBadv(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28654
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28656
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBadvIsMutable()V

    .line 28657
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 28658
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addBadvBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28704
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28706
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22600(Lcom/explorestack/protobuf/ByteString;)V

    .line 28707
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBadvIsMutable()V

    .line 28708
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 28709
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addBapp(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28800
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28802
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBappIsMutable()V

    .line 28803
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 28804
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addBappBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28850
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28852
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22700(Lcom/explorestack/protobuf/ByteString;)V

    .line 28853
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBappIsMutable()V

    .line 28854
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 28855
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addBattr(Lcom/explorestack/protobuf/adcom/CreativeAttribute;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28933
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28935
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 28936
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addBattrValue(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29023
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 29024
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29025
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addBcat(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28434
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28436
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBcatIsMutable()V

    .line 28437
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 28438
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addBcatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28484
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28486
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22500(Lcom/explorestack/protobuf/ByteString;)V

    .line 28487
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBcatIsMutable()V

    .line 28488
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 28489
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29966
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29967
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 29968
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29969
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29971
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29927
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29929
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29931
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 29932
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29933
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29935
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29948
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29949
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 29950
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29951
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29953
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29906
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29908
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29910
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 29911
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29912
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29914
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 30076
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 30077
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 30076
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 30088
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 30089
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 30088
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 27811
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public addWlang(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29136
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureWlangIsMutable()V

    .line 29137
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 29138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public addWlangBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29186
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22900(Lcom/explorestack/protobuf/ByteString;)V

    .line 29187
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureWlangIsMutable()V

    .line 29188
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 29189
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 2

    .line 27708
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    .line 27709
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 27710
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 2

    .line 27717
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Placement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Placement$1;)V

    .line 27719
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20102(Lcom/explorestack/protobuf/adcom/Placement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27720
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ssai_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20202(Lcom/explorestack/protobuf/adcom/Placement;I)I

    .line 27721
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20302(Lcom/explorestack/protobuf/adcom/Placement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27722
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20402(Lcom/explorestack/protobuf/adcom/Placement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27723
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->reward_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20502(Lcom/explorestack/protobuf/adcom/Placement;Z)Z

    .line 27724
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 27725
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27726
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27728
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20602(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 27729
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20702(Lcom/explorestack/protobuf/adcom/Placement;I)I

    .line 27730
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 27731
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27732
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27734
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20802(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 27735
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 27736
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27737
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27739
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20902(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 27740
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 27741
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 27742
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27744
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21002(Lcom/explorestack/protobuf/adcom/Placement;Ljava/util/List;)Ljava/util/List;

    .line 27745
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 27746
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27747
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27749
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21102(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 27750
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->secure_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21202(Lcom/explorestack/protobuf/adcom/Placement;Z)Z

    .line 27751
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->admx_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21302(Lcom/explorestack/protobuf/adcom/Placement;Z)Z

    .line 27752
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->curlx_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21402(Lcom/explorestack/protobuf/adcom/Placement;Z)Z

    .line 27753
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 27754
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21502(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    goto :goto_0

    .line 27756
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21502(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 27758
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6

    .line 27759
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21602(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    goto :goto_1

    .line 27761
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21602(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 27763
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_7

    .line 27764
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21702(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_2

    .line 27766
    :cond_7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21702(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 27768
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_9

    .line 27769
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    .line 27770
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 27771
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27773
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21802(Lcom/explorestack/protobuf/adcom/Placement;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 27775
    :cond_9
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21802(Lcom/explorestack/protobuf/adcom/Placement;Ljava/util/List;)Ljava/util/List;

    .line 27777
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clear()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clear()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clear()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clear()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 27639
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 27640
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 27642
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ssai_:I

    .line 27644
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 27646
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 27648
    iput-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->reward_:Z

    .line 27650
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27651
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27652
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    .line 27654
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27655
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27656
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27657
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27658
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 27659
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27660
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27661
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27662
    iput-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->secure_:Z

    .line 27664
    iput-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->admx_:Z

    .line 27666
    iput-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->curlx_:Z

    .line 27668
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 27669
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    goto :goto_0

    .line 27671
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 27672
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 27674
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27675
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    goto :goto_1

    .line 27677
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 27678
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 27680
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 27681
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_2

    .line 27683
    :cond_2
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 27684
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 27686
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3

    .line 27687
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 27688
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_3

    .line 27690
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_3
    return-object p0
.end method

.method public clearAdmx()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 29274
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->admx_:Z

    .line 29275
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBadv()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28687
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28688
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 28689
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBapp()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28833
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28834
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 28835
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBattr()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28967
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 28968
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 28969
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBcat()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28467
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28468
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 28469
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCattax()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 28562
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    .line 28563
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCurlx()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 29317
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->curlx_:Z

    .line 29318
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDisplay()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 29425
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 29426
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 29427
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29429
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 29430
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 29747
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 29748
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 29749
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29751
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 29752
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 30002
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 30003
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 30004
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 30005
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 30007
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 27794
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 27799
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public clearReward()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 28342
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->reward_:Z

    .line 28343
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSdk()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28183
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 28184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSdkver()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28279
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 28280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSecure()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 29231
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->secure_:Z

    .line 29232
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSsai()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 28107
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ssai_:I

    .line 28108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTagid()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28041
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->getTagid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 28042
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVideo()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 29589
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 29590
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 29591
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29593
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 29594
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearWlang()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29167
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 29168
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 29169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27783
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->clone()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdmx()Z
    .locals 1

    .line 29247
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->admx_:Z

    return v0
.end method

.method public getBadv(I)Ljava/lang/String;
    .locals 1

    .line 28607
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBadvBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 28620
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getBadvCount()I
    .locals 1

    .line 28595
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 28584
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBadvList()Ljava/util/List;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getBapp(I)Ljava/lang/String;
    .locals 1

    .line 28753
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBappBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 28766
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getBappCount()I
    .locals 1

    .line 28741
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBappList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 28730
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBappList()Ljava/util/List;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getBappList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getBattr(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .locals 2

    .line 28900
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->access$22800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p1
.end method

.method public getBattrCount()I
    .locals 1

    .line 28888
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBattrList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
            ">;"
        }
    .end annotation

    .line 28876
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 28877
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->access$22800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getBattrValue(I)I
    .locals 1

    .line 28994
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getBattrValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 28982
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBcat(I)Ljava/lang/String;
    .locals 1

    .line 28387
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBcatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 28400
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getBcatCount()I
    .locals 1

    .line 28375
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 28364
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBcatList()Ljava/util/List;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 28531
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28532
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public getCattaxValue()I
    .locals 1

    .line 28503
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    return v0
.end method

.method public getCurlx()Z
    .locals 1

    .line 29290
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->curlx_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1

    .line 27703
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 27698
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1

    .line 29347
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 29348
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    :cond_0
    return-object v0

    .line 29350
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object v0
.end method

.method public getDisplayBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;
    .locals 1

    .line 29445
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 29446
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getDisplayFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    return-object v0
.end method

.method public getDisplayOrBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;
    .locals 1

    .line 29457
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 29458
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;

    return-object v0

    .line 29460
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-nez v0, :cond_1

    .line 29461
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 29673
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 29674
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 29676
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 29766
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 29767
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 29777
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 29778
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 29780
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 29781
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 29853
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29854
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 29856
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 30037
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 30100
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 29839
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29840
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 29842
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

    .line 29825
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29826
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29828
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 30048
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 30049
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 30050
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

    .line 30062
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 30063
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 30065
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReward()Z
    .locals 1

    .line 28315
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->reward_:Z

    return v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 2

    .line 28122
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 28123
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 28124
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 28126
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 28127
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 28130
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 28143
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 28144
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28145
    check-cast v0, Ljava/lang/String;

    .line 28146
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 28148
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 28151
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdkver()Ljava/lang/String;
    .locals 2

    .line 28218
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 28219
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 28220
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 28222
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 28223
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 28226
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 28239
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 28240
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28241
    check-cast v0, Ljava/lang/String;

    .line 28242
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 28244
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 28247
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    .line 29204
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->secure_:Z

    return v0
.end method

.method public getSsai()I
    .locals 1

    .line 28078
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ssai_:I

    return v0
.end method

.method public getTagid()Ljava/lang/String;
    .locals 2

    .line 27980
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 27981
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 27982
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 27984
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 27985
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    return-object v0

    .line 27988
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTagidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 28001
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 28002
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28003
    check-cast v0, Ljava/lang/String;

    .line 28004
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 28006
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    return-object v0

    .line 28009
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1

    .line 29511
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 29512
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    :cond_0
    return-object v0

    .line 29514
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object v0
.end method

.method public getVideoBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 29609
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 29610
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getVideoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    return-object v0
.end method

.method public getVideoOrBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;
    .locals 1

    .line 29621
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 29622
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;

    return-object v0

    .line 29624
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-nez v0, :cond_1

    .line 29625
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getWlang(I)Ljava/lang/String;
    .locals 1

    .line 29087
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getWlangBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 29100
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getWlangCount()I
    .locals 1

    .line 29075
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getWlangList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 29064
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWlangList()Ljava/util/List;
    .locals 1

    .line 27604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getWlangList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public hasDisplay()Z
    .locals 1

    .line 29335
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

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

    .line 29662
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public hasVideo()Z
    .locals 1

    .line 29499
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

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

    .line 27616
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Placement;

    const-class v2, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 27617
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeDisplay(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29402
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 29403
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v0, :cond_0

    .line 29405
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->newBuilder(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    goto :goto_0

    .line 29407
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 29409
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_1

    .line 29411
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29725
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 29726
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 29728
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 29730
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 29732
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_1

    .line 29734
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

    .line 27604
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

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

    .line 27604
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

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

    .line 27604
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

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

    .line 27604
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27957
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->access$22100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 27963
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27959
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Placement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27960
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

    .line 27963
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 27965
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 27815
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v0, :cond_0

    .line 27816
    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1

    .line 27818
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 27824
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 27825
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getTagid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27826
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20100(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 27827
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 27829
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSsai()I

    move-result v0

    if-eqz v0, :cond_2

    .line 27830
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSsai()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSsai(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 27832
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 27833
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20300(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 27834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 27836
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 27837
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20400(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 27838
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 27840
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getReward()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27841
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getReward()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setReward(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 27843
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20600(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 27844
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27845
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20600(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27846
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_0

    .line 27848
    :cond_6
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBcatIsMutable()V

    .line 27849
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20600(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 27851
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 27853
    :cond_7
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20700(Lcom/explorestack/protobuf/adcom/Placement;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 27854
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getCattaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 27856
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20800(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 27857
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27858
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20800(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27859
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_1

    .line 27861
    :cond_9
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBadvIsMutable()V

    .line 27862
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20800(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 27864
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 27866
    :cond_a
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20900(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 27867
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27868
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20900(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27869
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_2

    .line 27871
    :cond_b
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBappIsMutable()V

    .line 27872
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$20900(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 27874
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 27876
    :cond_c
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21000(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 27877
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 27878
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21000(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    .line 27879
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_3

    .line 27881
    :cond_d
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 27882
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21000(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27884
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 27886
    :cond_e
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21100(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 27887
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 27888
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21100(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27889
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_4

    .line 27891
    :cond_f
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureWlangIsMutable()V

    .line 27892
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21100(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 27894
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    .line 27896
    :cond_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSecure()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 27897
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSecure()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSecure(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 27899
    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getAdmx()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 27900
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getAdmx()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setAdmx(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 27902
    :cond_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getCurlx()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 27903
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getCurlx()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setCurlx(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 27905
    :cond_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->hasDisplay()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 27906
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeDisplay(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 27908
    :cond_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 27909
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeVideo(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 27911
    :cond_15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 27912
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 27914
    :cond_16
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_18

    .line 27915
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 27916
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 27917
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 27918
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    goto :goto_5

    .line 27920
    :cond_17
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 27921
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27923
    :goto_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_6

    .line 27926
    :cond_18
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 27927
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 27928
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 27929
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 27930
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    .line 27931
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bitField0_:I

    .line 27933
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->access$21900()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 27934
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_19
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_6

    .line 27936
    :cond_1a
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 27940
    :cond_1b
    :goto_6
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22000(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 27941
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 30125
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public mergeVideo(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29566
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 29567
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-eqz v0, :cond_0

    .line 29569
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->newBuilder(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    goto :goto_0

    .line 29571
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 29573
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_1

    .line 29575
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 30019
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 30020
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 30021
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30022
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 30024
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAdmx(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 29260
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->admx_:Z

    .line 29261
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setBadv(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28635
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28637
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBadvIsMutable()V

    .line 28638
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setBapp(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28781
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28783
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBappIsMutable()V

    .line 28784
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28785
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setBattr(ILcom/explorestack/protobuf/adcom/CreativeAttribute;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28915
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28917
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 28918
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setBattrValue(II)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29008
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBattrIsMutable()V

    .line 29009
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->battr_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29010
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setBcat(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 28415
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28417
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureBcatIsMutable()V

    .line 28418
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28419
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setCattax(Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 28545
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28548
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    .line 28549
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 28516
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->cattax_:I

    .line 28517
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setCurlx(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 29303
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->curlx_:Z

    .line 29304
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setDisplay(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29384
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29385
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 29386
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29388
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDisplay(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29362
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29364
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29366
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 29367
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29369
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29708
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29709
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 29710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29712
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29687
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29689
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29691
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 29692
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29694
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29889
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29890
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 29891
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29892
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29894
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29868
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29870
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29872
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureExtProtoIsMutable()V

    .line 29873
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29874
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29876
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 27789
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 27805
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public setReward(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 28328
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->reward_:Z

    .line 28329
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdk(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 28166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28169
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 28170
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 28199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28201
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22300(Lcom/explorestack/protobuf/ByteString;)V

    .line 28203
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdk_:Ljava/lang/Object;

    .line 28204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkver(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 28262
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28265
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 28266
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkverBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 28295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28297
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22400(Lcom/explorestack/protobuf/ByteString;)V

    .line 28299
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->sdkver_:Ljava/lang/Object;

    .line 28300
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setSecure(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 29217
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->secure_:Z

    .line 29218
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setSsai(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 28092
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ssai_:I

    .line 28093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setTagid(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 28024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28027
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 28028
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public setTagidBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 28057
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28059
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Placement;->access$22200(Lcom/explorestack/protobuf/ByteString;)V

    .line 28061
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->tagid_:Ljava/lang/Object;

    .line 28062
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27604
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 0

    .line 30119
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object p1
.end method

.method public setVideo(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29548
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29549
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 29550
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29552
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setVideo(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29526
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29528
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29530
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 29531
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    goto :goto_0

    .line 29533
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setWlang(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 29115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29117
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->ensureWlangIsMutable()V

    .line 29118
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$Builder;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29119
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->onChanged()V

    return-object p0
.end method
