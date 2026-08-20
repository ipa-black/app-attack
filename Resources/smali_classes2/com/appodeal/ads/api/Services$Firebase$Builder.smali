.class public final Lcom/appodeal/ads/api/Services$Firebase$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Services.java"

# interfaces
.implements Lcom/appodeal/ads/api/Services$FirebaseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Services$Firebase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Services$Firebase$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/Services$FirebaseOrBuilder;"
    }
.end annotation


# instance fields
.field private appInstanceId_:Ljava/lang/Object;

.field private bitField0_:I

.field private keywords_:Lcom/explorestack/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2961
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 3107
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->appInstanceId_:Ljava/lang/Object;

    .line 3203
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2962
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 2943
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 2967
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 3107
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->appInstanceId_:Ljava/lang/Object;

    .line 3203
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2968
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 2943
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureKeywordsIsMutable()V
    .locals 2

    .line 3205
    iget v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 3206
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3207
    iget v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2949
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Firebase_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 2972
    invoke-static {}, Lcom/appodeal/ads/api/Services$Firebase;->access$3500()Z

    return-void
.end method


# virtual methods
.method public addAllKeywords(Ljava/lang/Iterable;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appodeal/ads/api/Services$Firebase$Builder;"
        }
    .end annotation

    .line 3308
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->ensureKeywordsIsMutable()V

    .line 3309
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3311
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->onChanged()V

    return-object p0
.end method

.method public addKeywords(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 1

    .line 3290
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3292
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->ensureKeywordsIsMutable()V

    .line 3293
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3294
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->onChanged()V

    return-object p0
.end method

.method public addKeywordsBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 1

    .line 3340
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3342
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Firebase;->access$4200(Lcom/explorestack/protobuf/ByteString;)V

    .line 3343
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->ensureKeywordsIsMutable()V

    .line 3344
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 3345
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->onChanged()V

    return-object p0
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 0

    .line 3049
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/Services$Firebase;
    .locals 2

    .line 2998
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    .line 2999
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Firebase;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3000
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->build()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->build()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Services$Firebase;
    .locals 2

    .line 3007
    new-instance v0, Lcom/appodeal/ads/api/Services$Firebase;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Services$Firebase;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Services$1;)V

    .line 3009
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->appInstanceId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services$Firebase;->access$3702(Lcom/appodeal/ads/api/Services$Firebase;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3010
    iget v1, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3011
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3012
    iget v1, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->bitField0_:I

    .line 3014
    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services$Firebase;->access$3802(Lcom/appodeal/ads/api/Services$Firebase;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 3015
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 1

    .line 2977
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 2978
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->appInstanceId_:Ljava/lang/Object;

    .line 2980
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2981
    iget v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clear()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clear()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clear()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clear()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppInstanceId()Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 1

    .line 3178
    invoke-static {}, Lcom/appodeal/ads/api/Services$Firebase;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Firebase;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->appInstanceId_:Ljava/lang/Object;

    .line 3179
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 0

    .line 3032
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearKeywords()Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 1

    .line 3323
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3324
    iget v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->bitField0_:I

    .line 3325
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 0

    .line 3037
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 1

    .line 3021
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clone()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clone()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clone()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clone()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clone()Lcom/appodeal/ads/api/Services$Firebase$Builder;

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

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->clone()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 2

    .line 3117
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->appInstanceId_:Ljava/lang/Object;

    .line 3118
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3119
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3121
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3122
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->appInstanceId_:Ljava/lang/Object;

    return-object v0

    .line 3125
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppInstanceIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3138
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->appInstanceId_:Ljava/lang/Object;

    .line 3139
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3140
    check-cast v0, Ljava/lang/String;

    .line 3141
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3143
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->appInstanceId_:Ljava/lang/Object;

    return-object v0

    .line 3146
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1

    .line 2993
    invoke-static {}, Lcom/appodeal/ads/api/Services$Firebase;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2988
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Firebase_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getKeywords(I)Ljava/lang/String;
    .locals 1

    .line 3243
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getKeywordsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 3256
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getKeywordsCount()I
    .locals 1

    .line 3231
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getKeywordsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 3220
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKeywordsList()Ljava/util/List;
    .locals 1

    .line 2943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->getKeywordsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2955
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Firebase_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Services$Firebase;

    const-class v2, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    .line 2956
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 2

    .line 3062
    invoke-static {}, Lcom/appodeal/ads/api/Services$Firebase;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3063
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Firebase;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3064
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Firebase;->access$3700(Lcom/appodeal/ads/api/Services$Firebase;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->appInstanceId_:Ljava/lang/Object;

    .line 3065
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->onChanged()V

    .line 3067
    :cond_1
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Firebase;->access$3800(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3068
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3069
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Firebase;->access$3800(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3070
    iget v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->bitField0_:I

    goto :goto_0

    .line 3072
    :cond_2
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->ensureKeywordsIsMutable()V

    .line 3073
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Firebase;->access$3800(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 3075
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->onChanged()V

    .line 3077
    :cond_3
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Firebase;->access$3900(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    .line 3078
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3094
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Services$Firebase;->access$4000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Firebase;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3100
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3096
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Services$Firebase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3097
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

    .line 3100
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    .line 3102
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 1

    .line 3053
    instance-of v0, p1, Lcom/appodeal/ads/api/Services$Firebase;

    if-eqz v0, :cond_0

    .line 3054
    check-cast p1, Lcom/appodeal/ads/api/Services$Firebase;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1

    .line 3056
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

    .line 2943
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

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

    .line 2943
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

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

    .line 2943
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

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

    .line 2943
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 0

    .line 3357
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppInstanceId(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 0

    .line 3161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3164
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->appInstanceId_:Ljava/lang/Object;

    .line 3165
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppInstanceIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 0

    .line 3194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3196
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Firebase;->access$4100(Lcom/explorestack/protobuf/ByteString;)V

    .line 3198
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->appInstanceId_:Ljava/lang/Object;

    .line 3199
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 0

    .line 3027
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setKeywords(ILjava/lang/String;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 1

    .line 3271
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3273
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->ensureKeywordsIsMutable()V

    .line 3274
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Firebase$Builder;->keywords_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3275
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 0

    .line 3043
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 0

    .line 3351
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2943
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    return-object p1
.end method
