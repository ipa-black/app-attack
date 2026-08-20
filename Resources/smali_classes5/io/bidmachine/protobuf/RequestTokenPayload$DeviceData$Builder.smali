.class public final Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "RequestTokenPayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestTokenPayload$DeviceDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/RequestTokenPayload$DeviceDataOrBuilder;"
    }
.end annotation


# instance fields
.field private access_:Ljava/lang/Object;

.field private airplane_:Z

.field private atts_:I

.field private batterylevel_:F

.field private batterysaver_:Z

.field private bitField0_:I

.field private bmIfv_:Ljava/lang/Object;

.field private charging_:Z

.field private darkmode_:Z

.field private devicename_:Ljava/lang/Object;

.field private diskspace_:J

.field private dnd_:Z

.field private headset_:Z

.field private headsetname_:Ljava/lang/Object;

.field private ifv_:Ljava/lang/Object;

.field private inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

.field private jailbreak_:Z

.field private lastbootup_:J

.field private ringmute_:Z

.field private screenbright_:F

.field private time_:J

.field private totaldisk_:J

.field private totalmem_:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 4742
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 5012
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ifv_:Ljava/lang/Object;

    .line 5108
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5204
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5822
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->devicename_:Ljava/lang/Object;

    .line 6096
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->access_:Ljava/lang/Object;

    .line 6197
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headsetname_:Ljava/lang/Object;

    .line 4743
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 4748
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 5012
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ifv_:Ljava/lang/Object;

    .line 5108
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5204
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5822
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->devicename_:Ljava/lang/Object;

    .line 6096
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->access_:Ljava/lang/Object;

    .line 6197
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headsetname_:Ljava/lang/Object;

    .line 4749
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 4724
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 4724
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;-><init>()V

    return-void
.end method

.method private ensureInputlanguageIsMutable()V
    .locals 2

    .line 5206
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 5207
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5208
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4730
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_DeviceData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 4753
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4000()Z

    return-void
.end method


# virtual methods
.method public addAllInputlanguage(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;"
        }
    .end annotation

    .line 5323
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ensureInputlanguageIsMutable()V

    .line 5324
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5326
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public addInputlanguage(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 5303
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5305
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ensureInputlanguageIsMutable()V

    .line 5306
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 5307
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public addInputlanguageBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 5359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5361
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$6800(Lcom/explorestack/protobuf/ByteString;)V

    .line 5362
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ensureInputlanguageIsMutable()V

    .line 5363
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 5364
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 4890
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 2

    .line 4819
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    .line 4820
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4821
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 3

    .line 4828
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    .line 4830
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ifv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4202(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4831
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bmIfv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4302(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4832
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4833
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 4834
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bitField0_:I

    .line 4836
    :cond_0
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4402(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 4837
    iget-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->diskspace_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4502(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;J)J

    .line 4838
    iget-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->totaldisk_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4602(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;J)J

    .line 4839
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ringmute_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4702(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z

    .line 4840
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->charging_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4802(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z

    .line 4841
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headset_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4902(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z

    .line 4842
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->batterylevel_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$5002(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;F)F

    .line 4843
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->batterysaver_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$5102(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z

    .line 4844
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->darkmode_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$5202(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z

    .line 4845
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->airplane_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$5302(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z

    .line 4846
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->dnd_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$5402(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z

    .line 4847
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->devicename_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$5502(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4848
    iget-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->time_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$5602(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;J)J

    .line 4849
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->screenbright_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$5702(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;F)F

    .line 4850
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->jailbreak_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$5802(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z

    .line 4851
    iget-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->lastbootup_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$5902(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;J)J

    .line 4852
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->access_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$6002(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4853
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headsetname_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$6102(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4854
    iget-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->totalmem_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$6202(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;J)J

    .line 4855
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->atts_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$6302(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;I)I

    .line 4856
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 5

    .line 4758
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 4759
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ifv_:Ljava/lang/Object;

    .line 4761
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bmIfv_:Ljava/lang/Object;

    .line 4763
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 4764
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 4765
    iput-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->diskspace_:J

    .line 4767
    iput-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->totaldisk_:J

    const/4 v3, 0x0

    .line 4769
    iput-boolean v3, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ringmute_:Z

    .line 4771
    iput-boolean v3, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->charging_:Z

    .line 4773
    iput-boolean v3, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headset_:Z

    const/4 v4, 0x0

    .line 4775
    iput v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->batterylevel_:F

    .line 4777
    iput-boolean v3, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->batterysaver_:Z

    .line 4779
    iput-boolean v3, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->darkmode_:Z

    .line 4781
    iput-boolean v3, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->airplane_:Z

    .line 4783
    iput-boolean v3, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->dnd_:Z

    .line 4785
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->devicename_:Ljava/lang/Object;

    .line 4787
    iput-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->time_:J

    .line 4789
    iput v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->screenbright_:F

    .line 4791
    iput-boolean v3, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->jailbreak_:Z

    .line 4793
    iput-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->lastbootup_:J

    .line 4795
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->access_:Ljava/lang/Object;

    .line 4797
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headsetname_:Ljava/lang/Object;

    .line 4799
    iput-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->totalmem_:J

    .line 4801
    iput v3, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->atts_:I

    return-object p0
.end method

.method public clearAccess()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 6171
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAccess()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->access_:Ljava/lang/Object;

    .line 6172
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAirplane()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5771
    iput-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->airplane_:Z

    .line 5772
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAtts()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 6392
    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->atts_:I

    .line 6393
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBatterylevel()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5639
    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->batterylevel_:F

    .line 5640
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBatterysaver()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5682
    iput-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->batterysaver_:Z

    .line 5683
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBmIfv()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 5179
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5180
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCharging()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5553
    iput-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->charging_:Z

    .line 5554
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDarkmode()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5725
    iput-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->darkmode_:Z

    .line 5726
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDevicename()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 5893
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDevicename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->devicename_:Ljava/lang/Object;

    .line 5894
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDiskspace()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 5412
    iput-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->diskspace_:J

    .line 5413
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDnd()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5817
    iput-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->dnd_:Z

    .line 5818
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 4873
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    return-object p1
.end method

.method public clearHeadset()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5596
    iput-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headset_:Z

    .line 5597
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHeadsetname()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 6268
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getHeadsetname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headsetname_:Ljava/lang/Object;

    .line 6269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIfv()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 5083
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ifv_:Ljava/lang/Object;

    .line 5084
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInputlanguage()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 5340
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5341
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bitField0_:I

    .line 5342
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearJailbreak()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 6045
    iput-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->jailbreak_:Z

    .line 6046
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLastbootup()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 6091
    iput-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->lastbootup_:J

    .line 6092
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 4878
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    return-object p1
.end method

.method public clearRingmute()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5510
    iput-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ringmute_:Z

    .line 5511
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearScreenbright()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 6002
    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->screenbright_:F

    .line 6003
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTime()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 5956
    iput-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->time_:J

    .line 5957
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTotaldisk()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 5461
    iput-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->totaldisk_:J

    .line 5462
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTotalmem()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 6331
    iput-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->totalmem_:J

    .line 6332
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 4862
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccess()Ljava/lang/String;
    .locals 2

    .line 6107
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->access_:Ljava/lang/Object;

    .line 6108
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6109
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6111
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6112
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->access_:Ljava/lang/Object;

    return-object v0

    .line 6115
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAccessBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 6129
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->access_:Ljava/lang/Object;

    .line 6130
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6131
    check-cast v0, Ljava/lang/String;

    .line 6132
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6134
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->access_:Ljava/lang/Object;

    return-object v0

    .line 6137
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getAirplane()Z
    .locals 1

    .line 5742
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->airplane_:Z

    return v0
.end method

.method public getAtts()I
    .locals 1

    .line 6353
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->atts_:I

    return v0
.end method

.method public getBatterylevel()F
    .locals 1

    .line 5612
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->batterylevel_:F

    return v0
.end method

.method public getBatterysaver()Z
    .locals 1

    .line 5655
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->batterysaver_:Z

    return v0
.end method

.method public getBmIfv()Ljava/lang/String;
    .locals 2

    .line 5118
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5119
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5120
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5122
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5123
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 5126
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 5139
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5140
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5141
    check-cast v0, Ljava/lang/String;

    .line 5142
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5144
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 5147
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCharging()Z
    .locals 1

    .line 5526
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->charging_:Z

    return v0
.end method

.method public getDarkmode()Z
    .locals 1

    .line 5698
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->darkmode_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1

    .line 4814
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4809
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_DeviceData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDevicename()Ljava/lang/String;
    .locals 2

    .line 5832
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->devicename_:Ljava/lang/Object;

    .line 5833
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5834
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5836
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5837
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->devicename_:Ljava/lang/Object;

    return-object v0

    .line 5840
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDevicenameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 5853
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->devicename_:Ljava/lang/Object;

    .line 5854
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5855
    check-cast v0, Ljava/lang/String;

    .line 5856
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5858
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->devicename_:Ljava/lang/Object;

    return-object v0

    .line 5861
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDiskspace()J
    .locals 2

    .line 5381
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->diskspace_:J

    return-wide v0
.end method

.method public getDnd()Z
    .locals 1

    .line 5788
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->dnd_:Z

    return v0
.end method

.method public getHeadset()Z
    .locals 1

    .line 5569
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headset_:Z

    return v0
.end method

.method public getHeadsetname()Ljava/lang/String;
    .locals 2

    .line 6207
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headsetname_:Ljava/lang/Object;

    .line 6208
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6209
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6211
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6212
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headsetname_:Ljava/lang/Object;

    return-object v0

    .line 6215
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeadsetnameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 6228
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headsetname_:Ljava/lang/Object;

    .line 6229
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6230
    check-cast v0, Ljava/lang/String;

    .line 6231
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6233
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headsetname_:Ljava/lang/Object;

    return-object v0

    .line 6236
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfv()Ljava/lang/String;
    .locals 2

    .line 5022
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ifv_:Ljava/lang/Object;

    .line 5023
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5024
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5026
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5027
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 5030
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 5043
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ifv_:Ljava/lang/Object;

    .line 5044
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5045
    check-cast v0, Ljava/lang/String;

    .line 5046
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5048
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 5051
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getInputlanguage(I)Ljava/lang/String;
    .locals 1

    .line 5250
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getInputlanguageBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 5265
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputlanguageCount()I
    .locals 1

    .line 5236
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 5223
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInputlanguageList()Ljava/util/List;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getJailbreak()Z
    .locals 1

    .line 6018
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->jailbreak_:Z

    return v0
.end method

.method public getLastbootup()J
    .locals 2

    .line 6062
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->lastbootup_:J

    return-wide v0
.end method

.method public getRingmute()Z
    .locals 1

    .line 5479
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ringmute_:Z

    return v0
.end method

.method public getScreenbright()F
    .locals 1

    .line 5973
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->screenbright_:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 5929
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->time_:J

    return-wide v0
.end method

.method public getTotaldisk()J
    .locals 2

    .line 5430
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->totaldisk_:J

    return-wide v0
.end method

.method public getTotalmem()J
    .locals 2

    .line 6304
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->totalmem_:J

    return-wide v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 4736
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_DeviceData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    const-class v2, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4737
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

    .line 4724
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

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

    .line 4724
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

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

    .line 4724
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

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

    .line 4724
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4999
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$6500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5005
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5001
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5002
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

    .line 5005
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 5007
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 4894
    instance-of v0, p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    if-eqz v0, :cond_0

    .line 4895
    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1

    .line 4897
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 6

    .line 4903
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4904
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4905
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4200(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ifv_:Ljava/lang/Object;

    .line 4906
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    .line 4908
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4909
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4300(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bmIfv_:Ljava/lang/Object;

    .line 4910
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    .line 4912
    :cond_2
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4400(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4913
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4914
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4400(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 4915
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bitField0_:I

    goto :goto_0

    .line 4917
    :cond_3
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ensureInputlanguageIsMutable()V

    .line 4918
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$4400(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 4920
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    .line 4922
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDiskspace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 4923
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDiskspace()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setDiskspace(J)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4925
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTotaldisk()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 4926
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTotaldisk()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setTotaldisk(J)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4928
    :cond_6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getRingmute()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4929
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getRingmute()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setRingmute(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4931
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getCharging()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4932
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getCharging()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setCharging(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4934
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getHeadset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4935
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getHeadset()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setHeadset(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4937
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBatterylevel()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 4938
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBatterylevel()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setBatterylevel(F)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4940
    :cond_a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBatterysaver()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4941
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBatterysaver()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setBatterysaver(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4943
    :cond_b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDarkmode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4944
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDarkmode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setDarkmode(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4946
    :cond_c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAirplane()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4947
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAirplane()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setAirplane(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4949
    :cond_d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDnd()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4950
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDnd()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setDnd(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4952
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDevicename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4953
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$5500(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->devicename_:Ljava/lang/Object;

    .line 4954
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    .line 4956
    :cond_f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTime()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_10

    .line 4957
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setTime(J)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4959
    :cond_10
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getScreenbright()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    .line 4960
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getScreenbright()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setScreenbright(F)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4962
    :cond_11
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getJailbreak()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4963
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getJailbreak()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setJailbreak(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4965
    :cond_12
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getLastbootup()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 4966
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getLastbootup()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setLastbootup(J)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4968
    :cond_13
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAccess()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 4969
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$6000(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->access_:Ljava/lang/Object;

    .line 4970
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    .line 4972
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getHeadsetname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 4973
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$6100(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headsetname_:Ljava/lang/Object;

    .line 4974
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    .line 4976
    :cond_15
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTotalmem()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 4977
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTotalmem()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setTotalmem(J)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4979
    :cond_16
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAtts()I

    move-result v0

    if-eqz v0, :cond_17

    .line 4980
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAtts()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setAtts(I)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4982
    :cond_17
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$6400(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 4983
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 6405
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    return-object p1
.end method

.method public setAccess(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 6153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6156
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->access_:Ljava/lang/Object;

    .line 6157
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setAccessBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 6188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6190
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$7000(Lcom/explorestack/protobuf/ByteString;)V

    .line 6192
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->access_:Ljava/lang/Object;

    .line 6193
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setAirplane(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5756
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->airplane_:Z

    .line 5757
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setAtts(I)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 6372
    iput p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->atts_:I

    .line 6373
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setBatterylevel(F)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5625
    iput p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->batterylevel_:F

    .line 5626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setBatterysaver(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5668
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->batterysaver_:Z

    .line 5669
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5165
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5166
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setBmIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5197
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$6700(Lcom/explorestack/protobuf/ByteString;)V

    .line 5199
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5200
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setCharging(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5539
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->charging_:Z

    .line 5540
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setDarkmode(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5711
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->darkmode_:Z

    .line 5712
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setDevicename(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5876
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5879
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->devicename_:Ljava/lang/Object;

    .line 5880
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setDevicenameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5909
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5911
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$6900(Lcom/explorestack/protobuf/ByteString;)V

    .line 5913
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->devicename_:Ljava/lang/Object;

    .line 5914
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setDiskspace(J)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5396
    iput-wide p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->diskspace_:J

    .line 5397
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setDnd(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5802
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->dnd_:Z

    .line 5803
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 4868
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    return-object p1
.end method

.method public setHeadset(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5582
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headset_:Z

    .line 5583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setHeadsetname(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 6251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6254
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headsetname_:Ljava/lang/Object;

    .line 6255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setHeadsetnameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 6284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6286
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$7100(Lcom/explorestack/protobuf/ByteString;)V

    .line 6288
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->headsetname_:Ljava/lang/Object;

    .line 6289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5066
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5069
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ifv_:Ljava/lang/Object;

    .line 5070
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5099
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5101
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access$6600(Lcom/explorestack/protobuf/ByteString;)V

    .line 5103
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ifv_:Ljava/lang/Object;

    .line 5104
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setInputlanguage(ILjava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 5282
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5284
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ensureInputlanguageIsMutable()V

    .line 5285
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5286
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setJailbreak(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 6031
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->jailbreak_:Z

    .line 6032
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setLastbootup(J)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 6076
    iput-wide p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->lastbootup_:J

    .line 6077
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 4884
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    return-object p1
.end method

.method public setRingmute(Z)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5494
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->ringmute_:Z

    .line 5495
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setScreenbright(F)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5987
    iput p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->screenbright_:F

    .line 5988
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setTime(J)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5942
    iput-wide p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->time_:J

    .line 5943
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setTotaldisk(J)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 5445
    iput-wide p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->totaldisk_:J

    .line 5446
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public setTotalmem(J)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 6317
    iput-wide p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->totalmem_:J

    .line 6318
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4724
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 0

    .line 6399
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    return-object p1
.end method
