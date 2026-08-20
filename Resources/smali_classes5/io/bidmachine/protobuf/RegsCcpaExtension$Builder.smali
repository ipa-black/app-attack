.class public final Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "RegsCcpaExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/RegsCcpaExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RegsCcpaExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/RegsCcpaExtensionOrBuilder;"
    }
.end annotation


# instance fields
.field private usPrivacy_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 311
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 438
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 312
    invoke-direct {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 317
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 438
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 318
    invoke-direct {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RegsCcpaExtension$1;)V
    .locals 0

    .line 293
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/RegsCcpaExtension$1;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 299
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RegsCcpaExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 322
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 391
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->build()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->build()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 2

    .line 346
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 348
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 2

    .line 355
    new-instance v0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/RegsCcpaExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RegsCcpaExtension$1;)V

    .line 356
    iget-object v1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RegsCcpaExtension;->access$402(Lio/bidmachine/protobuf/RegsCcpaExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clear()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clear()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clear()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clear()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 1

    .line 327
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 374
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 379
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public clearUsPrivacy()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 1

    .line 509
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getUsPrivacy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 510
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 1

    .line 363
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->clone()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1

    .line 341
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 336
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RegsCcpaExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getUsPrivacy()Ljava/lang/String;
    .locals 2

    .line 448
    iget-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 449
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 450
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 452
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 453
    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    return-object v0

    .line 456
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUsPrivacyBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 469
    iget-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 470
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 471
    check-cast v0, Ljava/lang/String;

    .line 472
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 474
    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    return-object v0

    .line 477
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 305
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RegsCcpaExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RegsCcpaExtension;

    const-class v2, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    .line 306
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

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

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

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

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

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

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

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 426
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->access$600()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 428
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/RegsCcpaExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
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

    .line 432
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    .line 434
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 1

    .line 395
    instance-of v0, p1, Lio/bidmachine/protobuf/RegsCcpaExtension;

    if-eqz v0, :cond_0

    .line 396
    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1

    .line 398
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 1

    .line 404
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 405
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getUsPrivacy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    invoke-static {p1}, Lio/bidmachine/protobuf/RegsCcpaExtension;->access$400(Lio/bidmachine/protobuf/RegsCcpaExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 407
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->onChanged()V

    .line 409
    :cond_1
    invoke-static {p1}, Lio/bidmachine/protobuf/RegsCcpaExtension;->access$500(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    .line 410
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 542
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 369
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 385
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 536
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    return-object p1
.end method

.method public setUsPrivacy(Ljava/lang/String;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 492
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    iput-object p1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 496
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public setUsPrivacyBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 0

    .line 525
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    invoke-static {p1}, Lio/bidmachine/protobuf/RegsCcpaExtension;->access$700(Lcom/explorestack/protobuf/ByteString;)V

    .line 529
    iput-object p1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->usPrivacy_:Ljava/lang/Object;

    .line 530
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->onChanged()V

    return-object p0
.end method
