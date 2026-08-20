.class public final Lcom/appodeal/ads/api/UserSettings$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "UserSettings.java"

# interfaces
.implements Lcom/appodeal/ads/api/UserSettingsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/UserSettings$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/UserSettingsOrBuilder;"
    }
.end annotation


# instance fields
.field private age_:I

.field private gender_:Ljava/lang/Object;

.field private userId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 413
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 553
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->userId_:Ljava/lang/Object;

    .line 649
    iput-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->gender_:Ljava/lang/Object;

    .line 414
    invoke-direct {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/UserSettings$1;)V
    .locals 0

    .line 395
    invoke-direct {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 419
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 553
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->userId_:Ljava/lang/Object;

    .line 649
    iput-object p1, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->gender_:Ljava/lang/Object;

    .line 420
    invoke-direct {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/UserSettings$1;)V
    .locals 0

    .line 395
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 401
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_UserSettings_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 424
    invoke-static {}, Lcom/appodeal/ads/api/UserSettings;->access$200()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 0

    .line 499
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/UserSettings$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/UserSettings$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/UserSettings$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/UserSettings;
    .locals 2

    .line 452
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->buildPartial()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lcom/appodeal/ads/api/UserSettings;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 454
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/UserSettings$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->build()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->build()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/UserSettings;
    .locals 2

    .line 461
    new-instance v0, Lcom/appodeal/ads/api/UserSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/UserSettings;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/UserSettings$1;)V

    .line 462
    iget-object v1, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->userId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/UserSettings;->access$402(Lcom/appodeal/ads/api/UserSettings;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v1, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->gender_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/UserSettings;->access$502(Lcom/appodeal/ads/api/UserSettings;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget v1, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->age_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/UserSettings;->access$602(Lcom/appodeal/ads/api/UserSettings;I)I

    .line 465
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->buildPartial()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->buildPartial()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 1

    .line 429
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 430
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->userId_:Ljava/lang/Object;

    .line 432
    iput-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->gender_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 434
    iput v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->age_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->clear()Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->clear()Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->clear()Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->clear()Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAge()Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 783
    iput v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->age_:I

    .line 784
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 0

    .line 482
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/UserSettings$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearGender()Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 720
    invoke-static {}, Lcom/appodeal/ads/api/UserSettings;->getDefaultInstance()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/UserSettings;->getGender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->gender_:Ljava/lang/Object;

    .line 721
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 0

    .line 487
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/UserSettings$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearUserId()Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    invoke-static {}, Lcom/appodeal/ads/api/UserSettings;->getDefaultInstance()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/UserSettings;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->userId_:Ljava/lang/Object;

    .line 625
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 1

    .line 471
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/UserSettings$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->clone()Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->clone()Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->clone()Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->clone()Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->clone()Lcom/appodeal/ads/api/UserSettings$Builder;

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

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->clone()Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAge()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 756
    iget v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->age_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/UserSettings;
    .locals 1

    .line 447
    invoke-static {}, Lcom/appodeal/ads/api/UserSettings;->getDefaultInstance()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 442
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_UserSettings_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->gender_:Ljava/lang/Object;

    .line 660
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 661
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 663
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 664
    iput-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->gender_:Ljava/lang/Object;

    return-object v0

    .line 667
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGenderBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->gender_:Ljava/lang/Object;

    .line 681
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 682
    check-cast v0, Ljava/lang/String;

    .line 683
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 685
    iput-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->gender_:Ljava/lang/Object;

    return-object v0

    .line 688
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->userId_:Ljava/lang/Object;

    .line 564
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 565
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 567
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 568
    iput-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->userId_:Ljava/lang/Object;

    return-object v0

    .line 571
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->userId_:Ljava/lang/Object;

    .line 585
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 586
    check-cast v0, Ljava/lang/String;

    .line 587
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 589
    iput-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->userId_:Ljava/lang/Object;

    return-object v0

    .line 592
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 407
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_UserSettings_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/UserSettings;

    const-class v2, Lcom/appodeal/ads/api/UserSettings$Builder;

    .line 408
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/UserSettings;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 1

    .line 512
    invoke-static {}, Lcom/appodeal/ads/api/UserSettings;->getDefaultInstance()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 513
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/UserSettings;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    invoke-static {p1}, Lcom/appodeal/ads/api/UserSettings;->access$400(Lcom/appodeal/ads/api/UserSettings;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->userId_:Ljava/lang/Object;

    .line 515
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->onChanged()V

    .line 517
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/UserSettings;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 518
    invoke-static {p1}, Lcom/appodeal/ads/api/UserSettings;->access$500(Lcom/appodeal/ads/api/UserSettings;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->gender_:Ljava/lang/Object;

    .line 519
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->onChanged()V

    .line 521
    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/api/UserSettings;->getAge()I

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    invoke-virtual {p1}, Lcom/appodeal/ads/api/UserSettings;->getAge()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/UserSettings$Builder;->setAge(I)Lcom/appodeal/ads/api/UserSettings$Builder;

    .line 524
    :cond_3
    invoke-static {p1}, Lcom/appodeal/ads/api/UserSettings;->access$700(Lcom/appodeal/ads/api/UserSettings;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/UserSettings$Builder;

    .line 525
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 541
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/UserSettings;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/UserSettings;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeFrom(Lcom/appodeal/ads/api/UserSettings;)Lcom/appodeal/ads/api/UserSettings$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 543
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/UserSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
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

    .line 547
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeFrom(Lcom/appodeal/ads/api/UserSettings;)Lcom/appodeal/ads/api/UserSettings$Builder;

    .line 549
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 1

    .line 503
    instance-of v0, p1, Lcom/appodeal/ads/api/UserSettings;

    if-eqz v0, :cond_0

    .line 504
    check-cast p1, Lcom/appodeal/ads/api/UserSettings;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeFrom(Lcom/appodeal/ads/api/UserSettings;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1

    .line 506
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

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/UserSettings$Builder;

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

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/UserSettings$Builder;

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

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/UserSettings$Builder;

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

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 0

    .line 796
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/UserSettings$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAge(I)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 769
    iput p1, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->age_:I

    .line 770
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 0

    .line 477
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/UserSettings$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/UserSettings$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/UserSettings$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGender(Ljava/lang/String;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 703
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    iput-object p1, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->gender_:Ljava/lang/Object;

    .line 707
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->onChanged()V

    return-object p0
.end method

.method public setGenderBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 736
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 738
    invoke-static {p1}, Lcom/appodeal/ads/api/UserSettings;->access$1000(Lcom/explorestack/protobuf/ByteString;)V

    .line 740
    iput-object p1, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->gender_:Ljava/lang/Object;

    .line 741
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 0

    .line 493
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/UserSettings$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/UserSettings$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/UserSettings$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 0

    .line 790
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/UserSettings$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 607
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    iput-object p1, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->userId_:Ljava/lang/Object;

    .line 611
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 640
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    invoke-static {p1}, Lcom/appodeal/ads/api/UserSettings;->access$900(Lcom/explorestack/protobuf/ByteString;)V

    .line 644
    iput-object p1, p0, Lcom/appodeal/ads/api/UserSettings$Builder;->userId_:Ljava/lang/Object;

    .line 645
    invoke-virtual {p0}, Lcom/appodeal/ads/api/UserSettings$Builder;->onChanged()V

    return-object p0
.end method
