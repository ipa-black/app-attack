.class public final Lcom/appodeal/ads/api/Services$Firebase;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Services.java"

# interfaces
.implements Lcom/appodeal/ads/api/Services$FirebaseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Services;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Firebase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Services$Firebase$Builder;
    }
.end annotation


# static fields
.field public static final APP_INSTANCE_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Firebase;

.field public static final KEYWORDS_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services$Firebase;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile appInstanceId_:Ljava/lang/Object;

.field private keywords_:Lcom/explorestack/protobuf/LazyStringList;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3367
    new-instance v0, Lcom/appodeal/ads/api/Services$Firebase;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Services$Firebase;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Services$Firebase;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Firebase;

    .line 3375
    new-instance v0, Lcom/appodeal/ads/api/Services$Firebase$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Services$Firebase$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2586
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2769
    iput-byte v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->memoizedIsInitialized:B

    .line 2587
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->appInstanceId_:Ljava/lang/Object;

    .line 2588
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2607
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Firebase;-><init>()V

    .line 2609
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2613
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 2617
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x12

    if-eq v4, v5, :cond_1

    .line 2638
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/appodeal/ads/api/Services$Firebase;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 2629
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_2

    .line 2631
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    move v2, v3

    .line 2634
    :cond_2
    iget-object v5, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2623
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 2625
    iput-object v4, p0, Lcom/appodeal/ads/api/Services$Firebase;->appInstanceId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2649
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2650
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2647
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_5

    .line 2653
    iget-object p2, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2655
    :cond_5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Services$Firebase;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2656
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->makeExtensionsImmutable()V

    .line 2657
    throw p1

    :cond_6
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_7

    .line 2653
    iget-object p1, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2655
    :cond_7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Firebase;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2656
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2577
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Firebase;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2584
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2769
    iput-byte p1, p0, Lcom/appodeal/ads/api/Services$Firebase;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 2577
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$3500()Z
    .locals 1

    .line 2577
    sget-boolean v0, Lcom/appodeal/ads/api/Services$Firebase;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/appodeal/ads/api/Services$Firebase;)Ljava/lang/Object;
    .locals 0

    .line 2577
    iget-object p0, p0, Lcom/appodeal/ads/api/Services$Firebase;->appInstanceId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/appodeal/ads/api/Services$Firebase;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2577
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Firebase;->appInstanceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 2577
    iget-object p0, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/appodeal/ads/api/Services$Firebase;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 2577
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 2577
    iget-object p0, p0, Lcom/appodeal/ads/api/Services$Firebase;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$4000()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 2577
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2577
    invoke-static {p0}, Lcom/appodeal/ads/api/Services$Firebase;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2577
    invoke-static {p0}, Lcom/appodeal/ads/api/Services$Firebase;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1

    .line 3371
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Firebase;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2661
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Firebase_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 1

    .line 2923
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Firebase;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Firebase;->toBuilder()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 1

    .line 2926
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Firebase;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Firebase;->toBuilder()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2896
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2897
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Firebase;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2903
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2904
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Firebase;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2864
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Firebase;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2870
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Firebase;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2909
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2910
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Firebase;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2916
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2917
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Firebase;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2884
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2885
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Firebase;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2891
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2892
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Firebase;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2853
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Firebase;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2859
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Firebase;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2874
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Firebase;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2880
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Firebase;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services$Firebase;",
            ">;"
        }
    .end annotation

    .line 3386
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2819
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Services$Firebase;

    if-nez v1, :cond_1

    .line 2820
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2822
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Services$Firebase;

    .line 2824
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->getAppInstanceId()Ljava/lang/String;

    move-result-object v1

    .line 2825
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Firebase;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 2826
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->getKeywordsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 2827
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Firebase;->getKeywordsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 2828
    :cond_3
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Firebase;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Services$Firebase;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 2

    .line 2684
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->appInstanceId_:Ljava/lang/Object;

    .line 2685
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2686
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2688
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2690
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2691
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->appInstanceId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAppInstanceIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2706
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->appInstanceId_:Ljava/lang/Object;

    .line 2707
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2708
    check-cast v0, Ljava/lang/String;

    .line 2709
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2711
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->appInstanceId_:Ljava/lang/Object;

    return-object v0

    .line 2714
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1

    .line 3396
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Firebase;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2577
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2577
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords(I)Ljava/lang/String;
    .locals 1

    .line 2753
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getKeywordsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 2766
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getKeywordsCount()I
    .locals 1

    .line 2741
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getKeywordsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 2730
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getKeywordsList()Ljava/util/List;
    .locals 1

    .line 2577
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->getKeywordsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services$Firebase;",
            ">;"
        }
    .end annotation

    .line 3391
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2794
    iget v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2798
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->getAppInstanceIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2799
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->appInstanceId_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v2, v1

    .line 2803
    :goto_1
    iget-object v3, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2804
    iget-object v3, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/appodeal/ads/api/Services$Firebase;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v2

    .line 2807
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->getKeywordsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2809
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Firebase;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2810
    iput v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 2601
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 2834
    iget v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2835
    iget v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->memoizedHashCode:I

    return v0

    .line 2838
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Services$Firebase;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 2840
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2841
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->getKeywordsCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 2843
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->getKeywordsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x1d

    .line 2845
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2846
    iput v1, p0, Lcom/appodeal/ads/api/Services$Firebase;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2667
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Firebase_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Services$Firebase;

    const-class v2, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    .line 2668
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 2772
    iget-byte v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2776
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Services$Firebase;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 1

    .line 2921
    invoke-static {}, Lcom/appodeal/ads/api/Services$Firebase;->newBuilder()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 2

    .line 2937
    new-instance v0, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Services$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2577
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->newBuilderForType()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2577
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2577
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->newBuilderForType()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 2595
    new-instance p1, Lcom/appodeal/ads/api/Services$Firebase;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Services$Firebase;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 2

    .line 2930
    sget-object v0, Lcom/appodeal/ads/api/Services$Firebase;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Firebase;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 2931
    new-instance v0, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;-><init>(Lcom/appodeal/ads/api/Services$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;-><init>(Lcom/appodeal/ads/api/Services$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2577
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->toBuilder()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2577
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->toBuilder()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2783
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase;->getAppInstanceIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2784
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->appInstanceId_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 2786
    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2787
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Firebase;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2789
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
