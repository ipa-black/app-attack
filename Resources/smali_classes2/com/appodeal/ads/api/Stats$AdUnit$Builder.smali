.class public final Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Stats.java"

# interfaces
.implements Lcom/appodeal/ads/api/Stats$AdUnitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Stats$AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Stats$AdUnit$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/Stats$AdUnitOrBuilder;"
    }
.end annotation


# instance fields
.field private ecpm_:D

.field private finish_:J

.field private id_:Ljava/lang/Object;

.field private precache_:Z

.field private result_:I

.field private start_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 870
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1027
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->id_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1209
    iput v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->result_:I

    .line 871
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Stats$1;)V
    .locals 0

    .line 852
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 876
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1027
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->id_:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1209
    iput p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->result_:I

    .line 877
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Stats$1;)V
    .locals 0

    .line 852
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 858
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Stats_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 881
    invoke-static {}, Lcom/appodeal/ads/api/Stats$AdUnit;->access$200()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 965
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 2

    .line 915
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->buildPartial()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v0

    .line 916
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Stats$AdUnit;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 917
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->build()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->build()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 3

    .line 924
    new-instance v0, Lcom/appodeal/ads/api/Stats$AdUnit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Stats$AdUnit;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Stats$1;)V

    .line 925
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Stats$AdUnit;->access$402(Lcom/appodeal/ads/api/Stats$AdUnit;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    iget-wide v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->start_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Stats$AdUnit;->access$502(Lcom/appodeal/ads/api/Stats$AdUnit;J)J

    .line 927
    iget-wide v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->finish_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Stats$AdUnit;->access$602(Lcom/appodeal/ads/api/Stats$AdUnit;J)J

    .line 928
    iget v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->result_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Stats$AdUnit;->access$702(Lcom/appodeal/ads/api/Stats$AdUnit;I)I

    .line 929
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->precache_:Z

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Stats$AdUnit;->access$802(Lcom/appodeal/ads/api/Stats$AdUnit;Z)Z

    .line 930
    iget-wide v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->ecpm_:D

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Stats$AdUnit;->access$902(Lcom/appodeal/ads/api/Stats$AdUnit;D)D

    .line 931
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->buildPartial()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->buildPartial()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 2

    .line 886
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 887
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->id_:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 889
    iput-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->start_:J

    .line 891
    iput-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->finish_:J

    const/4 v0, 0x0

    .line 893
    iput v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->result_:I

    .line 895
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->precache_:Z

    const-wide/16 v0, 0x0

    .line 897
    iput-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->ecpm_:D

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clear()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clear()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clear()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clear()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEcpm()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1364
    iput-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->ecpm_:D

    .line 1365
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 948
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFinish()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1204
    iput-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->finish_:J

    .line 1205
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public clearId()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 1

    .line 1098
    invoke-static {}, Lcom/appodeal/ads/api/Stats$AdUnit;->getDefaultInstance()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->id_:Ljava/lang/Object;

    .line 1099
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 953
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPrecache()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1321
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->precache_:Z

    .line 1322
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public clearResult()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1278
    iput v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->result_:I

    .line 1279
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStart()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1161
    iput-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->start_:J

    .line 1162
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 1

    .line 937
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clone()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clone()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clone()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clone()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clone()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

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

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->clone()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1

    .line 910
    invoke-static {}, Lcom/appodeal/ads/api/Stats$AdUnit;->getDefaultInstance()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 905
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Stats_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEcpm()D
    .locals 2

    .line 1337
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->ecpm_:D

    return-wide v0
.end method

.method public getFinish()J
    .locals 2

    .line 1177
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->finish_:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->id_:Ljava/lang/Object;

    .line 1038
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1039
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1041
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1042
    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 1045
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->id_:Ljava/lang/Object;

    .line 1059
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1060
    check-cast v0, Ljava/lang/String;

    .line 1061
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1063
    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 1066
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getPrecache()Z
    .locals 1

    .line 1294
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->precache_:Z

    return v0
.end method

.method public getResult()Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;
    .locals 1

    .line 1247
    iget v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->result_:I

    invoke-static {v0}, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->valueOf(I)Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1248
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->UNRECOGNIZED:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    :cond_0
    return-object v0
.end method

.method public getResultValue()I
    .locals 1

    .line 1219
    iget v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->result_:I

    return v0
.end method

.method public getStart()J
    .locals 2

    .line 1134
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->start_:J

    return-wide v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 864
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Stats_AdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Stats$AdUnit;

    const-class v2, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    .line 865
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Stats$AdUnit;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 4

    .line 978
    invoke-static {}, Lcom/appodeal/ads/api/Stats$AdUnit;->getDefaultInstance()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 979
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 980
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->access$400(Lcom/appodeal/ads/api/Stats$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->id_:Ljava/lang/Object;

    .line 981
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    .line 983
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getStart()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 984
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getStart()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setStart(J)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    .line 986
    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getFinish()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 987
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getFinish()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setFinish(J)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    .line 989
    :cond_3
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->access$700(Lcom/appodeal/ads/api/Stats$AdUnit;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 990
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getResultValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setResultValue(I)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    .line 992
    :cond_4
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getPrecache()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 993
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getPrecache()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setPrecache(Z)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    .line 995
    :cond_5
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getEcpm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_6

    .line 996
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getEcpm()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setEcpm(D)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    .line 998
    :cond_6
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->access$1000(Lcom/appodeal/ads/api/Stats$AdUnit;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    .line 999
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1015
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Stats$AdUnit;->access$1100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1021
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeFrom(Lcom/appodeal/ads/api/Stats$AdUnit;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1017
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Stats$AdUnit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
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

    .line 1021
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeFrom(Lcom/appodeal/ads/api/Stats$AdUnit;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    .line 1023
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 1

    .line 969
    instance-of v0, p1, Lcom/appodeal/ads/api/Stats$AdUnit;

    if-eqz v0, :cond_0

    .line 970
    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeFrom(Lcom/appodeal/ads/api/Stats$AdUnit;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1

    .line 972
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

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

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

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

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

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

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

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 1377
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setEcpm(D)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 1350
    iput-wide p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->ecpm_:D

    .line 1351
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 943
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFinish(J)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 1190
    iput-wide p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->finish_:J

    .line 1191
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 1081
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1084
    iput-object p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->id_:Ljava/lang/Object;

    .line 1085
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 1114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1116
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->access$1200(Lcom/explorestack/protobuf/ByteString;)V

    .line 1118
    iput-object p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->id_:Ljava/lang/Object;

    .line 1119
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public setPrecache(Z)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 1307
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->precache_:Z

    .line 1308
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 959
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setResult(Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 1261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1264
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->result_:I

    .line 1265
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public setResultValue(I)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 1232
    iput p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->result_:I

    .line 1233
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public setStart(J)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 1147
    iput-wide p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->start_:J

    .line 1148
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 0

    .line 1371
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 852
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method
