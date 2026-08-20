.class public final Lcom/appodeal/ads/api/Services$Facebook$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Services.java"

# interfaces
.implements Lcom/appodeal/ads/api/Services$FacebookOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Services$Facebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Services$Facebook$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/Services$FacebookOrBuilder;"
    }
.end annotation


# instance fields
.field private appId_:Ljava/lang/Object;

.field private userId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2131
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2265
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->userId_:Ljava/lang/Object;

    .line 2361
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->appId_:Ljava/lang/Object;

    .line 2132
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 2113
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 2137
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2265
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->userId_:Ljava/lang/Object;

    .line 2361
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->appId_:Ljava/lang/Object;

    .line 2138
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 2113
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2119
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Facebook_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 2142
    invoke-static {}, Lcom/appodeal/ads/api/Services$Facebook;->access$2400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 0

    .line 2214
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/Services$Facebook;
    .locals 2

    .line 2168
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    .line 2169
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Facebook;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2170
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->build()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->build()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Services$Facebook;
    .locals 2

    .line 2177
    new-instance v0, Lcom/appodeal/ads/api/Services$Facebook;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Services$Facebook;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Services$1;)V

    .line 2178
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->userId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services$Facebook;->access$2602(Lcom/appodeal/ads/api/Services$Facebook;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->appId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services$Facebook;->access$2702(Lcom/appodeal/ads/api/Services$Facebook;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 1

    .line 2147
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 2148
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->userId_:Ljava/lang/Object;

    .line 2150
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->appId_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clear()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clear()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clear()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clear()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 1

    .line 2432
    invoke-static {}, Lcom/appodeal/ads/api/Services$Facebook;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Facebook;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->appId_:Ljava/lang/Object;

    .line 2433
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 0

    .line 2197
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 0

    .line 2202
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearUserId()Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 1

    .line 2336
    invoke-static {}, Lcom/appodeal/ads/api/Services$Facebook;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Facebook;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->userId_:Ljava/lang/Object;

    .line 2337
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 1

    .line 2186
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clone()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clone()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clone()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clone()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clone()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->clone()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .line 2371
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->appId_:Ljava/lang/Object;

    .line 2372
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2373
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2375
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2376
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->appId_:Ljava/lang/Object;

    return-object v0

    .line 2379
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2392
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->appId_:Ljava/lang/Object;

    .line 2393
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2394
    check-cast v0, Ljava/lang/String;

    .line 2395
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2397
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->appId_:Ljava/lang/Object;

    return-object v0

    .line 2400
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1

    .line 2163
    invoke-static {}, Lcom/appodeal/ads/api/Services$Facebook;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2158
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Facebook_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .line 2275
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->userId_:Ljava/lang/Object;

    .line 2276
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2277
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2279
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2280
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->userId_:Ljava/lang/Object;

    return-object v0

    .line 2283
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2296
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->userId_:Ljava/lang/Object;

    .line 2297
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2298
    check-cast v0, Ljava/lang/String;

    .line 2299
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2301
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->userId_:Ljava/lang/Object;

    return-object v0

    .line 2304
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2125
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Facebook_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Services$Facebook;

    const-class v2, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    .line 2126
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 1

    .line 2227
    invoke-static {}, Lcom/appodeal/ads/api/Services$Facebook;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2228
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Facebook;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2229
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Facebook;->access$2600(Lcom/appodeal/ads/api/Services$Facebook;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->userId_:Ljava/lang/Object;

    .line 2230
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->onChanged()V

    .line 2232
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Facebook;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2233
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Facebook;->access$2700(Lcom/appodeal/ads/api/Services$Facebook;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->appId_:Ljava/lang/Object;

    .line 2234
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->onChanged()V

    .line 2236
    :cond_2
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Facebook;->access$2800(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    .line 2237
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2253
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Services$Facebook;->access$2900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Facebook;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2259
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2255
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Services$Facebook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2256
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

    .line 2259
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    .line 2261
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 1

    .line 2218
    instance-of v0, p1, Lcom/appodeal/ads/api/Services$Facebook;

    if-eqz v0, :cond_0

    .line 2219
    check-cast p1, Lcom/appodeal/ads/api/Services$Facebook;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1

    .line 2221
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2113
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

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

    .line 2113
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

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

    .line 2113
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

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

    .line 2113
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 0

    .line 2465
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppId(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 0

    .line 2415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2418
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->appId_:Ljava/lang/Object;

    .line 2419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 0

    .line 2448
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2450
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Facebook;->access$3100(Lcom/explorestack/protobuf/ByteString;)V

    .line 2452
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->appId_:Ljava/lang/Object;

    .line 2453
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 0

    .line 2192
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 0

    .line 2208
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 0

    .line 2459
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2113
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 0

    .line 2319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2322
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->userId_:Ljava/lang/Object;

    .line 2323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 0

    .line 2352
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2354
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Facebook;->access$3000(Lcom/explorestack/protobuf/ByteString;)V

    .line 2356
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Facebook$Builder;->userId_:Ljava/lang/Object;

    .line 2357
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->onChanged()V

    return-object p0
.end method
