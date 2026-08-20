.class public final Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdCachePlacementControl.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdCachePlacementControlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdCachePlacementControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/AdCachePlacementControlOrBuilder;"
    }
.end annotation


# instance fields
.field private maxAge_:I

.field private maxCacheSize_:I

.field private maxRetainCount_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 330
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 336
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 317
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdCachePlacementControl_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 340
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 0

    .line 415
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->build()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->build()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 2

    .line 368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->buildPartial()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 370
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->buildPartial()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->buildPartial()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 2

    .line 377
    new-instance v0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V

    .line 378
    iget v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxCacheSize_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->access$402(Lio/bidmachine/protobuf/AdCachePlacementControl;I)I

    .line 379
    iget v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxRetainCount_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->access$502(Lio/bidmachine/protobuf/AdCachePlacementControl;I)I

    .line 380
    iget v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxAge_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->access$602(Lio/bidmachine/protobuf/AdCachePlacementControl;I)I

    .line 381
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clear()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clear()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clear()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clear()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 1

    .line 345
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 346
    iput v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxCacheSize_:I

    .line 348
    iput v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxRetainCount_:I

    .line 350
    iput v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxAge_:I

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 0

    .line 398
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method

.method public clearMaxAge()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 555
    iput v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxAge_:I

    .line 556
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMaxCacheSize()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 493
    iput v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxCacheSize_:I

    .line 494
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMaxRetainCount()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 524
    iput v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxRetainCount_:I

    .line 525
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 0

    .line 403
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 1

    .line 387
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->clone()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1

    .line 363
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getDefaultInstance()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 358
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdCachePlacementControl_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .line 536
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxAge_:I

    return v0
.end method

.method public getMaxCacheSize()I
    .locals 1

    .line 474
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxCacheSize_:I

    return v0
.end method

.method public getMaxRetainCount()I
    .locals 1

    .line 505
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxRetainCount_:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 323
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdCachePlacementControl_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    const-class v2, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 324
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

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

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

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

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

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

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 455
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 461
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 457
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/AdCachePlacementControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
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

    .line 461
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 463
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 1

    .line 419
    instance-of v0, p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    if-eqz v0, :cond_0

    .line 420
    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1

    .line 422
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 1

    .line 428
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getDefaultInstance()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 429
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setMaxCacheSize(I)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 432
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxRetainCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxRetainCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setMaxRetainCount(I)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 435
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxAge()I

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxAge()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setMaxAge(I)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 438
    :cond_3
    invoke-static {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->access$700(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 439
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 0

    .line 568
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 0

    .line 393
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method

.method public setMaxAge(I)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 0

    .line 545
    iput p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxAge_:I

    .line 546
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->onChanged()V

    return-object p0
.end method

.method public setMaxCacheSize(I)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 0

    .line 483
    iput p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxCacheSize_:I

    .line 484
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->onChanged()V

    return-object p0
.end method

.method public setMaxRetainCount(I)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 0

    .line 514
    iput p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->maxRetainCount_:I

    .line 515
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 0

    .line 409
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 0

    .line 562
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    return-object p1
.end method
