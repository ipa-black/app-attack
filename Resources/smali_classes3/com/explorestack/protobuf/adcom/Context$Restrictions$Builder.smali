.class public final Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Context.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$RestrictionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$Restrictions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Context$RestrictionsOrBuilder;"
    }
.end annotation


# instance fields
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28590
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 28842
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 28988
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    .line 29062
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 29208
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 29373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 29716
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 28591
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 28596
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 28842
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 p1, 0x0

    .line 28988
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    .line 29062
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 29208
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 29373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 29716
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 28597
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 28572
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 28572
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;-><init>()V

    return-void
.end method

.method private ensureBadvIsMutable()V
    .locals 2

    .line 29064
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 29065
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 29066
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBappIsMutable()V
    .locals 2

    .line 29210
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 29211
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 29212
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBattrIsMutable()V
    .locals 2

    .line 29375
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 29376
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 29377
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBcatIsMutable()V
    .locals 2

    .line 28844
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 28845
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28846
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 29718
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 29719
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 29720
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 28578
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Restrictions_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 29704
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29705
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 29707
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 29708
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 29709
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 29710
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 29712
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 30015
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 30016
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 30020
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 30021
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 30022
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 30024
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 28601
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$24700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28602
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllBadv(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;"
        }
    .end annotation

    .line 29167
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBadvIsMutable()V

    .line 29168
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 29170
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllBapp(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;"
        }
    .end annotation

    .line 29327
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBappIsMutable()V

    .line 29328
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 29330
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllBattr(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;"
        }
    .end annotation

    .line 29464
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 29465
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 29466
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29468
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllBattrValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;"
        }
    .end annotation

    .line 29552
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 29553
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

    .line 29554
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29556
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllBcat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;"
        }
    .end annotation

    .line 28947
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBcatIsMutable()V

    .line 28948
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 28950
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;"
        }
    .end annotation

    .line 29894
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29895
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 29896
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 29898
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 29900
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addBadv(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29151
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBadvIsMutable()V

    .line 29152
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 29153
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public addBadvBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29201
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$26000(Lcom/explorestack/protobuf/ByteString;)V

    .line 29202
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBadvIsMutable()V

    .line 29203
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 29204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public addBapp(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29309
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBappIsMutable()V

    .line 29310
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 29311
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public addBappBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29363
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29365
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$26100(Lcom/explorestack/protobuf/ByteString;)V

    .line 29366
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBappIsMutable()V

    .line 29367
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 29368
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public addBattr(Lcom/explorestack/protobuf/adcom/CreativeAttribute;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29446
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29448
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 29449
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29450
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public addBattrValue(I)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29536
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 29537
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29538
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public addBcat(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28929
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28931
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBcatIsMutable()V

    .line 28932
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 28933
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public addBcatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28979
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28981
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25900(Lcom/explorestack/protobuf/ByteString;)V

    .line 28982
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBcatIsMutable()V

    .line 28983
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 28984
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29876
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29877
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 29878
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 29881
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29837
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29839
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29841
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 29842
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29843
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 29845
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29858
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29859
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 29860
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29861
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 29863
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29816
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29818
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29820
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 29821
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29822
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 29824
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 29986
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 29987
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 29986
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 29998
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 29999
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 29998
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 28726
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 2

    .line 28646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    .line 28647
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 28648
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 2

    .line 28655
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 28656
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 28658
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28659
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 28661
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$24902(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 28662
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25002(Lcom/explorestack/protobuf/adcom/Context$Restrictions;I)I

    .line 28663
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 28664
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28665
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 28667
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25102(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 28668
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 28669
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28670
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 28672
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25202(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 28673
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 28674
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 28675
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 28677
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25302(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Ljava/util/List;)Ljava/util/List;

    .line 28678
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 28679
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25402(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 28681
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25402(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 28683
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_6

    .line 28684
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 28685
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 28686
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 28688
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25502(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 28690
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25502(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Ljava/util/List;)Ljava/util/List;

    .line 28692
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2

    .line 28607
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 28608
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28609
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 28610
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    .line 28612
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28613
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 28614
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28615
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 28616
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 28617
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 28618
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28619
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 28621
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28622
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 28624
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28625
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 28626
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    goto :goto_1

    .line 28628
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public clearBadv()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29182
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 29183
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 29184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBapp()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29344
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 29345
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 29346
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBattr()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29480
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 29481
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 29482
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBcat()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28962
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28963
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 28964
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCattax()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 29057
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    .line 29058
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2

    .line 29657
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 29658
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 29659
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 29661
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 29662
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29912
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29913
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 29914
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 29915
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 29917
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 28709
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 28714
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28698
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBadv(I)Ljava/lang/String;
    .locals 1

    .line 29102
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBadvBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 29115
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getBadvCount()I
    .locals 1

    .line 29090
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 29079
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBadvList()Ljava/util/List;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getBapp(I)Ljava/lang/String;
    .locals 1

    .line 29254
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBappBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 29269
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getBappCount()I
    .locals 1

    .line 29240
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBappList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 29227
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBappList()Ljava/util/List;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getBappList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getBattr(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .locals 2

    .line 29413
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$26200()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p1
.end method

.method public getBattrCount()I
    .locals 1

    .line 29401
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

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

    .line 29389
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 29390
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$26200()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getBattrValue(I)I
    .locals 1

    .line 29507
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

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

    .line 29495
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBcat(I)Ljava/lang/String;
    .locals 1

    .line 28882
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBcatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 28895
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getBcatCount()I
    .locals 1

    .line 28870
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 28859
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBcatList()Ljava/util/List;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 29026
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29027
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public getCattaxValue()I
    .locals 1

    .line 28998
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 28572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1

    .line 28641
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 28636
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Restrictions_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 29583
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 29584
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 29586
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 29676
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    .line 29677
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 29687
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 29688
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 29690
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 29691
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 29763
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29764
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 29766
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 29947
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 30010
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 29749
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29750
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 29752
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

    .line 29735
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29736
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29738
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 29958
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29959
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 29960
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

    .line 29972
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 29973
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29975
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 29572
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 28584
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Restrictions_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    .line 28585
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29635
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 29636
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 29638
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 29640
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 29642
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_1

    .line 29644
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

    .line 28572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

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

    .line 28572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

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

    .line 28572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

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

    .line 28572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 28829
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 28835
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28831
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28832
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

    .line 28835
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    .line 28837
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28730
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    if-eqz v0, :cond_0

    .line 28731
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1

    .line 28733
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2

    .line 28739
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 28740
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$24900(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 28741
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28742
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$24900(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28743
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    goto :goto_0

    .line 28745
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBcatIsMutable()V

    .line 28746
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$24900(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 28748
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    .line 28750
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25000(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 28751
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getCattaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    .line 28753
    :cond_3
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25100(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 28754
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28755
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25100(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28756
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    goto :goto_1

    .line 28758
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBadvIsMutable()V

    .line 28759
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25100(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 28761
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    .line 28763
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25200(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 28764
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28765
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25200(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28766
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    goto :goto_2

    .line 28768
    :cond_6
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBappIsMutable()V

    .line 28769
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25200(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 28771
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    .line 28773
    :cond_7
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25300(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 28774
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28775
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25300(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 28776
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    goto :goto_3

    .line 28778
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 28779
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25300(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28781
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    .line 28783
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28784
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    .line 28786
    :cond_a
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_c

    .line 28787
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25500(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 28788
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 28789
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25500(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 28790
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    goto :goto_4

    .line 28792
    :cond_b
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 28793
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25500(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28795
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_5

    .line 28798
    :cond_c
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25500(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 28799
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 28800
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 28801
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 28802
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25500(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 28803
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 28805
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25600()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 28806
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_d
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    .line 28808
    :cond_e
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25500(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 28812
    :cond_f
    :goto_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25700(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    .line 28813
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 30035
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29929
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29930
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 29931
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 29934
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setBadv(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29130
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29132
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBadvIsMutable()V

    .line 29133
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public setBapp(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29286
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29288
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBappIsMutable()V

    .line 29289
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public setBattr(ILcom/explorestack/protobuf/adcom/CreativeAttribute;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29428
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29430
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 29431
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29432
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public setBattrValue(II)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29521
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 29522
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29523
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public setBcat(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28910
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28912
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBcatIsMutable()V

    .line 28913
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28914
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public setCattax(Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 29040
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29043
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    .line 29044
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 29011
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    .line 29012
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29618
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29619
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 29620
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 29622
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29597
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29601
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 29602
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 29604
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29799
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29800
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 29801
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29802
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 29804
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 29778
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29780
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29782
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 29783
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29784
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 29786
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 28704
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 28720
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 30029
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method
