.class public final Lcom/appodeal/ads/api/Services;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Services.java"

# interfaces
.implements Lcom/appodeal/ads/api/ServicesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Services$Builder;,
        Lcom/appodeal/ads/api/Services$Firebase;,
        Lcom/appodeal/ads/api/Services$FirebaseOrBuilder;,
        Lcom/appodeal/ads/api/Services$Facebook;,
        Lcom/appodeal/ads/api/Services$FacebookOrBuilder;,
        Lcom/appodeal/ads/api/Services$Adjust;,
        Lcom/appodeal/ads/api/Services$AdjustOrBuilder;,
        Lcom/appodeal/ads/api/Services$Appsflyer;,
        Lcom/appodeal/ads/api/Services$AppsflyerOrBuilder;
    }
.end annotation


# static fields
.field public static final ADJUST_FIELD_NUMBER:I = 0x2

.field public static final APPSFLYER_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services;

.field public static final FACEBOOK_FIELD_NUMBER:I = 0x3

.field public static final FIREBASE_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private adjust_:Lcom/appodeal/ads/api/Services$Adjust;

.field private appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

.field private facebook_:Lcom/appodeal/ads/api/Services$Facebook;

.field private firebase_:Lcom/appodeal/ads/api/Services$Firebase;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4600
    new-instance v0, Lcom/appodeal/ads/api/Services;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Services;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Services;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services;

    .line 4608
    new-instance v0, Lcom/appodeal/ads/api/Services$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Services$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3553
    iput-byte v0, p0, Lcom/appodeal/ads/api/Services;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services;-><init>()V

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_7

    const/16 v4, 0x12

    if-eq v2, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    .line 108
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/Services;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/appodeal/ads/api/Services;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {v2}, Lcom/appodeal/ads/api/Services$Firebase;->toBuilder()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v5

    .line 99
    :cond_2
    invoke-static {}, Lcom/appodeal/ads/api/Services$Firebase;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/Services$Firebase;

    iput-object v2, p0, Lcom/appodeal/ads/api/Services;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    if-eqz v5, :cond_0

    .line 101
    invoke-virtual {v5, v2}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    .line 102
    invoke-virtual {v5}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Services;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    goto :goto_0

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/appodeal/ads/api/Services;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    if-eqz v2, :cond_4

    .line 84
    invoke-virtual {v2}, Lcom/appodeal/ads/api/Services$Facebook;->toBuilder()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v5

    .line 86
    :cond_4
    invoke-static {}, Lcom/appodeal/ads/api/Services$Facebook;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/Services$Facebook;

    iput-object v2, p0, Lcom/appodeal/ads/api/Services;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    if-eqz v5, :cond_0

    .line 88
    invoke-virtual {v5, v2}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    .line 89
    invoke-virtual {v5}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Services;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    goto :goto_0

    .line 70
    :cond_5
    iget-object v2, p0, Lcom/appodeal/ads/api/Services;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    if-eqz v2, :cond_6

    .line 71
    invoke-virtual {v2}, Lcom/appodeal/ads/api/Services$Adjust;->toBuilder()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v5

    .line 73
    :cond_6
    invoke-static {}, Lcom/appodeal/ads/api/Services$Adjust;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/Services$Adjust;

    iput-object v2, p0, Lcom/appodeal/ads/api/Services;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    if-eqz v5, :cond_0

    .line 75
    invoke-virtual {v5, v2}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    .line 76
    invoke-virtual {v5}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Services;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    goto/16 :goto_0

    .line 57
    :cond_7
    iget-object v2, p0, Lcom/appodeal/ads/api/Services;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    if-eqz v2, :cond_8

    .line 58
    invoke-virtual {v2}, Lcom/appodeal/ads/api/Services$Appsflyer;->toBuilder()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v5

    .line 60
    :cond_8
    invoke-static {}, Lcom/appodeal/ads/api/Services$Appsflyer;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/Services$Appsflyer;

    iput-object v2, p0, Lcom/appodeal/ads/api/Services;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    if-eqz v5, :cond_0

    .line 62
    invoke-virtual {v5, v2}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    .line 63
    invoke-virtual {v5}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Services;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    move v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 119
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 120
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 117
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Services;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->makeExtensionsImmutable()V

    .line 124
    throw p1

    .line 122
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Services;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 20
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3553
    iput-byte p1, p0, Lcom/appodeal/ads/api/Services;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Services;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$4600()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/Services;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/appodeal/ads/api/Services;Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Services;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/appodeal/ads/api/Services;Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Adjust;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Services;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/appodeal/ads/api/Services;Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Facebook;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Services;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/appodeal/ads/api/Services;Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Firebase;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Services;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/appodeal/ads/api/Services;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Services;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$5300()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Services;
    .locals 1

    .line 4604
    sget-object v0, Lcom/appodeal/ads/api/Services;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 128
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 3744
    sget-object v0, Lcom/appodeal/ads/api/Services;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services;->toBuilder()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Services;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 3747
    sget-object v0, Lcom/appodeal/ads/api/Services;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services;->toBuilder()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Services$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Services;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3717
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3718
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3724
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3725
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Services;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3685
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3691
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Services;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3730
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3731
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3737
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3738
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Services;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3705
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3706
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3712
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3713
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Services;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3674
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3680
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Services;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3695
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3701
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services;",
            ">;"
        }
    .end annotation

    .line 4619
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3614
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Services;

    if-nez v1, :cond_1

    .line 3615
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3617
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Services;

    .line 3619
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->hasAppsflyer()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->hasAppsflyer()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 3620
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->hasAppsflyer()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3621
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getAppsflyer()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v1

    .line 3622
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->getAppsflyer()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/Services$Appsflyer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 3624
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->hasAdjust()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->hasAdjust()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 3625
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->hasAdjust()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3626
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getAdjust()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v1

    .line 3627
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->getAdjust()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/Services$Adjust;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 3629
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->hasFacebook()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->hasFacebook()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 3630
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->hasFacebook()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3631
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getFacebook()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v1

    .line 3632
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->getFacebook()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/Services$Facebook;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 3634
    :cond_7
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->hasFirebase()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->hasFirebase()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 3635
    :cond_8
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->hasFirebase()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3636
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getFirebase()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v1

    .line 3637
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->getFirebase()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/Services$Firebase;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 3639
    :cond_9
    iget-object v1, p0, Lcom/appodeal/ads/api/Services;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Services;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v3

    :cond_a
    return v0
.end method

.method public getAdjust()Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1

    .line 3463
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Services$Adjust;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAdjustOrBuilder()Lcom/appodeal/ads/api/Services$AdjustOrBuilder;
    .locals 1

    .line 3474
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getAdjust()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    return-object v0
.end method

.method public getAppsflyer()Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1

    .line 3425
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Services$Appsflyer;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAppsflyerOrBuilder()Lcom/appodeal/ads/api/Services$AppsflyerOrBuilder;
    .locals 1

    .line 3436
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getAppsflyer()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Services;
    .locals 1

    .line 4629
    sget-object v0, Lcom/appodeal/ads/api/Services;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    return-object v0
.end method

.method public getFacebook()Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1

    .line 3501
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Services$Facebook;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFacebookOrBuilder()Lcom/appodeal/ads/api/Services$FacebookOrBuilder;
    .locals 1

    .line 3512
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getFacebook()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    return-object v0
.end method

.method public getFirebase()Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1

    .line 3539
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Services$Firebase;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFirebaseOrBuilder()Lcom/appodeal/ads/api/Services$FirebaseOrBuilder;
    .locals 1

    .line 3550
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getFirebase()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services;",
            ">;"
        }
    .end annotation

    .line 4624
    sget-object v0, Lcom/appodeal/ads/api/Services;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3584
    iget v0, p0, Lcom/appodeal/ads/api/Services;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3588
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3590
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getAppsflyer()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3592
    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/api/Services;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 3594
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getAdjust()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3596
    :cond_2
    iget-object v1, p0, Lcom/appodeal/ads/api/Services;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 3598
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getFacebook()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3600
    :cond_3
    iget-object v1, p0, Lcom/appodeal/ads/api/Services;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 3602
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getFirebase()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3604
    :cond_4
    iget-object v1, p0, Lcom/appodeal/ads/api/Services;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3605
    iput v0, p0, Lcom/appodeal/ads/api/Services;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAdjust()Z
    .locals 1

    .line 3451
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAppsflyer()Z
    .locals 1

    .line 3413
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFacebook()Z
    .locals 1

    .line 3489
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFirebase()Z
    .locals 1

    .line 3527
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

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

    .line 3645
    iget v0, p0, Lcom/appodeal/ads/api/Services;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3646
    iget v0, p0, Lcom/appodeal/ads/api/Services;->memoizedHashCode:I

    return v0

    .line 3649
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Services;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 3650
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->hasAppsflyer()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 3652
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getAppsflyer()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Appsflyer;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3654
    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->hasAdjust()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 3656
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getAdjust()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Adjust;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3658
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->hasFacebook()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 3660
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getFacebook()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Facebook;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3662
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->hasFirebase()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 3664
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getFirebase()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Firebase;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    mul-int/lit8 v1, v1, 0x1d

    .line 3666
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3667
    iput v1, p0, Lcom/appodeal/ads/api/Services;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 134
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Services;

    const-class v2, Lcom/appodeal/ads/api/Services$Builder;

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3556
    iget-byte v0, p0, Lcom/appodeal/ads/api/Services;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3560
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Services;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 3742
    invoke-static {}, Lcom/appodeal/ads/api/Services;->newBuilder()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 2

    .line 3758
    new-instance v0, Lcom/appodeal/ads/api/Services$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Services$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Services$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->newBuilderForType()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->newBuilderForType()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 29
    new-instance p1, Lcom/appodeal/ads/api/Services;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Services;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Services$Builder;
    .locals 2

    .line 3751
    sget-object v0, Lcom/appodeal/ads/api/Services;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 3752
    new-instance v0, Lcom/appodeal/ads/api/Services$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Services$Builder;-><init>(Lcom/appodeal/ads/api/Services$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Services$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Services$Builder;-><init>(Lcom/appodeal/ads/api/Services$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Services$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->toBuilder()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->toBuilder()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3567
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3568
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getAppsflyer()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3570
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 3571
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getAdjust()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3573
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 3574
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getFacebook()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3576
    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 3577
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services;->getFirebase()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3579
    :cond_3
    iget-object v0, p0, Lcom/appodeal/ads/api/Services;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
