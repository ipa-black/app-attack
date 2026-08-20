.class public final Lcom/explorestack/protobuf/adcom/Context$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Context.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/ContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/ContextOrBuilder;"
    }
.end annotation


# instance fields
.field private appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$App;",
            "Lcom/explorestack/protobuf/adcom/Context$App$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$AppOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private app_:Lcom/explorestack/protobuf/adcom/Context$App;

.field private bitField0_:I

.field private deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Device;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$DeviceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private device_:Lcom/explorestack/protobuf/adcom/Context$Device;

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

.field private regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Regs;",
            "Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$RegsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

.field private restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions;",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$RestrictionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

.field private userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$User;",
            "Lcom/explorestack/protobuf/adcom/Context$User$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$UserOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private user_:Lcom/explorestack/protobuf/adcom/Context$User;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 33576
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 34755
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    .line 33577
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 33582
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 34755
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    .line 33583
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 33558
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 33558
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 34757
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 34758
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    .line 34759
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAppFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$App;",
            "Lcom/explorestack/protobuf/adcom/Context$App$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$AppOrBuilder;",
            ">;"
        }
    .end annotation

    .line 33968
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33969
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 33971
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getApp()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v1

    .line 33972
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 33973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 33974
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

    .line 33976
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 33564
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getDeviceFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Device;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$DeviceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 34123
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34124
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 34126
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getDevice()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v1

    .line 34127
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 34128
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 34129
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

    .line 34131
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 34743
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34744
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 34746
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 34747
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 34748
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 34749
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 34751
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 35054
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 35055
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 35059
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 35060
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 35061
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    .line 35063
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getRegsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Regs;",
            "Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$RegsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 34278
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34279
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 34281
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getRegs()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v1

    .line 34282
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 34283
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 34284
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

    .line 34286
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getRestrictionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions;",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$RestrictionsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 34433
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34434
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 34436
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getRestrictions()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v1

    .line 34437
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 34438
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 34439
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 34441
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getUserFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$User;",
            "Lcom/explorestack/protobuf/adcom/Context$User$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$UserOrBuilder;",
            ">;"
        }
    .end annotation

    .line 34588
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34589
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 34591
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getUser()Lcom/explorestack/protobuf/adcom/Context$User;

    move-result-object v1

    .line 34592
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 34593
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 34594
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

    .line 34596
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 33587
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->access$29000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33588
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Builder;"
        }
    .end annotation

    .line 34933
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34934
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->ensureExtProtoIsMutable()V

    .line 34935
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 34937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34939
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34915
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34916
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->ensureExtProtoIsMutable()V

    .line 34917
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34918
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34920
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34876
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34878
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34880
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->ensureExtProtoIsMutable()V

    .line 34881
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34882
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34884
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34897
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34898
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->ensureExtProtoIsMutable()V

    .line 34899
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34900
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34902
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34855
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34857
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34859
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->ensureExtProtoIsMutable()V

    .line 34860
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34861
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34863
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 35025
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 35026
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 35025
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 35037
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 35038
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 35037
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 0

    .line 33736
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->build()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->build()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/adcom/Context;
    .locals 2

    .line 33652
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    .line 33653
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 33654
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/adcom/Context;
    .locals 2

    .line 33661
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 33663
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 33664
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29202(Lcom/explorestack/protobuf/adcom/Context;Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$App;

    goto :goto_0

    .line 33666
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$App;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29202(Lcom/explorestack/protobuf/adcom/Context;Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$App;

    .line 33668
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 33669
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29302(Lcom/explorestack/protobuf/adcom/Context;Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Device;

    goto :goto_1

    .line 33671
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$Device;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29302(Lcom/explorestack/protobuf/adcom/Context;Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Device;

    .line 33673
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 33674
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29402(Lcom/explorestack/protobuf/adcom/Context;Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Regs;

    goto :goto_2

    .line 33676
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$Regs;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29402(Lcom/explorestack/protobuf/adcom/Context;Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Regs;

    .line 33678
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 33679
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29502(Lcom/explorestack/protobuf/adcom/Context;Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    goto :goto_3

    .line 33681
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29502(Lcom/explorestack/protobuf/adcom/Context;Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 33683
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 33684
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29602(Lcom/explorestack/protobuf/adcom/Context;Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/adcom/Context$User;

    goto :goto_4

    .line 33686
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$User;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29602(Lcom/explorestack/protobuf/adcom/Context;Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/adcom/Context$User;

    .line 33688
    :goto_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 33689
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29702(Lcom/explorestack/protobuf/adcom/Context;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_5

    .line 33691
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29702(Lcom/explorestack/protobuf/adcom/Context;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 33693
    :goto_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_7

    .line 33694
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 33695
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    .line 33696
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    .line 33698
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29802(Lcom/explorestack/protobuf/adcom/Context;Ljava/util/List;)Ljava/util/List;

    goto :goto_6

    .line 33700
    :cond_7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context;->access$29802(Lcom/explorestack/protobuf/adcom/Context;Ljava/util/List;)Ljava/util/List;

    .line 33702
    :goto_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 2

    .line 33593
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 33594
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 33595
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

    goto :goto_0

    .line 33597
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

    .line 33598
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 33600
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 33601
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

    goto :goto_1

    .line 33603
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

    .line 33604
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 33606
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 33607
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

    goto :goto_2

    .line 33609
    :cond_2
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

    .line 33610
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 33612
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 33613
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    goto :goto_3

    .line 33615
    :cond_3
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 33616
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 33618
    :goto_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_4

    .line 33619
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

    goto :goto_4

    .line 33621
    :cond_4
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

    .line 33622
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 33624
    :goto_4
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_5

    .line 33625
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_5

    .line 33627
    :cond_5
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 33628
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 33630
    :goto_5
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_6

    .line 33631
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    .line 33632
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    goto :goto_6

    .line 33634
    :cond_6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_6
    return-object p0
.end method

.method public clearApp()Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 2

    .line 33921
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 33922
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

    .line 33923
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 33925
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

    .line 33926
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearDevice()Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 2

    .line 34076
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 34077
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

    .line 34078
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34080
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

    .line 34081
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 2

    .line 34696
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 34697
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 34698
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34700
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 34701
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34951
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34952
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    .line 34953
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    .line 34954
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34956
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 0

    .line 33719
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 0

    .line 33724
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Builder;

    return-object p1
.end method

.method public clearRegs()Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 2

    .line 34231
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 34232
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

    .line 34233
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34235
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

    .line 34236
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearRestrictions()Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 2

    .line 34386
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 34387
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 34388
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34390
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 34391
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearUser()Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 2

    .line 34541
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 34542
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

    .line 34543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34545
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

    .line 34546
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 33708
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApp()Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1

    .line 33847
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 33848
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    :cond_0
    return-object v0

    .line 33850
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App;

    return-object v0
.end method

.method public getAppBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 33940
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    .line 33941
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getAppFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-object v0
.end method

.method public getAppOrBuilder()Lcom/explorestack/protobuf/adcom/Context$AppOrBuilder;
    .locals 1

    .line 33951
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 33952
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$AppOrBuilder;

    return-object v0

    .line 33954
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

    if-nez v0, :cond_1

    .line 33955
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 33558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context;
    .locals 1

    .line 33647
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 33642
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDevice()Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1

    .line 34002
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 34003
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    :cond_0
    return-object v0

    .line 34005
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object v0
.end method

.method public getDeviceBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 34095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    .line 34096
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getDeviceFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    return-object v0
.end method

.method public getDeviceOrBuilder()Lcom/explorestack/protobuf/adcom/Context$DeviceOrBuilder;
    .locals 1

    .line 34106
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 34107
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$DeviceOrBuilder;

    return-object v0

    .line 34109
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

    if-nez v0, :cond_1

    .line 34110
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 34622
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 34623
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 34625
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 34715
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    .line 34716
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 34726
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 34727
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 34729
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 34730
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 34802
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34803
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 34805
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 34986
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 35049
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 34788
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34789
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 34791
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

    .line 34774
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34775
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 34777
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 34997
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34998
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 34999
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

    .line 35011
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 35012
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 35014
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRegs()Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1

    .line 34157
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 34158
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    :cond_0
    return-object v0

    .line 34160
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object v0
.end method

.method public getRegsBuilder()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 34250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    .line 34251
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getRegsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    return-object v0
.end method

.method public getRegsOrBuilder()Lcom/explorestack/protobuf/adcom/Context$RegsOrBuilder;
    .locals 1

    .line 34261
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 34262
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$RegsOrBuilder;

    return-object v0

    .line 34264
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

    if-nez v0, :cond_1

    .line 34265
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRestrictions()Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1

    .line 34312
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 34313
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    :cond_0
    return-object v0

    .line 34315
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    return-object v0
.end method

.method public getRestrictionsBuilder()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 34405
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    .line 34406
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getRestrictionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object v0
.end method

.method public getRestrictionsOrBuilder()Lcom/explorestack/protobuf/adcom/Context$RestrictionsOrBuilder;
    .locals 1

    .line 34416
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 34417
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$RestrictionsOrBuilder;

    return-object v0

    .line 34419
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    if-nez v0, :cond_1

    .line 34420
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getUser()Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1

    .line 34467
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 34468
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$User;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$User;

    move-result-object v0

    :cond_0
    return-object v0

    .line 34470
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object v0
.end method

.method public getUserBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;
    .locals 1

    .line 34560
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    .line 34561
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getUserFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    return-object v0
.end method

.method public getUserOrBuilder()Lcom/explorestack/protobuf/adcom/Context$UserOrBuilder;
    .locals 1

    .line 34571
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 34572
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$UserOrBuilder;

    return-object v0

    .line 34574
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

    if-nez v0, :cond_1

    .line 34575
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$User;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$User;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasApp()Z
    .locals 1

    .line 33836
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

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

.method public hasDevice()Z
    .locals 1

    .line 33991
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

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

    .line 34611
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public hasRegs()Z
    .locals 1

    .line 34146
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

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

.method public hasRestrictions()Z
    .locals 1

    .line 34301
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

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

.method public hasUser()Z
    .locals 1

    .line 34456
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

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

    .line 33570
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 33571
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeApp(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 33899
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 33900
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

    if-eqz v0, :cond_0

    .line 33902
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$App;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

    goto :goto_0

    .line 33904
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

    .line 33906
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_1

    .line 33908
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeDevice(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34054
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 34055
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

    if-eqz v0, :cond_0

    .line 34057
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

    goto :goto_0

    .line 34059
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

    .line 34061
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_1

    .line 34063
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34674
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 34675
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 34677
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 34679
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 34681
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_1

    .line 34683
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

    .line 33558
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Builder;

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

    .line 33558
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Builder;

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

    .line 33558
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Builder;

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

    .line 33558
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 33811
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->access$30100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 33817
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33813
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33814
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

    .line 33817
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 33819
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 33740
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_0

    .line 33741
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1

    .line 33743
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 2

    .line 33749
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 33750
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context;->hasApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33751
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context;->getApp()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeApp(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 33753
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context;->hasDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33754
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context;->getDevice()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeDevice(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 33756
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context;->hasRegs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33757
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context;->getRegs()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeRegs(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 33759
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context;->hasRestrictions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33760
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context;->getRestrictions()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeRestrictions(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 33762
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context;->hasUser()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33763
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context;->getUser()Lcom/explorestack/protobuf/adcom/Context$User;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeUser(Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 33765
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33766
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 33768
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_8

    .line 33769
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context;->access$29800(Lcom/explorestack/protobuf/adcom/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 33770
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33771
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context;->access$29800(Lcom/explorestack/protobuf/adcom/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    .line 33772
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    goto :goto_0

    .line 33774
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->ensureExtProtoIsMutable()V

    .line 33775
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context;->access$29800(Lcom/explorestack/protobuf/adcom/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33777
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_1

    .line 33780
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context;->access$29800(Lcom/explorestack/protobuf/adcom/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 33781
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33782
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 33783
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 33784
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context;->access$29800(Lcom/explorestack/protobuf/adcom/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    .line 33785
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->bitField0_:I

    .line 33787
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->access$29900()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 33788
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 33790
    :cond_a
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context;->access$29800(Lcom/explorestack/protobuf/adcom/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 33794
    :cond_b
    :goto_1
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context;->access$30000(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 33795
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeRegs(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34209
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 34210
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

    if-eqz v0, :cond_0

    .line 34212
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

    goto :goto_0

    .line 34214
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

    .line 34216
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_1

    .line 34218
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeRestrictions(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34364
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 34365
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    if-eqz v0, :cond_0

    .line 34367
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    goto :goto_0

    .line 34369
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 34371
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_1

    .line 34373
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 0

    .line 35074
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Builder;

    return-object p1
.end method

.method public mergeUser(Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34519
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 34520
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

    if-eqz v0, :cond_0

    .line 34522
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$User;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$User;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

    goto :goto_0

    .line 34524
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

    .line 34526
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_1

    .line 34528
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34968
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34969
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->ensureExtProtoIsMutable()V

    .line 34970
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34971
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34973
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setApp(Lcom/explorestack/protobuf/adcom/Context$App$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 33882
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33883
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

    .line 33884
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 33886
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setApp(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 33861
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33863
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33865
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->app_:Lcom/explorestack/protobuf/adcom/Context$App;

    .line 33866
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 33868
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDevice(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34037
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34038
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

    .line 34039
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34041
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDevice(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34016
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34018
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34020
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->device_:Lcom/explorestack/protobuf/adcom/Context$Device;

    .line 34021
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34023
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34657
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34658
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 34659
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34661
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34636
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34638
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34640
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 34641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34643
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34838
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34839
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->ensureExtProtoIsMutable()V

    .line 34840
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34843
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34817
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34819
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34821
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->ensureExtProtoIsMutable()V

    .line 34822
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34823
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34825
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 0

    .line 33714
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Builder;

    return-object p1
.end method

.method public setRegs(Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34192
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34193
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

    .line 34194
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34196
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRegs(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34171
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34175
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->regs_:Lcom/explorestack/protobuf/adcom/Context$Regs;

    .line 34176
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34178
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 0

    .line 33730
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Builder;

    return-object p1
.end method

.method public setRestrictions(Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34347
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34348
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 34349
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34351
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRestrictions(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34326
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34330
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->restrictions_:Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    .line 34331
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34333
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 33558
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 0

    .line 35068
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Builder;

    return-object p1
.end method

.method public setUser(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34502
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34503
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$User;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

    .line 34504
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34506
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$User;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setUser(Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 34481
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 34483
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34485
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Builder;->user_:Lcom/explorestack/protobuf/adcom/Context$User;

    .line 34486
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->onChanged()V

    goto :goto_0

    .line 34488
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method
