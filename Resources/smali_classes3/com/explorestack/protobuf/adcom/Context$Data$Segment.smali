.class public final Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Context.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

.field public static final EXT_FIELD_NUMBER:I = 0x5

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x3

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

.field private volatile value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16426
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    .line 16434
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14881
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 15230
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedIsInitialized:B

    .line 14882
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    .line 14883
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    .line 14884
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    .line 14885
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14904
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;-><init>()V

    .line 14906
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14910
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_a

    .line 14914
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v5, 0xa

    if-eq v4, v5, :cond_7

    const/16 v5, 0x12

    if-eq v4, v5, :cond_6

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x22

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    .line 14960
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 14948
    :cond_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_2

    .line 14949
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 14951
    :goto_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 14953
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 14954
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_4

    .line 14939
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    move v2, v3

    .line 14942
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    .line 14943
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 14942
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14932
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 14934
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 14926
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 14928
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 14920
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 14922
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_2
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 14971
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 14972
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 14969
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_9

    .line 14975
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    .line 14977
    :cond_9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 14978
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->makeExtensionsImmutable()V

    .line 14979
    throw p1

    :cond_a
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_b

    .line 14975
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    .line 14977
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 14978
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14872
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 14879
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 15230
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 14872
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$12700()Z
    .locals 1

    .line 14872
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$12900(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/lang/Object;
    .locals 0

    .line 14872
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$12902(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14872
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13000(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/lang/Object;
    .locals 0

    .line 14872
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$13002(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14872
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13100(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/lang/Object;
    .locals 0

    .line 14872
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$13102(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14872
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13202(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 14872
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$13300(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/util/List;
    .locals 0

    .line 14872
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$13302(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14872
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$13400()Z
    .locals 1

    .line 14872
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13500(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 14872
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$13600()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 14872
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14872
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14872
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14872
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1

    .line 16430
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14983
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_Segment_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15416
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15419
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15389
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15390
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15396
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15397
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15357
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15363
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15402
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15403
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15409
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15410
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15377
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15378
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15384
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15385
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15346
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15352
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15367
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15373
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation

    .line 16445
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 15295
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    if-nez v1, :cond_1

    .line 15296
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15298
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    .line 15300
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getId()Ljava/lang/String;

    move-result-object v1

    .line 15301
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 15302
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getName()Ljava/lang/String;

    move-result-object v1

    .line 15303
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 15304
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 15305
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 15306
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 15307
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 15309
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 15311
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 15312
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 15313
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 14872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 14872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1

    .line 16455
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 15156
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 15167
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 15215
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 15204
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

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

    .line 15181
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 15227
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

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

    .line 15193
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 15006
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    .line 15007
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15008
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 15010
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 15012
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 15013
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 15028
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    .line 15029
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15030
    check-cast v0, Ljava/lang/String;

    .line 15031
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 15033
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    return-object v0

    .line 15036
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 15052
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    .line 15053
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15054
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 15056
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 15058
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 15059
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 15074
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    .line 15075
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15076
    check-cast v0, Ljava/lang/String;

    .line 15077
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 15079
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    return-object v0

    .line 15082
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
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation

    .line 16450
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 15264
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 15268
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 15269
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 15271
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 15272
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15274
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getValueBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    .line 15275
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15277
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 15278
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    .line 15279
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15281
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 15283
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15285
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 15286
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 14898
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 15098
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    .line 15099
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15100
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 15102
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 15104
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 15105
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 15120
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    .line 15121
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15122
    check-cast v0, Ljava/lang/String;

    .line 15123
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 15125
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    return-object v0

    .line 15128
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 15144
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 15319
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 15320
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedHashCode:I

    return v0

    .line 15323
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 15325
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 15327
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 15329
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 15330
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 15332
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 15334
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExtProtoCount()I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 15336
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExtProtoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    mul-int/lit8 v1, v1, 0x1d

    .line 15338
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 15339
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 14989
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_Segment_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    .line 14990
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 15233
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 15237
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14872
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 15414
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 2

    .line 15430
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 14892
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 2

    .line 15423
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 15424
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

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

    .line 15244
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15245
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15247
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 15248
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15250
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getValueBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 15251
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    .line 15253
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 15254
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15256
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 15257
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 15259
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
