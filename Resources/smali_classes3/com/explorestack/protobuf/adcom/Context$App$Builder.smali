.class public final Lcom/explorestack/protobuf/adcom/Context$App$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Context.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$AppOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$App$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Context$AppOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bundle_:Ljava/lang/Object;

.field private cat_:Lcom/explorestack/protobuf/LazyStringList;

.field private cattax_:I

.field private contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$App$Content;",
            "Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$App$ContentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

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

.field private keywords_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private pagecat_:Lcom/explorestack/protobuf/LazyStringList;

.field private paid_:Z

.field private privpolicy_:Z

.field private pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$App$Publisher;",
            "Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$App$PublisherOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

.field private sectcat_:Lcom/explorestack/protobuf/LazyStringList;

.field private storeid_:Ljava/lang/Object;

.field private storeurl_:Ljava/lang/Object;

.field private ver_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 11974
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 12305
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->id_:Ljava/lang/Object;

    .line 12401
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->name_:Ljava/lang/Object;

    .line 12807
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->domain_:Ljava/lang/Object;

    .line 12903
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 13049
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 13195
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v1, 0x0

    .line 13305
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cattax_:I

    .line 13402
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->keywords_:Ljava/lang/Object;

    .line 13498
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bundle_:Ljava/lang/Object;

    .line 13594
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeid_:Ljava/lang/Object;

    .line 13690
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeurl_:Ljava/lang/Object;

    .line 13786
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ver_:Ljava/lang/Object;

    .line 14081
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    .line 11975
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 11980
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 12305
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->id_:Ljava/lang/Object;

    .line 12401
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->name_:Ljava/lang/Object;

    .line 12807
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->domain_:Ljava/lang/Object;

    .line 12903
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 13049
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 13195
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 13305
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cattax_:I

    .line 13402
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->keywords_:Ljava/lang/Object;

    .line 13498
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bundle_:Ljava/lang/Object;

    .line 13594
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeid_:Ljava/lang/Object;

    .line 13690
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeurl_:Ljava/lang/Object;

    .line 13786
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ver_:Ljava/lang/Object;

    .line 14081
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    .line 11981
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 11956
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 11956
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;-><init>()V

    return-void
.end method

.method private ensureCatIsMutable()V
    .locals 2

    .line 12905
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 12906
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 12907
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 14083
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 14084
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    .line 14085
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensurePagecatIsMutable()V
    .locals 2

    .line 13197
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 13198
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 13199
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSectcatIsMutable()V
    .locals 2

    .line 13051
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 13052
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 13053
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getContentFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$App$Content;",
            "Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$App$ContentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12796
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12797
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 12799
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getContent()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object v1

    .line 12800
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 12801
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 12802
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    .line 12804
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11962
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 14069
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14070
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 14072
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 14073
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 14074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 14075
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 14077
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 14380
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 14381
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 14385
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 14386
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 14387
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    .line 14389
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getPubFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$App$Publisher;",
            "Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$App$PublisherOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12641
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12642
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 12644
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getPub()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v1

    .line 12645
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 12646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 12647
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    .line 12649
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 11985
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11986
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllCat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$App$Builder;"
        }
    .end annotation

    .line 13008
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureCatIsMutable()V

    .line 13009
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 13011
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$App$Builder;"
        }
    .end annotation

    .line 14259
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14260
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureExtProtoIsMutable()V

    .line 14261
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 14263
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 14265
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllPagecat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$App$Builder;"
        }
    .end annotation

    .line 13272
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensurePagecatIsMutable()V

    .line 13273
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 13275
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllSectcat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$App$Builder;"
        }
    .end annotation

    .line 13154
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureSectcatIsMutable()V

    .line 13155
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 13157
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public addCat(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 12990
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12992
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureCatIsMutable()V

    .line 12993
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 12994
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public addCatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13040
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13042
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$11600(Lcom/explorestack/protobuf/ByteString;)V

    .line 13043
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureCatIsMutable()V

    .line 13044
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 13045
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 14241
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14242
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureExtProtoIsMutable()V

    .line 14243
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14244
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 14246
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 14202
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14204
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14206
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureExtProtoIsMutable()V

    .line 14207
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14208
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 14210
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 14223
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14224
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureExtProtoIsMutable()V

    .line 14225
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14226
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 14228
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 14181
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14185
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureExtProtoIsMutable()V

    .line 14186
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14187
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 14189
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 14351
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 14352
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 14351
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 14363
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 14364
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 14363
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public addPagecat(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13260
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensurePagecatIsMutable()V

    .line 13261
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 13262
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public addPagecatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13296
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13298
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$11800(Lcom/explorestack/protobuf/ByteString;)V

    .line 13299
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensurePagecatIsMutable()V

    .line 13300
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 13301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 12155
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-object p1
.end method

.method public addSectcat(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13138
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureSectcatIsMutable()V

    .line 13139
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 13140
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public addSectcatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13188
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$11700(Lcom/explorestack/protobuf/ByteString;)V

    .line 13189
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureSectcatIsMutable()V

    .line 13190
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 13191
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 2

    .line 12060
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    .line 12061
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 12062
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 2

    .line 12069
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 12071
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9202(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12072
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9302(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12073
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 12074
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9402(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    goto :goto_0

    .line 12076
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9402(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    .line 12078
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 12079
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9502(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/adcom/Context$App$Content;)Lcom/explorestack/protobuf/adcom/Context$App$Content;

    goto :goto_1

    .line 12081
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$App$Content;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9502(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/adcom/Context$App$Content;)Lcom/explorestack/protobuf/adcom/Context$App$Content;

    .line 12083
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->domain_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9602(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12084
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 12085
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 12086
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    .line 12088
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9702(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 12089
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 12090
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 12091
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    .line 12093
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9802(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 12094
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 12095
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 12096
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    .line 12098
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9902(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 12099
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cattax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10002(Lcom/explorestack/protobuf/adcom/Context$App;I)I

    .line 12100
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->privpolicy_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10102(Lcom/explorestack/protobuf/adcom/Context$App;Z)Z

    .line 12101
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->keywords_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10202(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12102
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bundle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10302(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12103
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10402(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12104
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeurl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10502(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12105
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10602(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12106
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->paid_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10702(Lcom/explorestack/protobuf/adcom/Context$App;Z)Z

    .line 12107
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 12108
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10802(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_2

    .line 12110
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10802(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 12112
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_7

    .line 12113
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 12114
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    .line 12115
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    .line 12117
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10902(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 12119
    :cond_7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10902(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/util/List;)Ljava/util/List;

    .line 12121
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 3

    .line 11991
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 11992
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->id_:Ljava/lang/Object;

    .line 11994
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->name_:Ljava/lang/Object;

    .line 11996
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 11997
    iput-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    goto :goto_0

    .line 11999
    :cond_0
    iput-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    .line 12000
    iput-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 12002
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 12003
    iput-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    goto :goto_1

    .line 12005
    :cond_1
    iput-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    .line 12006
    iput-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 12008
    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->domain_:Ljava/lang/Object;

    .line 12010
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 12011
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    .line 12012
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 12013
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    .line 12014
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 12015
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 12016
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cattax_:I

    .line 12018
    iput-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->privpolicy_:Z

    .line 12020
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->keywords_:Ljava/lang/Object;

    .line 12022
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bundle_:Ljava/lang/Object;

    .line 12024
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeid_:Ljava/lang/Object;

    .line 12026
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeurl_:Ljava/lang/Object;

    .line 12028
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ver_:Ljava/lang/Object;

    .line 12030
    iput-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->paid_:Z

    .line 12032
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 12033
    iput-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_2

    .line 12035
    :cond_2
    iput-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 12036
    iput-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 12038
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3

    .line 12039
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    .line 12040
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    goto :goto_3

    .line 12042
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_3
    return-object p0
.end method

.method public clearBundle()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13569
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App;->getBundle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bundle_:Ljava/lang/Object;

    .line 13570
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCat()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13023
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 13024
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    .line 13025
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCattax()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 13354
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cattax_:I

    .line 13355
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContent()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 2

    .line 12749
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12750
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    .line 12751
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 12753
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    .line 12754
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearDomain()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 12878
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->domain_:Ljava/lang/Object;

    .line 12879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 2

    .line 14022
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 14023
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 14024
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 14026
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 14027
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 14277
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    .line 14279
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    .line 14280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 14282
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 12138
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-object p1
.end method

.method public clearId()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 12376
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->id_:Ljava/lang/Object;

    .line 12377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearKeywords()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13473
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->keywords_:Ljava/lang/Object;

    .line 13474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 12472
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->name_:Ljava/lang/Object;

    .line 12473
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 12143
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-object p1
.end method

.method public clearPagecat()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13283
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 13284
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    .line 13285
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPaid()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 13920
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->paid_:Z

    .line 13921
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPrivpolicy()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 13397
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->privpolicy_:Z

    .line 13398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPub()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 2

    .line 12594
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12595
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    .line 12596
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 12598
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    .line 12599
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearSectcat()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13169
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 13170
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    .line 13171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStoreid()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13665
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeid_:Ljava/lang/Object;

    .line 13666
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStoreurl()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13761
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeurl_:Ljava/lang/Object;

    .line 13762
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVer()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13857
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App;->getVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ver_:Ljava/lang/Object;

    .line 13858
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 12127
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBundle()Ljava/lang/String;
    .locals 2

    .line 13508
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bundle_:Ljava/lang/Object;

    .line 13509
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 13510
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 13512
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 13513
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 13516
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 13529
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bundle_:Ljava/lang/Object;

    .line 13530
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13531
    check-cast v0, Ljava/lang/String;

    .line 13532
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 13534
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 13537
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCat(I)Ljava/lang/String;
    .locals 1

    .line 12943
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 12956
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCatCount()I
    .locals 1

    .line 12931
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 12920
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCatList()Ljava/util/List;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 13331
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 13332
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public getCattaxValue()I
    .locals 1

    .line 13311
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cattax_:I

    return v0
.end method

.method public getContent()Lcom/explorestack/protobuf/adcom/Context$App$Content;
    .locals 1

    .line 12675
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12676
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object v0

    :cond_0
    return-object v0

    .line 12678
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$Content;

    return-object v0
.end method

.method public getContentBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;
    .locals 1

    .line 12768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 12769
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getContentFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;

    return-object v0
.end method

.method public getContentOrBuilder()Lcom/explorestack/protobuf/adcom/Context$App$ContentOrBuilder;
    .locals 1

    .line 12779
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 12780
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$ContentOrBuilder;

    return-object v0

    .line 12782
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    if-nez v0, :cond_1

    .line 12783
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1

    .line 12055
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 12050
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .line 12817
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->domain_:Ljava/lang/Object;

    .line 12818
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 12819
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 12821
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 12822
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->domain_:Ljava/lang/Object;

    return-object v0

    .line 12825
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDomainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 12838
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->domain_:Ljava/lang/Object;

    .line 12839
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12840
    check-cast v0, Ljava/lang/String;

    .line 12841
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 12843
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->domain_:Ljava/lang/Object;

    return-object v0

    .line 12846
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 13948
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 13949
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 13951
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 14041
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 14042
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 14052
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 14053
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 14055
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 14056
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 14128
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14129
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 14131
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 14312
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 14375
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 14114
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14115
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 14117
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

    .line 14100
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14101
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 14103
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 14323
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14324
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 14325
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

    .line 14337
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 14338
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 14340
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 12315
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->id_:Ljava/lang/Object;

    .line 12316
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 12317
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 12319
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 12320
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 12323
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 12336
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->id_:Ljava/lang/Object;

    .line 12337
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12338
    check-cast v0, Ljava/lang/String;

    .line 12339
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 12341
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 12344
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 2

    .line 13412
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->keywords_:Ljava/lang/Object;

    .line 13413
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 13414
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 13416
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 13417
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->keywords_:Ljava/lang/Object;

    return-object v0

    .line 13420
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getKeywordsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 13433
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->keywords_:Ljava/lang/Object;

    .line 13434
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13435
    check-cast v0, Ljava/lang/String;

    .line 13436
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 13438
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->keywords_:Ljava/lang/Object;

    return-object v0

    .line 13441
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 12411
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->name_:Ljava/lang/Object;

    .line 12412
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 12413
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 12415
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 12416
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 12419
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 12432
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->name_:Ljava/lang/Object;

    .line 12433
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12434
    check-cast v0, Ljava/lang/String;

    .line 12435
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 12437
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 12440
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getPagecat(I)Ljava/lang/String;
    .locals 1

    .line 13223
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPagecatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 13232
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPagecatCount()I
    .locals 1

    .line 13215
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getPagecatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 13208
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPagecatList()Ljava/util/List;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getPagecatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getPaid()Z
    .locals 1

    .line 13893
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->paid_:Z

    return v0
.end method

.method public getPrivpolicy()Z
    .locals 1

    .line 13370
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->privpolicy_:Z

    return v0
.end method

.method public getPub()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1

    .line 12520
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12521
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    :cond_0
    return-object v0

    .line 12523
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object v0
.end method

.method public getPubBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 12613
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 12614
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getPubFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    return-object v0
.end method

.method public getPubOrBuilder()Lcom/explorestack/protobuf/adcom/Context$App$PublisherOrBuilder;
    .locals 1

    .line 12624
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 12625
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$PublisherOrBuilder;

    return-object v0

    .line 12627
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    if-nez v0, :cond_1

    .line 12628
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSectcat(I)Ljava/lang/String;
    .locals 1

    .line 13089
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSectcatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 13102
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSectcatCount()I
    .locals 1

    .line 13077
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSectcatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 13066
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSectcatList()Ljava/util/List;
    .locals 1

    .line 11956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getSectcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getStoreid()Ljava/lang/String;
    .locals 2

    .line 13604
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeid_:Ljava/lang/Object;

    .line 13605
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 13606
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 13608
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 13609
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeid_:Ljava/lang/Object;

    return-object v0

    .line 13612
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStoreidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 13625
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeid_:Ljava/lang/Object;

    .line 13626
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13627
    check-cast v0, Ljava/lang/String;

    .line 13628
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 13630
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeid_:Ljava/lang/Object;

    return-object v0

    .line 13633
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStoreurl()Ljava/lang/String;
    .locals 2

    .line 13700
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeurl_:Ljava/lang/Object;

    .line 13701
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 13702
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 13704
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 13705
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeurl_:Ljava/lang/Object;

    return-object v0

    .line 13708
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStoreurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 13721
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeurl_:Ljava/lang/Object;

    .line 13722
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13723
    check-cast v0, Ljava/lang/String;

    .line 13724
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 13726
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeurl_:Ljava/lang/Object;

    return-object v0

    .line 13729
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 2

    .line 13796
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ver_:Ljava/lang/Object;

    .line 13797
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 13798
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 13800
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 13801
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ver_:Ljava/lang/Object;

    return-object v0

    .line 13804
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 13817
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ver_:Ljava/lang/Object;

    .line 13818
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13819
    check-cast v0, Ljava/lang/String;

    .line 13820
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 13822
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ver_:Ljava/lang/Object;

    return-object v0

    .line 13825
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .line 12664
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

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

    .line 13937
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public hasPub()Z
    .locals 1

    .line 12509
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

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

    .line 11968
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$App;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 11969
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeContent(Lcom/explorestack/protobuf/adcom/Context$App$Content;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 12727
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12728
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    if-eqz v0, :cond_0

    .line 12730
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$App$Content;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    goto :goto_0

    .line 12732
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    .line 12734
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_1

    .line 12736
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 14000
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 14001
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 14003
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 14005
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 14007
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_1

    .line 14009
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

    .line 11956
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

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

    .line 11956
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

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

    .line 11956
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

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

    .line 11956
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 12292
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->access$11200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 12298
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12294
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context$App;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12295
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

    .line 12298
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 12300
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 12159
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context$App;

    if-eqz v0, :cond_0

    .line 12160
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1

    .line 12162
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 2

    .line 12168
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 12169
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12170
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9200(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->id_:Ljava/lang/Object;

    .line 12171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 12173
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12174
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9300(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->name_:Ljava/lang/Object;

    .line 12175
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 12177
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->hasPub()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12178
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getPub()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergePub(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 12180
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12181
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getContent()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeContent(Lcom/explorestack/protobuf/adcom/Context$App$Content;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 12183
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12184
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9600(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->domain_:Ljava/lang/Object;

    .line 12185
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 12187
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9700(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 12188
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12189
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9700(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 12190
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    goto :goto_0

    .line 12192
    :cond_6
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureCatIsMutable()V

    .line 12193
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9700(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 12195
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 12197
    :cond_7
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9800(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 12198
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12199
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9800(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 12200
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    goto :goto_1

    .line 12202
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureSectcatIsMutable()V

    .line 12203
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9800(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 12205
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 12207
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9900(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 12208
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 12209
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9900(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 12210
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    goto :goto_2

    .line 12212
    :cond_a
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensurePagecatIsMutable()V

    .line 12213
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$9900(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 12215
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 12217
    :cond_b
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10000(Lcom/explorestack/protobuf/adcom/Context$App;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 12218
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getCattaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 12220
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getPrivpolicy()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 12221
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getPrivpolicy()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setPrivpolicy(Z)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 12223
    :cond_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 12224
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10200(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->keywords_:Ljava/lang/Object;

    .line 12225
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 12227
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 12228
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10300(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bundle_:Ljava/lang/Object;

    .line 12229
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 12231
    :cond_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 12232
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10400(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeid_:Ljava/lang/Object;

    .line 12233
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 12235
    :cond_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 12236
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10500(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeurl_:Ljava/lang/Object;

    .line 12237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 12239
    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 12240
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10600(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ver_:Ljava/lang/Object;

    .line 12241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    .line 12243
    :cond_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getPaid()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 12244
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getPaid()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setPaid(Z)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 12246
    :cond_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 12247
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 12249
    :cond_14
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_16

    .line 12250
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10900(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 12251
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 12252
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10900(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    .line 12253
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    goto :goto_3

    .line 12255
    :cond_15
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureExtProtoIsMutable()V

    .line 12256
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10900(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12258
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_4

    .line 12261
    :cond_16
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10900(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 12262
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 12263
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 12264
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 12265
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10900(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    .line 12266
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bitField0_:I

    .line 12268
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->access$11000()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 12269
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_17
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 12271
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$10900(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 12275
    :cond_19
    :goto_4
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$11100(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 12276
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public mergePub(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 12572
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12573
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    if-eqz v0, :cond_0

    .line 12575
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    goto :goto_0

    .line 12577
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    .line 12579
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_1

    .line 12581
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 14400
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-object p1
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 14294
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14295
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureExtProtoIsMutable()V

    .line 14296
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 14297
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 14299
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setBundle(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13552
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13555
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bundle_:Ljava/lang/Object;

    .line 13556
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setBundleBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13585
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13587
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$12000(Lcom/explorestack/protobuf/ByteString;)V

    .line 13589
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->bundle_:Ljava/lang/Object;

    .line 13590
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setCat(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 12971
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12973
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureCatIsMutable()V

    .line 12974
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12975
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setCattax(Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13344
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cattax_:I

    .line 13345
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13320
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->cattax_:I

    .line 13321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setContent(Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 12710
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12711
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    .line 12712
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 12714
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setContent(Lcom/explorestack/protobuf/adcom/Context$App$Content;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 12689
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->contentBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12691
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12693
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    .line 12694
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 12696
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 12861
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12864
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->domain_:Ljava/lang/Object;

    .line 12865
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setDomainBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 12894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12896
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$11500(Lcom/explorestack/protobuf/ByteString;)V

    .line 12898
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->domain_:Ljava/lang/Object;

    .line 12899
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13983
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13984
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 13985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 13987
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13962
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13964
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13966
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 13967
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 13969
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 14164
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14165
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureExtProtoIsMutable()V

    .line 14166
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14167
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 14169
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 14143
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14145
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14147
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureExtProtoIsMutable()V

    .line 14148
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14149
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 14151
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 12133
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 12359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12362
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->id_:Ljava/lang/Object;

    .line 12363
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 12392
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12394
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$11300(Lcom/explorestack/protobuf/ByteString;)V

    .line 12396
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->id_:Ljava/lang/Object;

    .line 12397
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13456
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13459
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->keywords_:Ljava/lang/Object;

    .line 13460
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setKeywordsBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13489
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13491
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$11900(Lcom/explorestack/protobuf/ByteString;)V

    .line 13493
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->keywords_:Ljava/lang/Object;

    .line 13494
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 12455
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12458
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->name_:Ljava/lang/Object;

    .line 12459
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 12488
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12490
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$11400(Lcom/explorestack/protobuf/ByteString;)V

    .line 12492
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->name_:Ljava/lang/Object;

    .line 12493
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setPagecat(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13243
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13245
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensurePagecatIsMutable()V

    .line 13246
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13247
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setPaid(Z)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13906
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->paid_:Z

    .line 13907
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setPrivpolicy(Z)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13383
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->privpolicy_:Z

    .line 13384
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setPub(Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 12555
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12556
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    .line 12557
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 12559
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPub(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 12534
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pubBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12536
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12538
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    .line 12539
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    goto :goto_0

    .line 12541
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 12149
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-object p1
.end method

.method public setSectcat(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 13117
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13119
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ensureSectcatIsMutable()V

    .line 13120
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13121
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setStoreid(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13648
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13651
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeid_:Ljava/lang/Object;

    .line 13652
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setStoreidBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13681
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13683
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$12100(Lcom/explorestack/protobuf/ByteString;)V

    .line 13685
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeid_:Ljava/lang/Object;

    .line 13686
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setStoreurl(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13744
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13747
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeurl_:Ljava/lang/Object;

    .line 13748
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setStoreurlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13777
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13779
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$12200(Lcom/explorestack/protobuf/ByteString;)V

    .line 13781
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->storeurl_:Ljava/lang/Object;

    .line 13782
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11956
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 14394
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-object p1
.end method

.method public setVer(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13840
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13843
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ver_:Ljava/lang/Object;

    .line 13844
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method

.method public setVerBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 0

    .line 13873
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13875
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->access$12300(Lcom/explorestack/protobuf/ByteString;)V

    .line 13877
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->ver_:Ljava/lang/Object;

    .line 13878
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->onChanged()V

    return-object p0
.end method
