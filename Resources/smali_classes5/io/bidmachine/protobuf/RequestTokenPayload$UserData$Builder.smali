.class public final Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "RequestTokenPayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestTokenPayload$UserDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/RequestTokenPayload$UserDataOrBuilder;"
    }
.end annotation


# instance fields
.field private ccpa_:Ljava/lang/Object;

.field private consent_:Ljava/lang/Object;

.field private gdpr_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6863
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 7003
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->consent_:Ljava/lang/Object;

    .line 7110
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->ccpa_:Ljava/lang/Object;

    .line 6864
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6869
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 7003
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->consent_:Ljava/lang/Object;

    .line 7110
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->ccpa_:Ljava/lang/Object;

    .line 6870
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 6845
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 6845
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6851
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_UserData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 6874
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->access$7500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 0

    .line 6949
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 2

    .line 6902
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    .line 6903
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6904
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 2

    .line 6911
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    .line 6912
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->consent_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->access$7702(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6913
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->gdpr_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->access$7802(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;Z)Z

    .line 6914
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->ccpa_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->access$7902(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6915
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 2

    .line 6879
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 6880
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->consent_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6882
    iput-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->gdpr_:Z

    .line 6884
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->ccpa_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearCcpa()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 1

    .line 7165
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getCcpa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->ccpa_:Ljava/lang/Object;

    .line 7166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConsent()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 1

    .line 7058
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getConsent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->consent_:Ljava/lang/Object;

    .line 7059
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 0

    .line 6932
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    return-object p1
.end method

.method public clearGdpr()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 7105
    iput-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->gdpr_:Z

    .line 7106
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 0

    .line 6937
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 1

    .line 6921
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCcpa()Ljava/lang/String;
    .locals 2

    .line 7116
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->ccpa_:Ljava/lang/Object;

    .line 7117
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7118
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7120
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7121
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->ccpa_:Ljava/lang/Object;

    return-object v0

    .line 7124
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCcpaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7133
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->ccpa_:Ljava/lang/Object;

    .line 7134
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7135
    check-cast v0, Ljava/lang/String;

    .line 7136
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7138
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->ccpa_:Ljava/lang/Object;

    return-object v0

    .line 7141
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getConsent()Ljava/lang/String;
    .locals 2

    .line 7009
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->consent_:Ljava/lang/Object;

    .line 7010
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7011
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7013
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7014
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->consent_:Ljava/lang/Object;

    return-object v0

    .line 7017
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConsentBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7026
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->consent_:Ljava/lang/Object;

    .line 7027
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7028
    check-cast v0, Ljava/lang/String;

    .line 7029
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7031
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->consent_:Ljava/lang/Object;

    return-object v0

    .line 7034
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 6845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1

    .line 6897
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6892
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_UserData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getGdpr()Z
    .locals 1

    .line 7086
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->gdpr_:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 6857
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_UserData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    const-class v2, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    .line 6858
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

    .line 6845
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

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

    .line 6845
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

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

    .line 6845
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

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

    .line 6845
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6991
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->access$8100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6997
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6993
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6994
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

    .line 6997
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    .line 6999
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 1

    .line 6953
    instance-of v0, p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    if-eqz v0, :cond_0

    .line 6954
    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1

    .line 6956
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 1

    .line 6962
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 6963
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getConsent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6964
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->access$7700(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->consent_:Ljava/lang/Object;

    .line 6965
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->onChanged()V

    .line 6967
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getGdpr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6968
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getGdpr()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->setGdpr(Z)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    .line 6970
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getCcpa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6971
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->access$7900(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->ccpa_:Ljava/lang/Object;

    .line 6972
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->onChanged()V

    .line 6974
    :cond_3
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->access$8000(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    .line 6975
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 0

    .line 7194
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    return-object p1
.end method

.method public setCcpa(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 0

    .line 7152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7155
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->ccpa_:Ljava/lang/Object;

    .line 7156
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->onChanged()V

    return-object p0
.end method

.method public setCcpaBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 0

    .line 7177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7179
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->access$8300(Lcom/explorestack/protobuf/ByteString;)V

    .line 7181
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->ccpa_:Ljava/lang/Object;

    .line 7182
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->onChanged()V

    return-object p0
.end method

.method public setConsent(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 0

    .line 7045
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7048
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->consent_:Ljava/lang/Object;

    .line 7049
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->onChanged()V

    return-object p0
.end method

.method public setConsentBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 0

    .line 7070
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7072
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->access$8200(Lcom/explorestack/protobuf/ByteString;)V

    .line 7074
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->consent_:Ljava/lang/Object;

    .line 7075
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 0

    .line 6927
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    return-object p1
.end method

.method public setGdpr(Z)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 0

    .line 7095
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->gdpr_:Z

    .line 7096
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 0

    .line 6943
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6845
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 0

    .line 7188
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    return-object p1
.end method
