.class public final Lcom/explorestack/protobuf/adcom/Context$User;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Context.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$UserOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$User$Builder;
    }
.end annotation


# static fields
.field public static final BUYERUID_FIELD_NUMBER:I = 0x2

.field public static final CONSENT_FIELD_NUMBER:I = 0x6

.field public static final DATA_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

.field public static final EXT_FIELD_NUMBER:I = 0xa

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x9

.field public static final GENDER_FIELD_NUMBER:I = 0x4

.field public static final GEO_FIELD_NUMBER:I = 0x7

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final KEYWORDS_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$User;",
            ">;"
        }
    .end annotation
.end field

.field public static final YOB_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile buyeruid_:Ljava/lang/Object;

.field private volatile consent_:Ljava/lang/Object;

.field private data_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data;",
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

.field private volatile gender_:Ljava/lang/Object;

.field private geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

.field private volatile id_:Ljava/lang/Object;

.field private volatile keywords_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private yob_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32980
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$User;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$User;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

    .line 32988
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$User$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$User$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30347
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 30946
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedIsInitialized:B

    .line 30348
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    .line 30349
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    .line 30350
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    .line 30351
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    .line 30352
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    .line 30353
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    .line 30354
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30373
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$User;-><init>()V

    .line 30375
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30379
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 30383
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 30468
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/adcom/Context$User;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 30456
    :sswitch_0
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_1

    .line 30457
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 30459
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Struct;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 30461
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 30462
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 30447
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 30450
    :cond_2
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    .line 30451
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 30450
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_3

    .line 30438
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 30441
    :cond_3
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    .line 30442
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 30441
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30425
    :sswitch_3
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v3, :cond_4

    .line 30426
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Context$Geo;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v4

    .line 30428
    :cond_4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Context$Geo;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v4, :cond_0

    .line 30430
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 30431
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto/16 :goto_0

    .line 30418
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 30420
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 30412
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 30414
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 30406
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 30408
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 30402
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->yob_:I

    goto/16 :goto_0

    .line 30395
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 30397
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 30389
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 30391
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_a
    move v1, v5

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 30479
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 30480
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 30477
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_5

    .line 30483
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    :cond_5
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_6

    .line 30486
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    .line 30488
    :cond_6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 30489
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->makeExtensionsImmutable()V

    .line 30490
    throw p1

    :cond_7
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_8

    .line 30483
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    :cond_8
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_9

    .line 30486
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    .line 30488
    :cond_9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 30489
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x18 -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30338
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$User;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 30345
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 30946
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 30338
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$User;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$26600()Z
    .locals 1

    .line 30338
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$User;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$26800(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/lang/Object;
    .locals 0

    .line 30338
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$26802(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30338
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26900(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/lang/Object;
    .locals 0

    .line 30338
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$26902(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30338
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27002(Lcom/explorestack/protobuf/adcom/Context$User;I)I
    .locals 0

    .line 30338
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->yob_:I

    return p1
.end method

.method static synthetic access$27100(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/lang/Object;
    .locals 0

    .line 30338
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$27102(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30338
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27200(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/lang/Object;
    .locals 0

    .line 30338
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$27202(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30338
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27300(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/lang/Object;
    .locals 0

    .line 30338
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$27302(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30338
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27402(Lcom/explorestack/protobuf/adcom/Context$User;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 0

    .line 30338
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p1
.end method

.method static synthetic access$27500(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/util/List;
    .locals 0

    .line 30338
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$27502(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 30338
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$27602(Lcom/explorestack/protobuf/adcom/Context$User;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 30338
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$27700(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/util/List;
    .locals 0

    .line 30338
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$27702(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 30338
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$27800()Z
    .locals 1

    .line 30338
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$User;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$27900()Z
    .locals 1

    .line 30338
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$User;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$28000(Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 30338
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$28100()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 30338
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$28200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 30338
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$28300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 30338
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$28400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 30338
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$28500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 30338
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$28600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 30338
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1

    .line 32984
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 30494
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_User_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;
    .locals 1

    .line 31192
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$User;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;
    .locals 1

    .line 31195
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$User;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31165
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 31166
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31172
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 31173
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31133
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31139
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31178
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 31179
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31185
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 31186
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31153
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 31154
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31160
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 31161
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31122
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31128
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31143
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31149
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$User;",
            ">;"
        }
    .end annotation

    .line 32999
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 31044
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$User;

    if-nez v1, :cond_1

    .line 31045
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 31047
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$User;

    .line 31049
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getId()Ljava/lang/String;

    move-result-object v1

    .line 31050
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 31051
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getBuyeruid()Ljava/lang/String;

    move-result-object v1

    .line 31052
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getBuyeruid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 31053
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getYob()I

    move-result v1

    .line 31054
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getYob()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 31055
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 31056
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getGender()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 31057
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getKeywords()Ljava/lang/String;

    move-result-object v1

    .line 31058
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getKeywords()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 31059
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getConsent()Ljava/lang/String;

    move-result-object v1

    .line 31060
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getConsent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 31061
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->hasGeo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->hasGeo()Z

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 31062
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->hasGeo()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31063
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    .line 31064
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$Geo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 31066
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getDataList()Ljava/util/List;

    move-result-object v1

    .line 31067
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getDataList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 31068
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 31069
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 31070
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 31071
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 31073
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 31074
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 31075
    :cond_d
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public getBuyeruid()Ljava/lang/String;
    .locals 2

    .line 30563
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    .line 30564
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30565
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 30567
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 30569
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 30570
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBuyeruidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 30585
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    .line 30586
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30587
    check-cast v0, Ljava/lang/String;

    .line 30588
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 30590
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    return-object v0

    .line 30593
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getConsent()Ljava/lang/String;
    .locals 2

    .line 30716
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    .line 30717
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30718
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 30720
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 30722
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 30723
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    return-object v0
.end method

.method public getConsentBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 30738
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    .line 30739
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30740
    check-cast v0, Ljava/lang/String;

    .line 30741
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 30743
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    return-object v0

    .line 30746
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getData(I)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1

    .line 30833
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p1
.end method

.method public getDataCount()I
    .locals 1

    .line 30822
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data;",
            ">;"
        }
    .end annotation

    .line 30799
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    return-object v0
.end method

.method public getDataOrBuilder(I)Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;
    .locals 1

    .line 30845
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;

    return-object p1
.end method

.method public getDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 30811
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 30338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 30338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$User;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1

    .line 33009
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 30872
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 30883
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 30931
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 30920
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

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

    .line 30897
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 30943
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

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

    .line 30909
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 2

    .line 30624
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    .line 30625
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30626
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 30628
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 30630
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 30631
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    return-object v0
.end method

.method public getGenderBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 30646
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    .line 30647
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30648
    check-cast v0, Ljava/lang/String;

    .line 30649
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 30651
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    return-object v0

    .line 30654
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 30774
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .locals 1

    .line 30785
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 30517
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    .line 30518
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30519
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 30521
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 30523
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 30524
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 30539
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    .line 30540
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30541
    check-cast v0, Ljava/lang/String;

    .line 30542
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 30544
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    return-object v0

    .line 30547
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 2

    .line 30670
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    .line 30671
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30672
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 30674
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 30676
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 30677
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    return-object v0
.end method

.method public getKeywordsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 30692
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    .line 30693
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30694
    check-cast v0, Ljava/lang/String;

    .line 30695
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 30697
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    return-object v0

    .line 30700
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
            "Lcom/explorestack/protobuf/adcom/Context$User;",
            ">;"
        }
    .end annotation

    .line 33004
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 30995
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 30999
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 31000
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 31002
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getBuyeruidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 31003
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31005
    :cond_2
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->yob_:I

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 31007
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 31009
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGenderBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 31010
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31012
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getKeywordsBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    .line 31013
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31015
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getConsentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x6

    .line 31016
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31018
    :cond_6
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    .line 31020
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    move v2, v1

    .line 31022
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 31023
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    .line 31024
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    const/16 v4, 0x8

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 31026
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 31027
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    .line 31028
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/16 v3, 0x9

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 31030
    :cond_9
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 31032
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31034
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 31035
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 30367
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getYob()I
    .locals 1

    .line 30609
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->yob_:I

    return v0
.end method

.method public hasExt()Z
    .locals 1

    .line 30860
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGeo()Z
    .locals 1

    .line 30762
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

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

    .line 31081
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 31082
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedHashCode:I

    return v0

    .line 31085
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$User;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 31087
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 31089
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getBuyeruid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 31091
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getYob()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 31093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 31095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 31097
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getConsent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 31098
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 31100
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 31102
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getDataCount()I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 31104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 31106
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 31108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 31110
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExtProtoCount()I

    move-result v0

    if-lez v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 31112
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExtProtoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    mul-int/lit8 v1, v1, 0x1d

    .line 31114
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 31115
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 30500
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_User_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$User;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 30501
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 30949
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 30953
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 30338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 30338
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$User;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 30338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$User$Builder;
    .locals 1

    .line 31190
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$User;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;
    .locals 2

    .line 31206
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 30361
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$User;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$User;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 30338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 30338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;
    .locals 2

    .line 31199
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 31200
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

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

    .line 30960
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30961
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 30963
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getBuyeruidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 30964
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 30966
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->yob_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 30967
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 30969
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGenderBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 30970
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 30972
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getKeywordsBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 30973
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 30975
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getConsentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 30976
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 30978
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 30979
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 30981
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 30982
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30984
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 30985
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30987
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 30988
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 30990
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
