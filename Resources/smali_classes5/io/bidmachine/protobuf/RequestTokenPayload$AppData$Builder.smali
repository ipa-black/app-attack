.class public final Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "RequestTokenPayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestTokenPayload$AppDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/RequestTokenPayload$AppDataOrBuilder;"
    }
.end annotation


# instance fields
.field private appName_:Ljava/lang/Object;

.field private appVer_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7618
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 7752
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appName_:Ljava/lang/Object;

    .line 7828
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appVer_:Ljava/lang/Object;

    .line 7619
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 7624
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 7752
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appName_:Ljava/lang/Object;

    .line 7828
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appVer_:Ljava/lang/Object;

    .line 7625
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 7600
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 7600
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7606
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_AppData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 7629
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->access$8700()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 0

    .line 7701
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 2

    .line 7655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    .line 7656
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7657
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 2

    .line 7664
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    .line 7665
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->access$8902(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7666
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appVer_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->access$9002(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7667
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 1

    .line 7634
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 7635
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appName_:Ljava/lang/Object;

    .line 7637
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appVer_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAppName()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 1

    .line 7807
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appName_:Ljava/lang/Object;

    .line 7808
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAppVer()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 1

    .line 7883
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appVer_:Ljava/lang/Object;

    .line 7884
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 0

    .line 7684
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 0

    .line 7689
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 1

    .line 7673
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .line 7758
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appName_:Ljava/lang/Object;

    .line 7759
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7760
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7762
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7763
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appName_:Ljava/lang/Object;

    return-object v0

    .line 7766
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7775
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appName_:Ljava/lang/Object;

    .line 7776
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7777
    check-cast v0, Ljava/lang/String;

    .line 7778
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7780
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appName_:Ljava/lang/Object;

    return-object v0

    .line 7783
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 2

    .line 7834
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appVer_:Ljava/lang/Object;

    .line 7835
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7836
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7838
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7839
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 7842
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7851
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appVer_:Ljava/lang/Object;

    .line 7852
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7853
    check-cast v0, Ljava/lang/String;

    .line 7854
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7856
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 7859
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 7600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1

    .line 7650
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7645
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_AppData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 7612
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_AppData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    const-class v2, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    .line 7613
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

    .line 7600
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

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

    .line 7600
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

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

    .line 7600
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

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

    .line 7600
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7740
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->access$9200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 7746
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7742
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7743
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

    .line 7746
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    .line 7748
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 1

    .line 7705
    instance-of v0, p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    if-eqz v0, :cond_0

    .line 7706
    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1

    .line 7708
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 1

    .line 7714
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 7715
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7716
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->access$8900(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appName_:Ljava/lang/Object;

    .line 7717
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->onChanged()V

    .line 7719
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7720
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->access$9000(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appVer_:Ljava/lang/Object;

    .line 7721
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->onChanged()V

    .line 7723
    :cond_2
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->access$9100(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    .line 7724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 0

    .line 7912
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    return-object p1
.end method

.method public setAppName(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 0

    .line 7794
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7797
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appName_:Ljava/lang/Object;

    .line 7798
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppNameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 0

    .line 7819
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7821
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->access$9300(Lcom/explorestack/protobuf/ByteString;)V

    .line 7823
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appName_:Ljava/lang/Object;

    .line 7824
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppVer(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 0

    .line 7870
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7873
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appVer_:Ljava/lang/Object;

    .line 7874
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppVerBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 0

    .line 7895
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7897
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->access$9400(Lcom/explorestack/protobuf/ByteString;)V

    .line 7899
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->appVer_:Ljava/lang/Object;

    .line 7900
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 0

    .line 7679
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 0

    .line 7695
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7600
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 0

    .line 7906
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    return-object p1
.end method
