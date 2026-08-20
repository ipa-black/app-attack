.class public final Lio/bidmachine/protobuf/Session$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Session.java"

# interfaces
.implements Lio/bidmachine/protobuf/SessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/Session$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/SessionOrBuilder;"
    }
.end annotation


# instance fields
.field private id_:Ljava/lang/Object;

.field private uptime_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 351
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 484
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 352
    invoke-direct {p0}, Lio/bidmachine/protobuf/Session$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 357
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 484
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 358
    invoke-direct {p0}, Lio/bidmachine/protobuf/Session$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/Session$1;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/Session$1;)V
    .locals 0

    .line 333
    invoke-direct {p0}, Lio/bidmachine/protobuf/Session$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 339
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 362
    invoke-static {}, Lio/bidmachine/protobuf/Session;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 434
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->build()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->build()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/Session;
    .locals 2

    .line 388
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->buildPartial()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lio/bidmachine/protobuf/Session;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 390
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/Session$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->buildPartial()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->buildPartial()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/Session;
    .locals 3

    .line 397
    new-instance v0, Lio/bidmachine/protobuf/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/Session;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/Session$1;)V

    .line 398
    iget-object v1, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/Session;->access$402(Lio/bidmachine/protobuf/Session;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-wide v1, p0, Lio/bidmachine/protobuf/Session$Builder;->uptime_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/Session;->access$502(Lio/bidmachine/protobuf/Session;J)J

    .line 400
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clear()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clear()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clear()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clear()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/Session$Builder;
    .locals 2

    .line 367
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 368
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 370
    iput-wide v0, p0, Lio/bidmachine/protobuf/Session$Builder;->uptime_:J

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 417
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public clearId()Lio/bidmachine/protobuf/Session$Builder;
    .locals 1

    .line 555
    invoke-static {}, Lio/bidmachine/protobuf/Session;->getDefaultInstance()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Session;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 556
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 422
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public clearUptime()Lio/bidmachine/protobuf/Session$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 618
    iput-wide v0, p0, Lio/bidmachine/protobuf/Session$Builder;->uptime_:J

    .line 619
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clone()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clone()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clone()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clone()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clone()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/Session$Builder;
    .locals 1

    .line 406
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/Session$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->clone()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/Session;
    .locals 1

    .line 383
    invoke-static {}, Lio/bidmachine/protobuf/Session;->getDefaultInstance()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 378
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 494
    iget-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 495
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 496
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 498
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 499
    iput-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 502
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 515
    iget-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 516
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 517
    check-cast v0, Ljava/lang/String;

    .line 518
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 520
    iput-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 523
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getUptime()J
    .locals 2

    .line 591
    iget-wide v0, p0, Lio/bidmachine/protobuf/Session$Builder;->uptime_:J

    return-wide v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 345
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Session_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/Session;

    const-class v2, Lio/bidmachine/protobuf/Session$Builder;

    .line 346
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

    .line 333
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/Session$Builder;

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

    .line 333
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session$Builder;

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

    .line 333
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/Session$Builder;

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

    .line 333
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 472
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/Session;->access$700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/Session;)Lio/bidmachine/protobuf/Session$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 474
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/Session;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
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

    .line 478
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/Session;)Lio/bidmachine/protobuf/Session$Builder;

    .line 480
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 1

    .line 438
    instance-of v0, p1, Lio/bidmachine/protobuf/Session;

    if-eqz v0, :cond_0

    .line 439
    check-cast p1, Lio/bidmachine/protobuf/Session;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/Session;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1

    .line 441
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/Session;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 4

    .line 447
    invoke-static {}, Lio/bidmachine/protobuf/Session;->getDefaultInstance()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 448
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Session;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    invoke-static {p1}, Lio/bidmachine/protobuf/Session;->access$400(Lio/bidmachine/protobuf/Session;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 450
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    .line 452
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Session;->getUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Session;->getUptime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/Session$Builder;->setUptime(J)Lio/bidmachine/protobuf/Session$Builder;

    .line 455
    :cond_2
    invoke-static {p1}, Lio/bidmachine/protobuf/Session;->access$600(Lio/bidmachine/protobuf/Session;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;

    .line 456
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 631
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Session$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 412
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 538
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    iput-object p1, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 571
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    invoke-static {p1}, Lio/bidmachine/protobuf/Session;->access$800(Lcom/explorestack/protobuf/ByteString;)V

    .line 575
    iput-object p1, p0, Lio/bidmachine/protobuf/Session$Builder;->id_:Ljava/lang/Object;

    .line 576
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/Session$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/Session$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 428
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 625
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Session$Builder;

    return-object p1
.end method

.method public setUptime(J)Lio/bidmachine/protobuf/Session$Builder;
    .locals 0

    .line 604
    iput-wide p1, p0, Lio/bidmachine/protobuf/Session$Builder;->uptime_:J

    .line 605
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session$Builder;->onChanged()V

    return-object p0
.end method
