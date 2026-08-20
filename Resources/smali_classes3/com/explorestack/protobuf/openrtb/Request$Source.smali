.class public final Lcom/explorestack/protobuf/openrtb/Request$Source;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Request.java"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    }
.end annotation


# static fields
.field public static final CERT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

.field public static final DIGEST_FIELD_NUMBER:I = 0x4

.field public static final DSGVER_FIELD_NUMBER:I = 0x3

.field public static final DS_FIELD_NUMBER:I = 0x2

.field public static final EXT_FIELD_NUMBER:I = 0x8

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Source;",
            ">;"
        }
    .end annotation
.end field

.field public static final PCHAIN_FIELD_NUMBER:I = 0x6

.field public static final TID_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile cert_:Ljava/lang/Object;

.field private volatile digest_:Ljava/lang/Object;

.field private volatile ds_:Ljava/lang/Object;

.field private dsgver_:I

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

.field private memoizedIsInitialized:B

.field private volatile pchain_:Ljava/lang/Object;

.field private volatile tid_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2527
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 2535
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Source$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 455
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 961
    iput-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedIsInitialized:B

    .line 456
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    .line 457
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    .line 458
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    .line 459
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    .line 460
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    .line 461
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 480
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;-><init>()V

    .line 482
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_d

    .line 490
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v5, 0xa

    if-eq v4, v5, :cond_a

    const/16 v5, 0x12

    if-eq v4, v5, :cond_9

    const/16 v5, 0x18

    if-eq v4, v5, :cond_8

    const/16 v5, 0x22

    if-eq v4, v5, :cond_7

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_6

    const/16 v5, 0x32

    if-eq v4, v5, :cond_5

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x42

    if-eq v4, v5, :cond_1

    .line 553
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/openrtb/Request$Source;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 541
    :cond_1
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_2

    .line 542
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 544
    :goto_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 546
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 547
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_4

    .line 532
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    move v2, v3

    .line 535
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    .line 536
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 535
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 527
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    goto :goto_0

    .line 519
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 521
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    goto :goto_0

    .line 513
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 515
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 509
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->dsgver_:I

    goto/16 :goto_0

    .line 502
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 504
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 496
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 498
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_2
    move v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 564
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 565
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 562
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_c

    .line 568
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    .line 570
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->makeExtensionsImmutable()V

    .line 572
    throw p1

    :cond_d
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_e

    .line 568
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    .line 570
    :cond_e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 446
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 453
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 961
    iput-byte p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 446
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/explorestack/protobuf/openrtb/Request$Source;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 446
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 446
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 446
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 446
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 446
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 446
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 446
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 446
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/explorestack/protobuf/openrtb/Request$Source;I)I
    .locals 0

    .line 446
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->dsgver_:I

    return p1
.end method

.method static synthetic access$700(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1

    .line 2531
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 576
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Source_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1178
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1181
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1151
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1152
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1158
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1159
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1119
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1125
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1165
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1171
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1172
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1139
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1140
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1147
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1108
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1114
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1129
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1135
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Source;",
            ">;"
        }
    .end annotation

    .line 2546
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1045
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-nez v1, :cond_1

    .line 1046
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1048
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 1050
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTid()Ljava/lang/String;

    move-result-object v1

    .line 1051
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1052
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDs()Ljava/lang/String;

    move-result-object v1

    .line 1053
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1054
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsgver()I

    move-result v1

    .line 1055
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsgver()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 1056
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigest()Ljava/lang/String;

    move-result-object v1

    .line 1057
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1058
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCert()Ljava/lang/String;

    move-result-object v1

    .line 1059
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 1060
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchain()Ljava/lang/String;

    move-result-object v1

    .line 1061
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 1062
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 1063
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1064
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 1065
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 1067
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 1068
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 1069
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public getCert()Ljava/lang/String;
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    .line 776
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 777
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 779
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 781
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 782
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCertBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    .line 800
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 801
    check-cast v0, Ljava/lang/String;

    .line 802
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 804
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    return-object v0

    .line 807
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1

    .line 2556
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object v0
.end method

.method public getDigest()Ljava/lang/String;
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    .line 727
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 728
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 730
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 732
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 733
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDigestBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    .line 750
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 751
    check-cast v0, Ljava/lang/String;

    .line 752
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 754
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    return-object v0

    .line 757
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDs()Ljava/lang/String;
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    .line 659
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 660
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 662
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 664
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 665
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    .line 686
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 687
    check-cast v0, Ljava/lang/String;

    .line 688
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 690
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    return-object v0

    .line 693
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDsgver()I
    .locals 1

    .line 710
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->dsgver_:I

    return v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 898
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

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

    .line 912
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

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

    .line 924
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Source;",
            ">;"
        }
    .end annotation

    .line 2551
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPchain()Ljava/lang/String;
    .locals 2

    .line 826
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    .line 827
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 828
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 830
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 832
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 833
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPchainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    .line 852
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 853
    check-cast v0, Ljava/lang/String;

    .line 854
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 856
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    return-object v0

    .line 859
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1004
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1008
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1011
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 1012
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1014
    :cond_2
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->dsgver_:I

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 1016
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1018
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigestBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 1019
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1021
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCertBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    .line 1022
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1024
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchainBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x6

    .line 1025
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1027
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 1028
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    .line 1029
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1031
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 1033
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1035
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1036
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedSize:I

    return v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    .line 604
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 605
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 607
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 609
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 610
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    .line 630
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 631
    check-cast v0, Ljava/lang/String;

    .line 632
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 634
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    return-object v0

    .line 637
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 1075
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1076
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedHashCode:I

    return v0

    .line 1079
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1081
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1085
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsgver()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1087
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1089
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCert()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1091
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1092
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 1094
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1096
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExtProtoCount()I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 1098
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExtProtoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    mul-int/lit8 v1, v1, 0x1d

    .line 1100
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1101
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 582
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Source_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    .line 583
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 964
    iget-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 968
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1176
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 2

    .line 1192
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 468
    new-instance p1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-direct {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 2

    .line 1185
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1186
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 975
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 978
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 979
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 981
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->dsgver_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 982
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 984
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigestBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 985
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 987
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCertBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 988
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 990
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchainBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 991
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_5
    const/4 v0, 0x0

    .line 993
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 994
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 997
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 999
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
