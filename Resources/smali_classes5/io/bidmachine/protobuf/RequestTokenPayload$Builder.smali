.class public final Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "RequestTokenPayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestTokenPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestTokenPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/RequestTokenPayload$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/RequestTokenPayloadOrBuilder;"
    }
.end annotation


# instance fields
.field private appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$AppData;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$AppDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

.field private bitField0_:I

.field private customData_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$DeviceDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

.field private placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$PlacementDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

.field private sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

.field private userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$UserData;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$UserDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8456
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 8457
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 8462
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 8463
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 8416
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 8416
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;-><init>()V

    return-void
.end method

.method private getAppDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$AppData;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$AppDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9365
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9366
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getAppData()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v1

    .line 9369
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9370
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9371
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    .line 9373
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8422
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getDeviceDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$DeviceDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8999
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9000
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9002
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getDeviceData()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v1

    .line 9003
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9005
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    .line 9007
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getPlacementDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$PlacementDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8761
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8762
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8764
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getPlacementData()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v1

    .line 8765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8766
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8767
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    .line 8769
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getSessionDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8880
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8881
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8883
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getSessionData()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    move-result-object v1

    .line 8884
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8885
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8886
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 8888
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getUserDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$UserData;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$UserDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9246
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9247
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9249
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getUserData()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v1

    .line 9250
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9251
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9252
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    .line 9254
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private internalGetCustomData()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9014
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 9015
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$CustomDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9022
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    .line 9023
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 9024
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$CustomDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    .line 9027
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9028
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    .line 9030
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 8467
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$9800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 8592
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/RequestTokenPayload;
    .locals 2

    .line 8520
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    .line 8521
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8522
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload;
    .locals 2

    .line 8529
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    .line 8531
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 8532
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10002(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    goto :goto_0

    .line 8534
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10002(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    .line 8536
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 8537
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10102(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    goto :goto_1

    .line 8539
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10102(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 8541
    :goto_1
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 8542
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10202(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    goto :goto_2

    .line 8544
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10202(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    .line 8546
    :goto_2
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10302(Lio/bidmachine/protobuf/RequestTokenPayload;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 8547
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10300(Lio/bidmachine/protobuf/RequestTokenPayload;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 8548
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 8549
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10402(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    goto :goto_3

    .line 8551
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10402(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    .line 8553
    :goto_3
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 8554
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10502(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    goto :goto_4

    .line 8556
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10502(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    .line 8558
    :goto_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 8472
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 8473
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8474
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    goto :goto_0

    .line 8476
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    .line 8477
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8479
    :goto_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 8480
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    goto :goto_1

    .line 8482
    :cond_1
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 8483
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8485
    :goto_1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 8486
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    goto :goto_2

    .line 8488
    :cond_2
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    .line 8489
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8491
    :goto_2
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->clear()V

    .line 8492
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 8493
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    goto :goto_3

    .line 8495
    :cond_3
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    .line 8496
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8498
    :goto_3
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_4

    .line 8499
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    goto :goto_4

    .line 8501
    :cond_4
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    .line 8502
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_4
    return-object p0
.end method

.method public clearAppData()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 9330
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9331
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    .line 9332
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 9334
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    .line 9335
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearCustomData()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 9092
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 9093
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearDeviceData()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 8964
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8965
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    .line 8966
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 8968
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    .line 8969
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 8575
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 8580
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public clearPlacementData()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 8726
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8727
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    .line 8728
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 8730
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    .line 8731
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearSessionData()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 8845
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8846
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 8847
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 8849
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 8850
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearUserData()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 9211
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9212
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    .line 9213
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 9215
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    .line 9216
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 8564
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsCustomData(Ljava/lang/String;)Z
    .locals 1

    .line 9043
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9044
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAppData()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1

    .line 9272
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9273
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    if-nez v0, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    :cond_0
    return-object v0

    .line 9275
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object v0
.end method

.method public getAppDataBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 1

    .line 9345
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    .line 9346
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getAppDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    return-object v0
.end method

.method public getAppDataOrBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$AppDataOrBuilder;
    .locals 1

    .line 9352
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9353
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppDataOrBuilder;

    return-object v0

    .line 9355
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    if-nez v0, :cond_1

    .line 9356
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCustomData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9052
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getCustomDataMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomDataCount()I
    .locals 1

    .line 9034
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCustomDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9060
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomDataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 9070
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9072
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 9073
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getCustomDataOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 9082
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9084
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 9085
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9088
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 9086
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 8416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload;
    .locals 1

    .line 8515
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8510
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceData()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1

    .line 8906
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 8907
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    if-nez v0, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    :cond_0
    return-object v0

    .line 8909
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object v0
.end method

.method public getDeviceDataBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 8979
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    .line 8980
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getDeviceDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    return-object v0
.end method

.method public getDeviceDataOrBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceDataOrBuilder;
    .locals 1

    .line 8986
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 8987
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceDataOrBuilder;

    return-object v0

    .line 8989
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    if-nez v0, :cond_1

    .line 8990
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getMutableCustomData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9113
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementData()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1

    .line 8668
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 8669
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    if-nez v0, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    :cond_0
    return-object v0

    .line 8671
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object v0
.end method

.method public getPlacementDataBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 1

    .line 8741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    .line 8742
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getPlacementDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    return-object v0
.end method

.method public getPlacementDataOrBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementDataOrBuilder;
    .locals 1

    .line 8748
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 8749
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementDataOrBuilder;

    return-object v0

    .line 8751
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    if-nez v0, :cond_1

    .line 8752
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSessionData()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;
    .locals 1

    .line 8787
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 8788
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    if-nez v0, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    move-result-object v0

    :cond_0
    return-object v0

    .line 8790
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    return-object v0
.end method

.method public getSessionDataBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;
    .locals 1

    .line 8860
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    .line 8861
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getSessionDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;

    return-object v0
.end method

.method public getSessionDataOrBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionDataOrBuilder;
    .locals 1

    .line 8867
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 8868
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionDataOrBuilder;

    return-object v0

    .line 8870
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    if-nez v0, :cond_1

    .line 8871
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getUserData()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1

    .line 9153
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9154
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    if-nez v0, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    :cond_0
    return-object v0

    .line 9156
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object v0
.end method

.method public getUserDataBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 1

    .line 9226
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    .line 9227
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getUserDataFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    return-object v0
.end method

.method public getUserDataOrBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$UserDataOrBuilder;
    .locals 1

    .line 9233
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9234
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserDataOrBuilder;

    return-object v0

    .line 9236
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    if-nez v0, :cond_1

    .line 9237
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasAppData()Z
    .locals 1

    .line 9265
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

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

.method public hasDeviceData()Z
    .locals 1

    .line 8899
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

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

.method public hasPlacementData()Z
    .locals 1

    .line 8661
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

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

.method public hasSessionData()Z
    .locals 1

    .line 8780
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

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

.method public hasUserData()Z
    .locals 1

    .line 9146
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

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

    .line 8450
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RequestTokenPayload;

    const-class v2, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 8451
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 8430
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 8432
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map field number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 8441
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 8443
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map field number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeAppData(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 9312
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9313
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    if-eqz v0, :cond_0

    .line 9315
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->newBuilder(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    goto :goto_0

    .line 9317
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    .line 9319
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_1

    .line 9321
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeDeviceData(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 8946
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 8947
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    if-eqz v0, :cond_0

    .line 8949
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->newBuilder(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    goto :goto_0

    .line 8951
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    .line 8953
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_1

    .line 8955
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8416
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

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

    .line 8416
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

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

    .line 8416
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

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

    .line 8416
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8640
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8642
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/RequestTokenPayload;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8643
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

    .line 8646
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 8648
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 8596
    instance-of v0, p1, Lio/bidmachine/protobuf/RequestTokenPayload;

    if-eqz v0, :cond_0

    .line 8597
    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1

    .line 8599
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 8605
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 8606
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasPlacementData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8607
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getPlacementData()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergePlacementData(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 8609
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasSessionData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8610
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getSessionData()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeSessionData(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 8612
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasDeviceData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8613
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getDeviceData()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeDeviceData(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 8615
    :cond_3
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 8616
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10600(Lio/bidmachine/protobuf/RequestTokenPayload;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 8615
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 8617
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasUserData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8618
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getUserData()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeUserData(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 8620
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasAppData()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8621
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getAppData()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeAppData(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 8623
    :cond_5
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$10700(Lio/bidmachine/protobuf/RequestTokenPayload;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 8624
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    return-object p0
.end method

.method public mergePlacementData(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 8708
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 8709
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    if-eqz v0, :cond_0

    .line 8711
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->newBuilder(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    goto :goto_0

    .line 8713
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    .line 8715
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_1

    .line 8717
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeSessionData(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 8827
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 8828
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    if-eqz v0, :cond_0

    .line 8830
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;->newBuilder(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    goto :goto_0

    .line 8832
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 8834
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_1

    .line 8836
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 9384
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public mergeUserData(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 9193
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9194
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    if-eqz v0, :cond_0

    .line 9196
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->newBuilder(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    goto :goto_0

    .line 9198
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    .line 9200
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_1

    .line 9202
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public putAllCustomData(Ljava/util/Map;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/RequestTokenPayload$Builder;"
        }
    .end annotation

    .line 9133
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 9134
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 9121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9122
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9123
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 9124
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeCustomData(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 9102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9103
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 9104
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAppData(Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 9299
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9300
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    .line 9301
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 9303
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAppData(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 9282
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9286
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    .line 9287
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 9289
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDeviceData(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 8933
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8934
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    .line 8935
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 8937
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDeviceData(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 8916
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8918
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8920
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    .line 8921
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 8923
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 8570
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public setPlacementData(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 8695
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8696
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    .line 8697
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 8699
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPlacementData(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 8678
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8680
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8682
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    .line 8683
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 8685
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 8586
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public setSessionData(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 8814
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8815
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 8816
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 8818
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSessionData(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 8797
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8799
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8801
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 8802
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 8804
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 8416
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 9378
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public setUserData(Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 9180
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9181
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    .line 9182
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 9184
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setUserData(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 9163
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9167
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    .line 9168
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->onChanged()V

    goto :goto_0

    .line 9170
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method
