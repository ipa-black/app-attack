.class public final Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Context.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$App$Content$ProducerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$App$Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Producer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    }
.end annotation


# static fields
.field public static final CATTAX_FIELD_NUMBER:I = 0x5

.field public static final CAT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

.field public static final DOMAIN_FIELD_NUMBER:I = 0x3

.field public static final EXT_FIELD_NUMBER:I = 0x7

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x6

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private cat_:Lcom/explorestack/protobuf/LazyStringList;

.field private cattax_:I

.field private volatile domain_:Ljava/lang/Object;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6018
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    .line 6026
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4092
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 4543
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedIsInitialized:B

    .line 4093
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    .line 4094
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    .line 4095
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    .line 4096
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 4097
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    .line 4098
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4117
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;-><init>()V

    .line 4119
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4123
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_e

    .line 4127
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_b

    const/16 v5, 0xa

    if-eq v3, v5, :cond_a

    const/16 v5, 0x12

    if-eq v3, v5, :cond_9

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_8

    const/16 v5, 0x22

    if-eq v3, v5, :cond_6

    const/16 v5, 0x28

    if-eq v3, v5, :cond_5

    const/16 v5, 0x32

    if-eq v3, v5, :cond_3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    .line 4188
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 4176
    :cond_1
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_2

    .line 4177
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 4179
    :goto_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_0

    .line 4181
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 4182
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_4

    .line 4167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 4170
    :cond_4
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    .line 4171
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 4170
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4160
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 4162
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    goto :goto_0

    .line 4151
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_7

    .line 4153
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 4156
    :cond_7
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4145
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4147
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4139
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4141
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4133
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4135
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_2
    move v1, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 4199
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 4200
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 4197
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_c

    .line 4203
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_c
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_d

    .line 4206
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    .line 4208
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 4209
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->makeExtensionsImmutable()V

    .line 4210
    throw p1

    :cond_e
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_f

    .line 4203
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_f
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_10

    .line 4206
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    .line 4208
    :cond_10
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 4209
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4083
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 4090
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4543
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 4083
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$2100()Z
    .locals 1

    .line 4083
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/lang/Object;
    .locals 0

    .line 4083
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4083
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/lang/Object;
    .locals 0

    .line 4083
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4083
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/lang/Object;
    .locals 0

    .line 4083
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4083
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 4083
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 4083
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)I
    .locals 0

    .line 4083
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    return p0
.end method

.method static synthetic access$2702(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;I)I
    .locals 0

    .line 4083
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    return p1
.end method

.method static synthetic access$2802(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 4083
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;
    .locals 0

    .line 4083
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4083
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3000()Z
    .locals 1

    .line 4083
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 4083
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$3200()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 4083
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4083
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4083
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4083
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4083
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1

    .line 6022
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4214
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Content_Producer_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 4756
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 4759
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4729
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4730
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4736
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4737
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4697
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4703
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4742
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4743
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4749
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4750
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4717
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4718
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4724
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4725
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4686
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4692
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4707
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4713
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;",
            ">;"
        }
    .end annotation

    .line 6037
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4626
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    if-nez v1, :cond_1

    .line 4627
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4629
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    .line 4631
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4632
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 4633
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4634
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 4635
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 4636
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 4637
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 4638
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 4639
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    iget v3, p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    if-eq v1, v3, :cond_6

    return v2

    .line 4640
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 4641
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4642
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 4643
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 4645
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 4646
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 4647
    :cond_9
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getCat(I)Ljava/lang/String;
    .locals 1

    .line 4401
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 4415
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCatCount()I
    .locals 1

    .line 4388
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 4376
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getCatList()Ljava/util/List;
    .locals 1

    .line 4083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 4441
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4442
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public getCattaxValue()I
    .locals 1

    .line 4429
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 4083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 4083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1

    .line 6047
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .line 4329
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    .line 4330
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4331
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4333
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4335
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4336
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDomainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4351
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    .line 4352
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4353
    check-cast v0, Ljava/lang/String;

    .line 4354
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4356
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    return-object v0

    .line 4359
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 4469
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 4480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 4528
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 4517
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

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

    .line 4494
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 4540
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

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

    .line 4506
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 4237
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    .line 4238
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4239
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4241
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4243
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4244
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4259
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    .line 4260
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4261
    check-cast v0, Ljava/lang/String;

    .line 4262
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4264
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    return-object v0

    .line 4267
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 4283
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    .line 4284
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4285
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4287
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4289
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4290
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4305
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    .line 4306
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4307
    check-cast v0, Ljava/lang/String;

    .line 4308
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4310
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    return-object v0

    .line 4313
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
            "Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;",
            ">;"
        }
    .end annotation

    .line 6042
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 4583
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 4587
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4588
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4590
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 4591
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4593
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomainBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    .line 4594
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    move v2, v1

    move v3, v2

    .line 4598
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 4599
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v3

    .line 4602
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 4604
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    sget-object v3, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_5

    const/4 v2, 0x5

    .line 4605
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    .line 4606
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4608
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 4609
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    .line 4610
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4612
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 4614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4616
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4617
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 4111
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 4457
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 4653
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 4654
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedHashCode:I

    return v0

    .line 4657
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 4659
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 4661
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 4663
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4664
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCatCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 4666
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 4669
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    add-int/2addr v1, v0

    .line 4670
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 4672
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4674
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExtProtoCount()I

    move-result v0

    if-lez v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 4676
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExtProtoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    .line 4678
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4679
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 4220
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Content_Producer_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    .line 4221
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 4546
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 4550
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4083
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 4754
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 2

    .line 4770
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 4105
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 2

    .line 4763
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4764
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

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

    .line 4557
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4558
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4560
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4561
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4563
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomainBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 4564
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    .line 4566
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 4567
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4569
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x5

    .line 4570
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4572
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 4573
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4575
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 4576
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 4578
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
