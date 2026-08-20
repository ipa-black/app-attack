.class public final Lcom/explorestack/protobuf/adcom/Context$Data;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Context.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$Data$Builder;,
        Lcom/explorestack/protobuf/adcom/Context$Data$Segment;,
        Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

.field public static final EXT_FIELD_NUMBER:I = 0x5

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Data;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEGMENT_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
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

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private segment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18160
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Data;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

    .line 18168
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14615
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 16710
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedIsInitialized:B

    .line 14616
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    .line 14617
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    .line 14618
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    .line 14619
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14638
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;-><init>()V

    .line 14640
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14644
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 14648
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    const/16 v5, 0xa

    if-eq v3, v5, :cond_8

    const/16 v5, 0x12

    if-eq v3, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_5

    const/16 v5, 0x22

    if-eq v3, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_1

    .line 14697
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/adcom/Context$Data;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 14685
    :cond_1
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_2

    .line 14686
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 14688
    :goto_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_0

    .line 14690
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 14691
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_4

    .line 14676
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 14679
    :cond_4
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    .line 14680
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 14679
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_6

    .line 14667
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 14670
    :cond_6
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    .line 14671
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 14670
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14660
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 14662
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 14654
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 14656
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_2
    move v1, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 14708
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 14709
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 14706
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_a

    .line 14712
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_b

    .line 14715
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    .line 14717
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 14718
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->makeExtensionsImmutable()V

    .line 14719
    throw p1

    :cond_c
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_d

    .line 14712
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    :cond_d
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_e

    .line 14715
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    .line 14717
    :cond_e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 14718
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14606
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 14613
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 16710
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 14606
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$14300()Z
    .locals 1

    .line 14606
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Data;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$14500(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/lang/Object;
    .locals 0

    .line 14606
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14502(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14606
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14600(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/lang/Object;
    .locals 0

    .line 14606
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14602(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14606
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;
    .locals 0

    .line 14606
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$14702(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14606
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14802(Lcom/explorestack/protobuf/adcom/Context$Data;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 14606
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;
    .locals 0

    .line 14606
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$14902(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14606
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15000()Z
    .locals 1

    .line 14606
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Data;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15100()Z
    .locals 1

    .line 14606
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Data;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15200(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 14606
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$15300()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 14606
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$15400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14606
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14606
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1

    .line 18164
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14723
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16899
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16902
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16872
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 16873
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16879
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 16880
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16840
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16846
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16885
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 16886
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16892
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 16893
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16860
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 16861
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16867
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 16868
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16829
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16835
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16850
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16856
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Data;",
            ">;"
        }
    .end annotation

    .line 18179
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 16776
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$Data;

    if-nez v1, :cond_1

    .line 16777
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 16779
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data;

    .line 16781
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getId()Ljava/lang/String;

    move-result-object v1

    .line 16782
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 16783
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getName()Ljava/lang/String;

    move-result-object v1

    .line 16784
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 16785
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getSegmentList()Ljava/util/List;

    move-result-object v1

    .line 16786
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getSegmentList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 16787
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 16788
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16789
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 16790
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 16792
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 16793
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 16794
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 14606
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 14606
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1

    .line 18189
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 16636
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 16647
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 16695
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 16684
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    .line 16661
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 16707
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 16673
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 16472
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    .line 16473
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16474
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 16476
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 16478
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 16479
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 16494
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    .line 16495
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16496
    check-cast v0, Ljava/lang/String;

    .line 16497
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 16499
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    return-object v0

    .line 16502
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 16518
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    .line 16519
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16520
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 16522
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 16524
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 16525
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 16540
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    .line 16541
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16542
    check-cast v0, Ljava/lang/String;

    .line 16543
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 16545
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    return-object v0

    .line 16548
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Data;",
            ">;"
        }
    .end annotation

    .line 18184
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSegment(I)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1

    .line 16597
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p1
.end method

.method public getSegmentCount()I
    .locals 1

    .line 16586
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSegmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation

    .line 16563
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    return-object v0
.end method

.method public getSegmentOrBuilder(I)Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;
    .locals 1

    .line 16609
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;

    return-object p1
.end method

.method public getSegmentOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16575
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 16744
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 16748
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 16749
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 16751
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 16752
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    move v2, v1

    .line 16754
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 16755
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    .line 16756
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16758
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 16759
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    .line 16760
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16762
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 16764
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16766
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 16767
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 14632
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 16624
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 16800
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 16801
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedHashCode:I

    return v0

    .line 16804
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 16806
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 16808
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 16809
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getSegmentCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 16811
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getSegmentList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 16813
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 16815
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 16817
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExtProtoCount()I

    move-result v0

    if-lez v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 16819
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExtProtoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    .line 16821
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 16822
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 14729
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Data;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    .line 14730
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 16713
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 16717
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14606
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14606
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14606
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16897
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 2

    .line 16913
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 14626
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$Data;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14606
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14606
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 2

    .line 16906
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 16907
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16724
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16725
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 16727
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 16728
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 16730
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 16731
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16733
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 16734
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16736
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 16737
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 16739
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
