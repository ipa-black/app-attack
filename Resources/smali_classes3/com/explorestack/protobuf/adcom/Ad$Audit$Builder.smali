.class public final Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Ad.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad$Audit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;",
            "Lcom/explorestack/protobuf/adcom/AdOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private corr_:Lcom/explorestack/protobuf/adcom/Ad;

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

.field private feedback_:Lcom/explorestack/protobuf/LazyStringList;

.field private init_:Ljava/lang/Object;

.field private lastmod_:Ljava/lang/Object;

.field private status_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24493
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 24722
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    .line 24796
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    .line 24951
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 25047
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 25463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 24494
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 24499
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 24722
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    .line 24796
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    .line 24951
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 25047
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 25463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 24500
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 24475
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 24475
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 25465
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 25466
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 25467
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureFeedbackIsMutable()V
    .locals 2

    .line 24798
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 24799
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    .line 24800
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getCorrFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;",
            "Lcom/explorestack/protobuf/adcom/AdOrBuilder;",
            ">;"
        }
    .end annotation

    .line 25296
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25297
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 25299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getCorr()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v1

    .line 25300
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 25301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 25302
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 25304
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 24481
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Audit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 25451
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25452
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 25454
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 25455
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 25456
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 25457
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25459
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 25762
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 25763
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 25767
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 25768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 25769
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 25771
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 24504
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24505
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;"
        }
    .end annotation

    .line 25641
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25642
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 25643
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 25645
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25647
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllFeedback(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;"
        }
    .end annotation

    .line 24908
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureFeedbackIsMutable()V

    .line 24909
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 24911
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25623
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25624
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 25625
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25626
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25628
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25584
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25586
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25588
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 25589
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25590
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25592
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25605
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25606
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 25607
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25608
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25610
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25563
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25565
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25567
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 25568
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25569
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25571
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 25733
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 25734
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 25733
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 25745
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 25746
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 25745
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public addFeedback(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24889
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24891
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureFeedbackIsMutable()V

    .line 24892
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 24893
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public addFeedbackBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24942
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24944
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19600(Lcom/explorestack/protobuf/ByteString;)V

    .line 24945
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureFeedbackIsMutable()V

    .line 24946
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 24947
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 24625
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 2

    .line 24553
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    .line 24554
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 24555
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 2

    .line 24562
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 24564
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18602(Lcom/explorestack/protobuf/adcom/Ad$Audit;I)I

    .line 24565
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 24566
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    .line 24567
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    .line 24569
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18702(Lcom/explorestack/protobuf/adcom/Ad$Audit;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 24570
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18802(Lcom/explorestack/protobuf/adcom/Ad$Audit;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24571
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18902(Lcom/explorestack/protobuf/adcom/Ad$Audit;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24572
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 24573
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19002(Lcom/explorestack/protobuf/adcom/Ad$Audit;Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_0

    .line 24575
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19002(Lcom/explorestack/protobuf/adcom/Ad$Audit;Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad;

    .line 24577
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 24578
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19102(Lcom/explorestack/protobuf/adcom/Ad$Audit;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 24580
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19102(Lcom/explorestack/protobuf/adcom/Ad$Audit;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 24582
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 24583
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 24584
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 24585
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    .line 24587
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19202(Lcom/explorestack/protobuf/adcom/Ad$Audit;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 24589
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19202(Lcom/explorestack/protobuf/adcom/Ad$Audit;Ljava/util/List;)Ljava/util/List;

    .line 24591
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 2

    .line 24510
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 24511
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    .line 24513
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    .line 24514
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    .line 24515
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 24517
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 24519
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 24520
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_0

    .line 24522
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 24523
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 24525
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24526
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 24528
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24529
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 24531
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 24532
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 24533
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    goto :goto_2

    .line 24535
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_2
    return-object p0
.end method

.method public clearCorr()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 2

    .line 25246
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 25247
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 25248
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25250
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 25251
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 2

    .line 25404
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 25405
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25406
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25408
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25409
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25659
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25660
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 25661
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    .line 25662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25664
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearFeedback()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24924
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    .line 24925
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    .line 24926
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 24608
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method

.method public clearInit()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25022
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getInit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 25023
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLastmod()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25118
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getLastmod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 25119
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 24613
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method

.method public clearStatus()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 24791
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    .line 24792
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24597
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCorr()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1

    .line 25168
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 25169
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    :cond_0
    return-object v0

    .line 25171
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object v0
.end method

.method public getCorrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 25266
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    .line 25267
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getCorrFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object v0
.end method

.method public getCorrOrBuilder()Lcom/explorestack/protobuf/adcom/AdOrBuilder;
    .locals 1

    .line 25278
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 25279
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/AdOrBuilder;

    return-object v0

    .line 25281
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    if-nez v0, :cond_1

    .line 25282
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1

    .line 24548
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 24543
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Audit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 25330
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 25331
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 25333
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 25423
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    .line 25424
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 25434
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 25435
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 25437
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 25438
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 25510
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25511
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 25513
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 25694
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 25757
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 25496
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25497
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 25499
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

    .line 25482
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25483
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 25485
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 25705
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25706
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 25707
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

    .line 25719
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 25720
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 25722
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeedback(I)Ljava/lang/String;
    .locals 1

    .line 24839
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getFeedbackBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 24853
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getFeedbackCount()I
    .locals 1

    .line 24826
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getFeedbackList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 24814
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFeedbackList()Ljava/util/List;
    .locals 1

    .line 24475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getFeedbackList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getInit()Ljava/lang/String;
    .locals 2

    .line 24961
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 24962
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 24963
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 24965
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 24966
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    return-object v0

    .line 24969
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInitBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 24982
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 24983
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24984
    check-cast v0, Ljava/lang/String;

    .line 24985
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 24987
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    return-object v0

    .line 24990
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getLastmod()Ljava/lang/String;
    .locals 2

    .line 25057
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 25058
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 25059
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 25061
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 25062
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    return-object v0

    .line 25065
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastmodBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 25078
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 25079
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25080
    check-cast v0, Ljava/lang/String;

    .line 25081
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 25083
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    return-object v0

    .line 25086
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStatus()Lcom/explorestack/protobuf/adcom/AuditStatusCode;
    .locals 1

    .line 24760
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->valueOf(I)Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24761
    sget-object v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    :cond_0
    return-object v0
.end method

.method public getStatusValue()I
    .locals 1

    .line 24732
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    return v0
.end method

.method public hasCorr()Z
    .locals 1

    .line 25156
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

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

    .line 25319
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 24487
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Audit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 24488
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeCorr(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25223
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 25224
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v0, :cond_0

    .line 25226
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_0

    .line 25228
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 25230
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_1

    .line 25232
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25382
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 25383
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 25385
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 25387
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25389
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_1

    .line 25391
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

    .line 24475
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

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

    .line 24475
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

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

    .line 24475
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

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

    .line 24475
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 24709
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 24715
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24711
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Ad$Audit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24712
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

    .line 24715
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 24717
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24629
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-eqz v0, :cond_0

    .line 24630
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1

    .line 24632
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 2

    .line 24638
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 24639
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18600(Lcom/explorestack/protobuf/adcom/Ad$Audit;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 24640
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getStatusValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setStatusValue(I)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 24642
    :cond_1
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18700(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 24643
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24644
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18700(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    .line 24645
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    goto :goto_0

    .line 24647
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureFeedbackIsMutable()V

    .line 24648
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18700(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 24650
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    .line 24652
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getInit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 24653
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18800(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 24654
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    .line 24656
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getLastmod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 24657
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18900(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 24658
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    .line 24660
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->hasCorr()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24661
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getCorr()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeCorr(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 24663
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24664
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 24666
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    .line 24667
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19200(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 24668
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24669
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19200(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 24670
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    goto :goto_1

    .line 24672
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 24673
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19200(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24675
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_2

    .line 24678
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19200(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 24679
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24680
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 24681
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 24682
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19200(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 24683
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    .line 24685
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19300()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 24686
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 24688
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19200(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 24692
    :cond_c
    :goto_2
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19400(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 24693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 25782
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25676
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25677
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 25678
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 25679
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25681
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setCorr(Lcom/explorestack/protobuf/adcom/Ad$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25205
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25206
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 25207
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25209
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setCorr(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25183
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25187
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 25188
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25190
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25365
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25366
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25367
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25369
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25344
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25346
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25348
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25349
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25351
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25546
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25547
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 25548
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25549
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25551
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 25525
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25527
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25529
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 25530
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25531
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 25533
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFeedback(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24869
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24871
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureFeedbackIsMutable()V

    .line 24872
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24873
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 24603
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method

.method public setInit(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 25005
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25008
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 25009
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public setInitBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 25038
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25040
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19700(Lcom/explorestack/protobuf/ByteString;)V

    .line 25042
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 25043
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public setLastmod(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 25101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25104
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 25105
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public setLastmodBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 25134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25136
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19800(Lcom/explorestack/protobuf/ByteString;)V

    .line 25138
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 25139
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 24619
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method

.method public setStatus(Lcom/explorestack/protobuf/adcom/AuditStatusCode;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 24774
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24777
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    .line 24778
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public setStatusValue(I)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 24745
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    .line 24746
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 24475
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 25776
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method
