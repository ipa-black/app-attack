.class public final Lcom/appodeal/ads/api/User$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "User.java"

# interfaces
.implements Lcom/appodeal/ads/api/UserOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/User$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/UserOrBuilder;"
    }
.end annotation


# instance fields
.field private consent_:Z

.field private iabConsentData_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/appodeal/ads/api/UserSettings;",
            "Lcom/appodeal/ads/api/UserSettings$Builder;",
            "Lcom/appodeal/ads/api/UserSettingsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userSettings_:Lcom/appodeal/ads/api/UserSettings;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 481
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 833
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->id_:Ljava/lang/Object;

    .line 929
    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->iabConsentData_:Ljava/lang/Object;

    .line 482
    invoke-direct {p0}, Lcom/appodeal/ads/api/User$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/User$1;)V
    .locals 0

    .line 463
    invoke-direct {p0}, Lcom/appodeal/ads/api/User$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 487
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 833
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/User$Builder;->id_:Ljava/lang/Object;

    .line 929
    iput-object p1, p0, Lcom/appodeal/ads/api/User$Builder;->iabConsentData_:Ljava/lang/Object;

    .line 488
    invoke-direct {p0}, Lcom/appodeal/ads/api/User$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/User$1;)V
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/User$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 469
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_User_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getUserSettingsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/appodeal/ads/api/UserSettings;",
            "Lcom/appodeal/ads/api/UserSettings$Builder;",
            "Lcom/appodeal/ads/api/UserSettingsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 823
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 825
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->getUserSettings()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v1

    .line 826
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 827
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 828
    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 492
    invoke-static {}, Lcom/appodeal/ads/api/User;->access$200()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/User$Builder;
    .locals 0

    .line 578
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/User$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/User$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/User$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/User;
    .locals 2

    .line 526
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->buildPartial()Lcom/appodeal/ads/api/User;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lcom/appodeal/ads/api/User;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 528
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/User$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->build()Lcom/appodeal/ads/api/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->build()Lcom/appodeal/ads/api/User;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/User;
    .locals 2

    .line 535
    new-instance v0, Lcom/appodeal/ads/api/User;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/User;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/User$1;)V

    .line 536
    iget-boolean v1, p0, Lcom/appodeal/ads/api/User$Builder;->consent_:Z

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/User;->access$402(Lcom/appodeal/ads/api/User;Z)Z

    .line 537
    iget-object v1, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/User;->access$502(Lcom/appodeal/ads/api/User;Lcom/appodeal/ads/api/UserSettings;)Lcom/appodeal/ads/api/UserSettings;

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/api/UserSettings;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/User;->access$502(Lcom/appodeal/ads/api/User;Lcom/appodeal/ads/api/UserSettings;)Lcom/appodeal/ads/api/UserSettings;

    .line 542
    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/api/User$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/User;->access$602(Lcom/appodeal/ads/api/User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iget-object v1, p0, Lcom/appodeal/ads/api/User$Builder;->iabConsentData_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/User;->access$702(Lcom/appodeal/ads/api/User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->buildPartial()Lcom/appodeal/ads/api/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->buildPartial()Lcom/appodeal/ads/api/User;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/User$Builder;
    .locals 2

    .line 497
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 498
    iput-boolean v0, p0, Lcom/appodeal/ads/api/User$Builder;->consent_:Z

    .line 500
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 501
    iput-object v1, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    goto :goto_0

    .line 503
    :cond_0
    iput-object v1, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    .line 504
    iput-object v1, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 506
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->id_:Ljava/lang/Object;

    .line 508
    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->iabConsentData_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->clear()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->clear()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->clear()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->clear()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearConsent()Lcom/appodeal/ads/api/User$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 673
    iput-boolean v0, p0, Lcom/appodeal/ads/api/User$Builder;->consent_:Z

    .line 674
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/User$Builder;
    .locals 0

    .line 561
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/User$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearIabConsentData()Lcom/appodeal/ads/api/User$Builder;
    .locals 1

    .line 1000
    invoke-static {}, Lcom/appodeal/ads/api/User;->getDefaultInstance()Lcom/appodeal/ads/api/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/User;->getIabConsentData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->iabConsentData_:Ljava/lang/Object;

    .line 1001
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearId()Lcom/appodeal/ads/api/User$Builder;
    .locals 1

    .line 904
    invoke-static {}, Lcom/appodeal/ads/api/User;->getDefaultInstance()Lcom/appodeal/ads/api/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/User;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->id_:Ljava/lang/Object;

    .line 905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/User$Builder;
    .locals 0

    .line 566
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/User$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearUserSettings()Lcom/appodeal/ads/api/User$Builder;
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 776
    iput-object v1, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    .line 777
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    goto :goto_0

    .line 779
    :cond_0
    iput-object v1, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    .line 780
    iput-object v1, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/User$Builder;
    .locals 1

    .line 550
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/User$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->clone()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->clone()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->clone()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->clone()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->clone()Lcom/appodeal/ads/api/User$Builder;

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

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->clone()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConsent()Z
    .locals 1

    .line 646
    iget-boolean v0, p0, Lcom/appodeal/ads/api/User$Builder;->consent_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/User;
    .locals 1

    .line 521
    invoke-static {}, Lcom/appodeal/ads/api/User;->getDefaultInstance()Lcom/appodeal/ads/api/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/User;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 516
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_User_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getIabConsentData()Ljava/lang/String;
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->iabConsentData_:Ljava/lang/Object;

    .line 940
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 941
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 943
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 944
    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->iabConsentData_:Ljava/lang/Object;

    return-object v0

    .line 947
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIabConsentDataBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->iabConsentData_:Ljava/lang/Object;

    .line 961
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 962
    check-cast v0, Ljava/lang/String;

    .line 963
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 965
    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->iabConsentData_:Ljava/lang/Object;

    return-object v0

    .line 968
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->id_:Ljava/lang/Object;

    .line 844
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 845
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 847
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 848
    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 851
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->id_:Ljava/lang/Object;

    .line 865
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 866
    check-cast v0, Ljava/lang/String;

    .line 867
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 869
    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 872
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getUserSettings()Lcom/appodeal/ads/api/UserSettings;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/UserSettings;->getDefaultInstance()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    :cond_0
    return-object v0

    .line 704
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/UserSettings;

    return-object v0
.end method

.method public getUserSettingsBuilder()Lcom/appodeal/ads/api/UserSettings$Builder;
    .locals 1

    .line 794
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    .line 795
    invoke-direct {p0}, Lcom/appodeal/ads/api/User$Builder;->getUserSettingsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/UserSettings$Builder;

    return-object v0
.end method

.method public getUserSettingsOrBuilder()Lcom/appodeal/ads/api/UserSettingsOrBuilder;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/UserSettingsOrBuilder;

    return-object v0

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    if-nez v0, :cond_1

    .line 809
    invoke-static {}, Lcom/appodeal/ads/api/UserSettings;->getDefaultInstance()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasUserSettings()Z
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 475
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_User_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/User;

    const-class v2, Lcom/appodeal/ads/api/User$Builder;

    .line 476
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/User;)Lcom/appodeal/ads/api/User$Builder;
    .locals 1

    .line 591
    invoke-static {}, Lcom/appodeal/ads/api/User;->getDefaultInstance()Lcom/appodeal/ads/api/User;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 592
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/User;->getConsent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    invoke-virtual {p1}, Lcom/appodeal/ads/api/User;->getConsent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/User$Builder;->setConsent(Z)Lcom/appodeal/ads/api/User$Builder;

    .line 595
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/User;->hasUserSettings()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    invoke-virtual {p1}, Lcom/appodeal/ads/api/User;->getUserSettings()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/User$Builder;->mergeUserSettings(Lcom/appodeal/ads/api/UserSettings;)Lcom/appodeal/ads/api/User$Builder;

    .line 598
    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/api/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 599
    invoke-static {p1}, Lcom/appodeal/ads/api/User;->access$600(Lcom/appodeal/ads/api/User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->id_:Ljava/lang/Object;

    .line 600
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    .line 602
    :cond_3
    invoke-virtual {p1}, Lcom/appodeal/ads/api/User;->getIabConsentData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 603
    invoke-static {p1}, Lcom/appodeal/ads/api/User;->access$700(Lcom/appodeal/ads/api/User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->iabConsentData_:Ljava/lang/Object;

    .line 604
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    .line 606
    :cond_4
    invoke-static {p1}, Lcom/appodeal/ads/api/User;->access$800(Lcom/appodeal/ads/api/User;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/User$Builder;

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/User$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 623
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/User;->access$900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/User;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 629
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->mergeFrom(Lcom/appodeal/ads/api/User;)Lcom/appodeal/ads/api/User$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 625
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/User;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
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

    .line 629
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/User$Builder;->mergeFrom(Lcom/appodeal/ads/api/User;)Lcom/appodeal/ads/api/User$Builder;

    .line 631
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/User$Builder;
    .locals 1

    .line 582
    instance-of v0, p1, Lcom/appodeal/ads/api/User;

    if-eqz v0, :cond_0

    .line 583
    check-cast p1, Lcom/appodeal/ads/api/User;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->mergeFrom(Lcom/appodeal/ads/api/User;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1

    .line 585
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

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/User$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/User$Builder;

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

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/User$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/User$Builder;

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

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/User$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/User$Builder;

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

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/User$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/User$Builder;
    .locals 0

    .line 1033
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/User$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeUserSettings(Lcom/appodeal/ads/api/UserSettings;)Lcom/appodeal/ads/api/User$Builder;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    if-eqz v0, :cond_0

    .line 756
    invoke-static {v0}, Lcom/appodeal/ads/api/UserSettings;->newBuilder(Lcom/appodeal/ads/api/UserSettings;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeFrom(Lcom/appodeal/ads/api/UserSettings;)Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->buildPartial()Lcom/appodeal/ads/api/UserSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    goto :goto_0

    .line 758
    :cond_0
    iput-object p1, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    .line 760
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    goto :goto_1

    .line 762
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public setConsent(Z)Lcom/appodeal/ads/api/User$Builder;
    .locals 0

    .line 659
    iput-boolean p1, p0, Lcom/appodeal/ads/api/User$Builder;->consent_:Z

    .line 660
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/User$Builder;
    .locals 0

    .line 556
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/User$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/User$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/User$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setIabConsentData(Ljava/lang/String;)Lcom/appodeal/ads/api/User$Builder;
    .locals 0

    .line 983
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 986
    iput-object p1, p0, Lcom/appodeal/ads/api/User$Builder;->iabConsentData_:Ljava/lang/Object;

    .line 987
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    return-object p0
.end method

.method public setIabConsentDataBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/User$Builder;
    .locals 0

    .line 1016
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1018
    invoke-static {p1}, Lcom/appodeal/ads/api/User;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 1020
    iput-object p1, p0, Lcom/appodeal/ads/api/User$Builder;->iabConsentData_:Ljava/lang/Object;

    .line 1021
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/appodeal/ads/api/User$Builder;
    .locals 0

    .line 887
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 890
    iput-object p1, p0, Lcom/appodeal/ads/api/User$Builder;->id_:Ljava/lang/Object;

    .line 891
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/User$Builder;
    .locals 0

    .line 920
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 922
    invoke-static {p1}, Lcom/appodeal/ads/api/User;->access$1000(Lcom/explorestack/protobuf/ByteString;)V

    .line 924
    iput-object p1, p0, Lcom/appodeal/ads/api/User$Builder;->id_:Ljava/lang/Object;

    .line 925
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/User$Builder;
    .locals 0

    .line 572
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/User$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/User$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/User$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/User$Builder;
    .locals 0

    .line 1027
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/User$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUserSettings(Lcom/appodeal/ads/api/UserSettings$Builder;)Lcom/appodeal/ads/api/User$Builder;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 737
    invoke-virtual {p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->build()Lcom/appodeal/ads/api/UserSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    .line 738
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    goto :goto_0

    .line 740
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/UserSettings$Builder;->build()Lcom/appodeal/ads/api/UserSettings;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setUserSettings(Lcom/appodeal/ads/api/UserSettings;)Lcom/appodeal/ads/api/User$Builder;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/appodeal/ads/api/User$Builder;->userSettingsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 717
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 719
    iput-object p1, p0, Lcom/appodeal/ads/api/User$Builder;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    .line 720
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User$Builder;->onChanged()V

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method
