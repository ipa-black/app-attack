.class public final Lcom/explorestack/protobuf/adcom/Ad$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Ad.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/AdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Ad$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/AdOrBuilder;"
    }
.end annotation


# instance fields
.field private adomain_:Lcom/explorestack/protobuf/LazyStringList;

.field private auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit;",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

.field private bitField0_:I

.field private bundle_:Lcom/explorestack/protobuf/LazyStringList;

.field private cat_:Lcom/explorestack/protobuf/LazyStringList;

.field private cattax_:I

.field private displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

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

.field private init_:Ljava/lang/Object;

.field private iurl_:Ljava/lang/Object;

.field private lang_:Ljava/lang/Object;

.field private lastmod_:Ljava/lang/Object;

.field private mrating_:I

.field private secure_:Z

.field private videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Video;",
            "Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private video_:Lcom/explorestack/protobuf/adcom/Ad$Video;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 26859
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 27183
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 27279
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27425
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27580
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 27681
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v1, 0x0

    .line 27827
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    .line 27901
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 28040
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    .line 28114
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 28210
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 28891
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 26860
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 26865
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 27183
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 27279
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27425
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27580
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 27681
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 27827
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    .line 27901
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 28040
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    .line 28114
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 28210
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 28891
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 26866
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 26841
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 26841
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;-><init>()V

    return-void
.end method

.method private ensureAdomainIsMutable()V
    .locals 2

    .line 27281
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 27282
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27283
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBundleIsMutable()V
    .locals 2

    .line 27427
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 27428
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27429
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureCatIsMutable()V
    .locals 2

    .line 27683
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 27684
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27685
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 28893
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 28894
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 28895
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAuditFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit;",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;",
            ">;"
        }
    .end annotation

    .line 28724
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28725
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 28727
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getAudit()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v1

    .line 28728
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 28729
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 28730
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 28732
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 26847
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getDisplayFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;",
            ">;"
        }
    .end annotation

    .line 28450
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28451
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 28453
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v1

    .line 28454
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 28455
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 28456
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 28458
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 28879
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28880
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 28882
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 28883
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 28884
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 28885
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28887
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 29190
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 29191
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 29195
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 29196
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 29197
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 29199
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getVideoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Video;",
            "Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 28605
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28606
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 28608
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v1

    .line 28609
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 28610
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 28611
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 28613
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 26870
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->access$20200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26871
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAdomain(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27368
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureAdomainIsMutable()V

    .line 27369
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 27370
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public addAdomainBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27418
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22400(Lcom/explorestack/protobuf/ByteString;)V

    .line 27419
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureAdomainIsMutable()V

    .line 27420
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 27421
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllAdomain(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;"
        }
    .end annotation

    .line 27384
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureAdomainIsMutable()V

    .line 27385
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 27387
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllBundle(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;"
        }
    .end annotation

    .line 27537
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureBundleIsMutable()V

    .line 27538
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 27540
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllCat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;"
        }
    .end annotation

    .line 27786
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureCatIsMutable()V

    .line 27787
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 27789
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;"
        }
    .end annotation

    .line 29069
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29070
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 29071
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 29073
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 29075
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addBundle(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27518
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27520
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureBundleIsMutable()V

    .line 27521
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 27522
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public addBundleBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27571
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27573
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22500(Lcom/explorestack/protobuf/ByteString;)V

    .line 27574
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureBundleIsMutable()V

    .line 27575
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 27576
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public addCat(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27768
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27770
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureCatIsMutable()V

    .line 27771
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 27772
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public addCatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27818
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27820
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22700(Lcom/explorestack/protobuf/ByteString;)V

    .line 27821
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureCatIsMutable()V

    .line 27822
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 27823
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 29051
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29052
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 29053
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 29056
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 29012
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29014
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29016
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 29017
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29018
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 29020
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 29033
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29034
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 29035
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29036
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 29038
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28991
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28993
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28995
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 28996
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28997
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28999
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 29161
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 29162
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 29161
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 29173
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 29174
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 29173
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27042
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 2

    .line 26945
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    .line 26946
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 26947
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 2

    .line 26954
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Ad;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 26956
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20402(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26957
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 26958
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26959
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 26961
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20502(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 26962
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 26963
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26964
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 26966
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20602(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 26967
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20702(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26968
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 26969
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26970
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 26972
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20802(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 26973
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20902(Lcom/explorestack/protobuf/adcom/Ad;I)I

    .line 26974
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21002(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26975
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->secure_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21102(Lcom/explorestack/protobuf/adcom/Ad;Z)Z

    .line 26976
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21202(Lcom/explorestack/protobuf/adcom/Ad;I)I

    .line 26977
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21302(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26978
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21402(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26979
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 26980
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21502(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display;

    goto :goto_0

    .line 26982
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad$Display;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21502(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 26984
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 26985
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21602(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video;

    goto :goto_1

    .line 26987
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad$Video;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21602(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 26989
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 26990
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21702(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit;

    goto :goto_2

    .line 26992
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21702(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 26994
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6

    .line 26995
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21802(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 26997
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21802(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 26999
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_8

    .line 27000
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 27001
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 27002
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 27004
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21902(Lcom/explorestack/protobuf/adcom/Ad;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 27006
    :cond_8
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21902(Lcom/explorestack/protobuf/adcom/Ad;Ljava/util/List;)Ljava/util/List;

    .line 27008
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 26876
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 26877
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 26879
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26880
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 26881
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26882
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 26883
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 26885
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26886
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 26887
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    .line 26889
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 26891
    iput-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->secure_:Z

    .line 26893
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    .line 26895
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 26897
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 26899
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 26900
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    goto :goto_0

    .line 26902
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 26903
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 26905
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 26906
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    goto :goto_1

    .line 26908
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 26909
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 26911
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 26912
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    goto :goto_2

    .line 26914
    :cond_2
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 26915
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 26917
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 26918
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 26920
    :cond_3
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 26921
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 26923
    :goto_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 26924
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 26925
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    goto :goto_4

    .line 26927
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_4
    return-object p0
.end method

.method public clearAdomain()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27399
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27400
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 27401
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAudit()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 28689
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28690
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 28691
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28693
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 28694
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearBundle()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27553
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27554
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 27555
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCat()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27801
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27802
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 27803
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCattax()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 27896
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    .line 27897
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDisplay()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 28403
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28404
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 28405
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28407
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 28408
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 28832
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28833
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28836
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28837
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 29087
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29088
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 29089
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 29090
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 29092
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27025
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public clearId()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27254
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 27255
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInit()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28185
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->getInit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 28186
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIurl()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27655
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->getIurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 27656
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLang()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27972
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->getLang()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 27973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLastmod()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28281
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->getLastmod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 28282
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMrating()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 28109
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    .line 28110
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27030
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public clearSecure()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 28035
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->secure_:Z

    .line 28036
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVideo()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 28558
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28559
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 28560
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28562
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 28563
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27014
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdomain(I)Ljava/lang/String;
    .locals 1

    .line 27319
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAdomainBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 27332
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAdomainCount()I
    .locals 1

    .line 27307
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 27296
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdomainList()Ljava/util/List;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getAudit()Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1

    .line 28631
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28632
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    :cond_0
    return-object v0

    .line 28634
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object v0
.end method

.method public getAuditBuilder()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 28704
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 28705
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getAuditFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object v0
.end method

.method public getAuditOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;
    .locals 1

    .line 28711
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 28712
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;

    return-object v0

    .line 28714
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-nez v0, :cond_1

    .line 28715
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getBundle(I)Ljava/lang/String;
    .locals 1

    .line 27468
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBundleBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 27482
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getBundleCount()I
    .locals 1

    .line 27455
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBundleList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 27443
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBundleList()Ljava/util/List;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getBundleList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getCat(I)Ljava/lang/String;
    .locals 1

    .line 27721
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 27734
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCatCount()I
    .locals 1

    .line 27709
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 27698
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCatList()Ljava/util/List;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 27865
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27866
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public getCattaxValue()I
    .locals 1

    .line 27837
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 26841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1

    .line 26940
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 26935
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1

    .line 28329
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28330
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    :cond_0
    return-object v0

    .line 28332
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object v0
.end method

.method public getDisplayBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 28422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 28423
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getDisplayFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object v0
.end method

.method public getDisplayOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;
    .locals 1

    .line 28433
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 28434
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;

    return-object v0

    .line 28436
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-nez v0, :cond_1

    .line 28437
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 28758
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28759
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 28761
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 28851
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 28852
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 28862
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 28863
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 28865
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 28866
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 28938
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28939
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 28941
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 29122
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 29185
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 28924
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28925
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 28927
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

    .line 28910
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28911
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 28913
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 29133
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29134
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 29135
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

    .line 29147
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 29148
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29150
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 27193
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 27194
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 27195
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 27197
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 27198
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 27201
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 27214
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 27215
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27216
    check-cast v0, Ljava/lang/String;

    .line 27217
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 27219
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 27222
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getInit()Ljava/lang/String;
    .locals 2

    .line 28124
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 28125
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 28126
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 28128
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 28129
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    return-object v0

    .line 28132
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInitBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 28145
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 28146
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28147
    check-cast v0, Ljava/lang/String;

    .line 28148
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 28150
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    return-object v0

    .line 28153
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIurl()Ljava/lang/String;
    .locals 2

    .line 27591
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 27592
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 27593
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 27595
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 27596
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    return-object v0

    .line 27599
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 27613
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 27614
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27615
    check-cast v0, Ljava/lang/String;

    .line 27616
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 27618
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    return-object v0

    .line 27621
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 2

    .line 27911
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 27912
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 27913
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 27915
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 27916
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    return-object v0

    .line 27919
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLangBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 27932
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 27933
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27934
    check-cast v0, Ljava/lang/String;

    .line 27935
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 27937
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    return-object v0

    .line 27940
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getLastmod()Ljava/lang/String;
    .locals 2

    .line 28220
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 28221
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 28222
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 28224
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 28225
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    return-object v0

    .line 28228
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastmodBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 28241
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 28242
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28243
    check-cast v0, Ljava/lang/String;

    .line 28244
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 28246
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    return-object v0

    .line 28249
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMrating()Lcom/explorestack/protobuf/adcom/MediaRating;
    .locals 1

    .line 28078
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/MediaRating;->valueOf(I)Lcom/explorestack/protobuf/adcom/MediaRating;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28079
    sget-object v0, Lcom/explorestack/protobuf/adcom/MediaRating;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/MediaRating;

    :cond_0
    return-object v0
.end method

.method public getMratingValue()I
    .locals 1

    .line 28050
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    return v0
.end method

.method public getSecure()Z
    .locals 1

    .line 28008
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->secure_:Z

    return v0
.end method

.method public getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1

    .line 28484
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28485
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    :cond_0
    return-object v0

    .line 28487
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object v0
.end method

.method public getVideoBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 28577
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 28578
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getVideoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    return-object v0
.end method

.method public getVideoOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;
    .locals 1

    .line 28588
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 28589
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;

    return-object v0

    .line 28591
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    if-nez v0, :cond_1

    .line 28592
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasAudit()Z
    .locals 1

    .line 28624
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

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

.method public hasDisplay()Z
    .locals 1

    .line 28318
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

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

    .line 28747
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 28473
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

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

    .line 26853
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 26854
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeAudit(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28671
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28672
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-eqz v0, :cond_0

    .line 28674
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    goto :goto_0

    .line 28676
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 28678
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_1

    .line 28680
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeDisplay(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28381
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28382
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-eqz v0, :cond_0

    .line 28384
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    goto :goto_0

    .line 28386
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 28388
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_1

    .line 28390
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28810
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28811
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 28813
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 28815
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28817
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_1

    .line 28819
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

    .line 26841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

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

    .line 26841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

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

    .line 26841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

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

    .line 26841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27170
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->access$22200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 27176
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27172
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Ad;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27173
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

    .line 27176
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 27178
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27046
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v0, :cond_0

    .line 27047
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1

    .line 27049
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 27055
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 27056
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27057
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20400(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 27058
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 27060
    :cond_1
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20500(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 27061
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27062
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20500(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27063
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    goto :goto_0

    .line 27065
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureAdomainIsMutable()V

    .line 27066
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20500(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 27068
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 27070
    :cond_3
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20600(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 27071
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27072
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20600(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27073
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    goto :goto_1

    .line 27075
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureBundleIsMutable()V

    .line 27076
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20600(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 27078
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 27080
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getIurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 27081
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20700(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 27082
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 27084
    :cond_6
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20800(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 27085
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27086
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20800(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27087
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    goto :goto_2

    .line 27089
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureCatIsMutable()V

    .line 27090
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20800(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 27092
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 27094
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20900(Lcom/explorestack/protobuf/adcom/Ad;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 27095
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getCattaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 27097
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 27098
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21000(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 27099
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 27101
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getSecure()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27102
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getSecure()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setSecure(Z)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 27104
    :cond_b
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21200(Lcom/explorestack/protobuf/adcom/Ad;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 27105
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getMratingValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setMratingValue(I)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 27107
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getInit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 27108
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21300(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 27109
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 27111
    :cond_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getLastmod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 27112
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21400(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 27113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 27115
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 27116
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeDisplay(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 27118
    :cond_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 27119
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeVideo(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 27121
    :cond_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasAudit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 27122
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getAudit()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeAudit(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 27124
    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 27125
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 27127
    :cond_12
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 27128
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21900(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 27129
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 27130
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21900(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 27131
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    goto :goto_3

    .line 27133
    :cond_13
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 27134
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21900(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27136
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_4

    .line 27139
    :cond_14
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21900(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 27140
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 27141
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 27142
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 27143
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21900(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 27144
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 27146
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->access$22000()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 27147
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_15
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 27149
    :cond_16
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21900(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 27153
    :cond_17
    :goto_4
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22100(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 27154
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 29210
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public mergeVideo(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28536
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28537
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    if-eqz v0, :cond_0

    .line 28539
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    goto :goto_0

    .line 28541
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 28543
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_1

    .line 28545
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 29104
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29105
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 29106
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29107
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 29109
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAdomain(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27347
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27349
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureAdomainIsMutable()V

    .line 27350
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27351
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setAudit(Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28658
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28659
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 28660
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28662
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAudit(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28641
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28643
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28645
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 28646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28648
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setBundle(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27498
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27500
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureBundleIsMutable()V

    .line 27501
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setCat(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27749
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27751
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureCatIsMutable()V

    .line 27752
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setCattax(Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27879
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27882
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    .line 27883
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27850
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    .line 27851
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setDisplay(Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28364
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28365
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 28366
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28368
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDisplay(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28343
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28347
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 28348
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28350
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28793
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28794
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28795
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28797
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28772
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28774
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28776
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28777
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28779
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28974
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28975
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 28976
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28977
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28979
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28953
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28955
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28957
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 28958
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28959
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28961
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27020
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27240
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 27241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27272
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22300(Lcom/explorestack/protobuf/ByteString;)V

    .line 27274
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 27275
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setInit(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 28168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28171
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 28172
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setInitBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 28201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28203
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22900(Lcom/explorestack/protobuf/ByteString;)V

    .line 28205
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 28206
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setIurl(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27637
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27640
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 27641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setIurlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27672
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27674
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22600(Lcom/explorestack/protobuf/ByteString;)V

    .line 27676
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 27677
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setLang(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27955
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27958
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 27959
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setLangBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27988
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27990
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22800(Lcom/explorestack/protobuf/ByteString;)V

    .line 27992
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 27993
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setLastmod(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 28264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28267
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 28268
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setLastmodBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 28297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28299
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$23000(Lcom/explorestack/protobuf/ByteString;)V

    .line 28301
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 28302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setMrating(Lcom/explorestack/protobuf/adcom/MediaRating;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 28092
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28095
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/MediaRating;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    .line 28096
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public setMratingValue(I)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 28063
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    .line 28064
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27036
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public setSecure(Z)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 28021
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->secure_:Z

    .line 28022
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 26841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 29204
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public setVideo(Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28519
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28520
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 28521
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28523
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setVideo(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 28498
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28502
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 28503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 28505
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method
