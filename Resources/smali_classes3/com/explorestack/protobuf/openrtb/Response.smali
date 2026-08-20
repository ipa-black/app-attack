.class public final Lcom/explorestack/protobuf/openrtb/Response;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Response.java"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/openrtb/Response$Builder;,
        Lcom/explorestack/protobuf/openrtb/Response$Seatbid;,
        Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;
    }
.end annotation


# static fields
.field public static final BIDID_FIELD_NUMBER:I = 0x2

.field public static final CDATA_FIELD_NUMBER:I = 0x5

.field public static final CUR_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response;

.field public static final EXT_FIELD_NUMBER:I = 0x8

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x7

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final NBR_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEATBID_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private volatile bidid_:Ljava/lang/Object;

.field private volatile cdata_:Ljava/lang/Object;

.field private volatile cur_:Ljava/lang/Object;

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

.field private nbr_:I

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
.method static constructor <clinit>()V
    .locals 1

    .line 9807
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Response;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Response;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response;

    .line 9815
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Response$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 8011
    iput-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->memoizedIsInitialized:B

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->id_:Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->bidid_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 31
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response;->nbr_:I

    .line 32
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->cur_:Ljava/lang/Object;

    .line 33
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->cdata_:Ljava/lang/Object;

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response;-><init>()V

    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_f

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    const/16 v5, 0xa

    if-eq v3, v5, :cond_b

    const/16 v5, 0x12

    if-eq v3, v5, :cond_a

    const/16 v5, 0x18

    if-eq v3, v5, :cond_9

    const/16 v5, 0x22

    if-eq v3, v5, :cond_8

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_7

    const/16 v5, 0x32

    if-eq v3, v5, :cond_5

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_3

    const/16 v5, 0x42

    if-eq v3, v5, :cond_1

    .line 131
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/openrtb/Response;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_2

    .line 120
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 122
    :goto_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 125
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_4

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 113
    :cond_4
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    .line 114
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 113
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_6

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 104
    :cond_6
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    .line 105
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 104
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 94
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 96
    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->cdata_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 88
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 90
    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->cur_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 82
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 84
    iput v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->nbr_:I

    goto/16 :goto_0

    .line 76
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 78
    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->bidid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 70
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 72
    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    :goto_2
    move v1, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 142
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 143
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 140
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_d

    .line 146
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_e

    .line 149
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    .line 151
    :cond_e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->makeExtensionsImmutable()V

    .line 153
    throw p1

    :cond_f
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_10

    .line 146
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    :cond_10
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_11

    .line 149
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    .line 151
    :cond_11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 26
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 8011
    iput-byte p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$6400()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Response;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6602(Lcom/explorestack/protobuf/openrtb/Response;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response;->bidid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6702(Lcom/explorestack/protobuf/openrtb/Response;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->bidid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/explorestack/protobuf/openrtb/Response;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/explorestack/protobuf/openrtb/Response;->nbr_:I

    return p0
.end method

.method static synthetic access$6802(Lcom/explorestack/protobuf/openrtb/Response;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->nbr_:I

    return p1
.end method

.method static synthetic access$6900(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response;->cur_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6902(Lcom/explorestack/protobuf/openrtb/Response;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->cur_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7000(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response;->cdata_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7002(Lcom/explorestack/protobuf/openrtb/Response;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->cdata_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$7102(Lcom/explorestack/protobuf/openrtb/Response;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/explorestack/protobuf/openrtb/Response;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$7302(Lcom/explorestack/protobuf/openrtb/Response;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7400()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Response;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7500()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Response;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$7700()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 19
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1

    .line 9811
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 157
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8230
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8233
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8203
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 8204
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8210
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 8211
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8171
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8177
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8216
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 8217
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8223
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 8224
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8191
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 8192
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8198
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 8199
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8160
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8166
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8181
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8187
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            ">;"
        }
    .end annotation

    .line 9826
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 8096
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/openrtb/Response;

    if-nez v1, :cond_1

    .line 8097
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8099
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response;

    .line 8101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getId()Ljava/lang/String;

    move-result-object v1

    .line 8102
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 8103
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getBidid()Ljava/lang/String;

    move-result-object v1

    .line 8104
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getBidid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8105
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response;->nbr_:I

    iget v3, p1, Lcom/explorestack/protobuf/openrtb/Response;->nbr_:I

    if-eq v1, v3, :cond_4

    return v2

    .line 8106
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getCur()Ljava/lang/String;

    move-result-object v1

    .line 8107
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getCur()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 8108
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getCdata()Ljava/lang/String;

    move-result-object v1

    .line 8109
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getCdata()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 8110
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getSeatbidList()Ljava/util/List;

    move-result-object v1

    .line 8111
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getSeatbidList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 8112
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 8113
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8114
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 8115
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 8117
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 8118
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 8119
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/openrtb/Response;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public getBidid()Ljava/lang/String;
    .locals 2

    .line 7696
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->bidid_:Ljava/lang/Object;

    .line 7697
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7698
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7700
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7702
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7703
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->bidid_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBididBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7718
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->bidid_:Ljava/lang/Object;

    .line 7719
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7720
    check-cast v0, Ljava/lang/String;

    .line 7721
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7723
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->bidid_:Ljava/lang/Object;

    return-object v0

    .line 7726
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCdata()Ljava/lang/String;
    .locals 2

    .line 7818
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->cdata_:Ljava/lang/Object;

    .line 7819
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7820
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7822
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7824
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7825
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->cdata_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCdataBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7841
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->cdata_:Ljava/lang/Object;

    .line 7842
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7843
    check-cast v0, Ljava/lang/String;

    .line 7844
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7846
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->cdata_:Ljava/lang/Object;

    return-object v0

    .line 7849
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCur()Ljava/lang/String;
    .locals 2

    .line 7770
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->cur_:Ljava/lang/Object;

    .line 7771
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7772
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7774
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7776
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7777
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->cur_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7793
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->cur_:Ljava/lang/Object;

    .line 7794
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7795
    check-cast v0, Ljava/lang/String;

    .line 7796
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7798
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->cur_:Ljava/lang/Object;

    return-object v0

    .line 7801
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1

    .line 9836
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 7937
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 7948
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 7996
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 7985
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

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

    .line 7962
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 8008
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

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

    .line 7974
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 7648
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->id_:Ljava/lang/Object;

    .line 7649
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7650
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7652
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7654
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7655
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7672
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->id_:Ljava/lang/Object;

    .line 7673
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7674
    check-cast v0, Ljava/lang/String;

    .line 7675
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7677
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->id_:Ljava/lang/Object;

    return-object v0

    .line 7680
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getNbr()Lcom/explorestack/protobuf/openrtb/NoBidReason;
    .locals 1

    .line 7753
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->nbr_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/NoBidReason;->valueOf(I)Lcom/explorestack/protobuf/openrtb/NoBidReason;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7754
    sget-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->UNRECOGNIZED:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    :cond_0
    return-object v0
.end method

.method public getNbrValue()I
    .locals 1

    .line 7741
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->nbr_:I

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            ">;"
        }
    .end annotation

    .line 9831
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSeatbid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1

    .line 7898
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p1
.end method

.method public getSeatbidCount()I
    .locals 1

    .line 7887
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    .line 7864
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    return-object v0
.end method

.method public getSeatbidOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;
    .locals 1

    .line 7910
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 7876
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 8054
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 8058
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 8059
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 8061
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getBididBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 8062
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->bidid_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8064
    :cond_2
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Response;->nbr_:I

    sget-object v3, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_INVALID:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/openrtb/NoBidReason;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_3

    const/4 v2, 0x3

    .line 8065
    iget v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->nbr_:I

    .line 8066
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8068
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getCurBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 8069
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->cur_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8071
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getCdataBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    .line 8072
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->cdata_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    move v2, v1

    .line 8074
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 8075
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    .line 8076
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8078
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 8079
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    .line 8080
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8082
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 8084
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8086
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 8087
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 7925
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 8125
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 8126
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->memoizedHashCode:I

    return v0

    .line 8129
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 8131
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 8133
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getBidid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 8135
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->nbr_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 8137
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getCur()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 8139
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getCdata()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 8140
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getSeatbidCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 8142
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getSeatbidList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 8144
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 8146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 8148
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getExtProtoCount()I

    move-result v0

    if-lez v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 8150
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getExtProtoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    .line 8152
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 8153
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 163
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Response;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 8014
    iget-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 8018
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/openrtb/Response;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8228
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->newBuilder()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 2

    .line 8244
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Response$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 42
    new-instance p1, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-direct {p1}, Lcom/explorestack/protobuf/openrtb/Response;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 2

    .line 8237
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 8238
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Response$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Response$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

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

    .line 8025
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8026
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 8028
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getBididBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 8029
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response;->bidid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 8031
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->nbr_:I

    sget-object v1, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_INVALID:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/openrtb/NoBidReason;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 8032
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response;->nbr_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8034
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getCurBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 8035
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response;->cur_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 8037
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getCdataBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 8038
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response;->cdata_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    .line 8040
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 8041
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Response;->seatbid_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8043
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 8044
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response;->extProto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8046
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 8047
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 8049
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
