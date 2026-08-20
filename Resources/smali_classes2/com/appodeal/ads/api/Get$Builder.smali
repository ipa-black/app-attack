.class public final Lcom/appodeal/ads/api/Get$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Get.java"

# interfaces
.implements Lcom/appodeal/ads/api/GetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Get;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Get$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/GetOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private checkSdkVersion_:Z

.field private debug_:Z

.field private largeBanners_:Z

.field private rewardedVideo_:Z

.field private showArray_:Lcom/explorestack/protobuf/LazyStringList;

.field private type_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 529
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 699
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->type_:Ljava/lang/Object;

    .line 924
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    .line 530
    invoke-direct {p0}, Lcom/appodeal/ads/api/Get$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Get$1;)V
    .locals 0

    .line 511
    invoke-direct {p0}, Lcom/appodeal/ads/api/Get$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 535
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 699
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/Get$Builder;->type_:Ljava/lang/Object;

    .line 924
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    .line 536
    invoke-direct {p0}, Lcom/appodeal/ads/api/Get$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Get$1;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureShowArrayIsMutable()V
    .locals 2

    .line 926
    iget v0, p0, Lcom/appodeal/ads/api/Get$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 927
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    .line 928
    iget v0, p0, Lcom/appodeal/ads/api/Get$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/api/Get$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 517
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Get_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 540
    invoke-static {}, Lcom/appodeal/ads/api/Get;->access$200()Z

    return-void
.end method


# virtual methods
.method public addAllShowArray(Ljava/lang/Iterable;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appodeal/ads/api/Get$Builder;"
        }
    .end annotation

    .line 1029
    invoke-direct {p0}, Lcom/appodeal/ads/api/Get$Builder;->ensureShowArrayIsMutable()V

    .line 1030
    iget-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1032
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 0

    .line 629
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Get$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Get$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Get$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addShowArray(Ljava/lang/String;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 1

    .line 1011
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1013
    invoke-direct {p0}, Lcom/appodeal/ads/api/Get$Builder;->ensureShowArrayIsMutable()V

    .line 1014
    iget-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1015
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public addShowArrayBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 1

    .line 1061
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1063
    invoke-static {p1}, Lcom/appodeal/ads/api/Get;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1064
    invoke-direct {p0}, Lcom/appodeal/ads/api/Get$Builder;->ensureShowArrayIsMutable()V

    .line 1065
    iget-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 1066
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public build()Lcom/appodeal/ads/api/Get;
    .locals 2

    .line 574
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->buildPartial()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Get;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 576
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Get$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->build()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->build()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Get;
    .locals 2

    .line 583
    new-instance v0, Lcom/appodeal/ads/api/Get;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Get;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Get$1;)V

    .line 585
    iget-object v1, p0, Lcom/appodeal/ads/api/Get$Builder;->type_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Get;->access$402(Lcom/appodeal/ads/api/Get;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Get$Builder;->largeBanners_:Z

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Get;->access$502(Lcom/appodeal/ads/api/Get;Z)Z

    .line 587
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Get$Builder;->rewardedVideo_:Z

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Get;->access$602(Lcom/appodeal/ads/api/Get;Z)Z

    .line 588
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Get$Builder;->debug_:Z

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Get;->access$702(Lcom/appodeal/ads/api/Get;Z)Z

    .line 589
    iget v1, p0, Lcom/appodeal/ads/api/Get$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    .line 591
    iget v1, p0, Lcom/appodeal/ads/api/Get$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/appodeal/ads/api/Get$Builder;->bitField0_:I

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Get;->access$802(Lcom/appodeal/ads/api/Get;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 594
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Get$Builder;->checkSdkVersion_:Z

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Get;->access$902(Lcom/appodeal/ads/api/Get;Z)Z

    .line 595
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->buildPartial()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->buildPartial()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Get$Builder;
    .locals 2

    .line 545
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 546
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->type_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Get$Builder;->largeBanners_:Z

    .line 550
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Get$Builder;->rewardedVideo_:Z

    .line 552
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Get$Builder;->debug_:Z

    .line 554
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    .line 555
    iget v1, p0, Lcom/appodeal/ads/api/Get$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/appodeal/ads/api/Get$Builder;->bitField0_:I

    .line 556
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Get$Builder;->checkSdkVersion_:Z

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->clear()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->clear()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->clear()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->clear()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCheckSdkVersion()Lcom/appodeal/ads/api/Get$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1108
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Get$Builder;->checkSdkVersion_:Z

    .line 1109
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDebug()Lcom/appodeal/ads/api/Get$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 919
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Get$Builder;->debug_:Z

    .line 920
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 0

    .line 612
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Get$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearLargeBanners()Lcom/appodeal/ads/api/Get$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 833
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Get$Builder;->largeBanners_:Z

    .line 834
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 0

    .line 617
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Get$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearRewardedVideo()Lcom/appodeal/ads/api/Get$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 876
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Get$Builder;->rewardedVideo_:Z

    .line 877
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public clearShowArray()Lcom/appodeal/ads/api/Get$Builder;
    .locals 1

    .line 1044
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1045
    iget v0, p0, Lcom/appodeal/ads/api/Get$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/appodeal/ads/api/Get$Builder;->bitField0_:I

    .line 1046
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public clearType()Lcom/appodeal/ads/api/Get$Builder;
    .locals 1

    .line 770
    invoke-static {}, Lcom/appodeal/ads/api/Get;->getDefaultInstance()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Get;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->type_:Ljava/lang/Object;

    .line 771
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/Get$Builder;
    .locals 1

    .line 601
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Get$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->clone()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->clone()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->clone()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->clone()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->clone()Lcom/appodeal/ads/api/Get$Builder;

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

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->clone()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCheckSdkVersion()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1081
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Get$Builder;->checkSdkVersion_:Z

    return v0
.end method

.method public getDebug()Z
    .locals 1

    .line 892
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Get$Builder;->debug_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Get;
    .locals 1

    .line 569
    invoke-static {}, Lcom/appodeal/ads/api/Get;->getDefaultInstance()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 564
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Get_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getLargeBanners()Z
    .locals 1

    .line 806
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Get$Builder;->largeBanners_:Z

    return v0
.end method

.method public getRewardedVideo()Z
    .locals 1

    .line 849
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Get$Builder;->rewardedVideo_:Z

    return v0
.end method

.method public getShowArray(I)Ljava/lang/String;
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getShowArrayBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getShowArrayCount()I
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getShowArrayList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShowArrayList()Ljava/util/List;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->getShowArrayList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->type_:Ljava/lang/Object;

    .line 710
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 711
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 713
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 714
    iput-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->type_:Ljava/lang/Object;

    return-object v0

    .line 717
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->type_:Ljava/lang/Object;

    .line 731
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 732
    check-cast v0, Ljava/lang/String;

    .line 733
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 735
    iput-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->type_:Ljava/lang/Object;

    return-object v0

    .line 738
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 523
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Get_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Get;

    const-class v2, Lcom/appodeal/ads/api/Get$Builder;

    .line 524
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Get;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 2

    .line 642
    invoke-static {}, Lcom/appodeal/ads/api/Get;->getDefaultInstance()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 643
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    invoke-static {p1}, Lcom/appodeal/ads/api/Get;->access$400(Lcom/appodeal/ads/api/Get;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->type_:Ljava/lang/Object;

    .line 645
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    .line 647
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getLargeBanners()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getLargeBanners()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Get$Builder;->setLargeBanners(Z)Lcom/appodeal/ads/api/Get$Builder;

    .line 650
    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getRewardedVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 651
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getRewardedVideo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Get$Builder;->setRewardedVideo(Z)Lcom/appodeal/ads/api/Get$Builder;

    .line 653
    :cond_3
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 654
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getDebug()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Get$Builder;->setDebug(Z)Lcom/appodeal/ads/api/Get$Builder;

    .line 656
    :cond_4
    invoke-static {p1}, Lcom/appodeal/ads/api/Get;->access$800(Lcom/appodeal/ads/api/Get;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 657
    iget-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 658
    invoke-static {p1}, Lcom/appodeal/ads/api/Get;->access$800(Lcom/appodeal/ads/api/Get;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    .line 659
    iget v0, p0, Lcom/appodeal/ads/api/Get$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/appodeal/ads/api/Get$Builder;->bitField0_:I

    goto :goto_0

    .line 661
    :cond_5
    invoke-direct {p0}, Lcom/appodeal/ads/api/Get$Builder;->ensureShowArrayIsMutable()V

    .line 662
    iget-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/appodeal/ads/api/Get;->access$800(Lcom/appodeal/ads/api/Get;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 664
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    .line 666
    :cond_6
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getCheckSdkVersion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 667
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getCheckSdkVersion()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Get$Builder;->setCheckSdkVersion(Z)Lcom/appodeal/ads/api/Get$Builder;

    .line 669
    :cond_7
    invoke-static {p1}, Lcom/appodeal/ads/api/Get;->access$1000(Lcom/appodeal/ads/api/Get;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Get$Builder;

    .line 670
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 686
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Get;->access$1100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Get;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 692
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->mergeFrom(Lcom/appodeal/ads/api/Get;)Lcom/appodeal/ads/api/Get$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 688
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Get;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
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

    .line 692
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Get$Builder;->mergeFrom(Lcom/appodeal/ads/api/Get;)Lcom/appodeal/ads/api/Get$Builder;

    .line 694
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 1

    .line 633
    instance-of v0, p1, Lcom/appodeal/ads/api/Get;

    if-eqz v0, :cond_0

    .line 634
    check-cast p1, Lcom/appodeal/ads/api/Get;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->mergeFrom(Lcom/appodeal/ads/api/Get;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1

    .line 636
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

    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Get$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Get$Builder;

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

    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Get$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Get$Builder;

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

    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Get$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Get$Builder;

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

    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Get$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 0

    .line 1121
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Get$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCheckSdkVersion(Z)Lcom/appodeal/ads/api/Get$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1094
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Get$Builder;->checkSdkVersion_:Z

    .line 1095
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public setDebug(Z)Lcom/appodeal/ads/api/Get$Builder;
    .locals 0

    .line 905
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Get$Builder;->debug_:Z

    .line 906
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 0

    .line 607
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Get$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Get$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Get$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLargeBanners(Z)Lcom/appodeal/ads/api/Get$Builder;
    .locals 0

    .line 819
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Get$Builder;->largeBanners_:Z

    .line 820
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 0

    .line 623
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Get$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Get$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Get$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRewardedVideo(Z)Lcom/appodeal/ads/api/Get$Builder;
    .locals 0

    .line 862
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Get$Builder;->rewardedVideo_:Z

    .line 863
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public setShowArray(ILjava/lang/String;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 1

    .line 992
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 994
    invoke-direct {p0}, Lcom/appodeal/ads/api/Get$Builder;->ensureShowArrayIsMutable()V

    .line 995
    iget-object v0, p0, Lcom/appodeal/ads/api/Get$Builder;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 996
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 0

    .line 753
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 756
    iput-object p1, p0, Lcom/appodeal/ads/api/Get$Builder;->type_:Ljava/lang/Object;

    .line 757
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public setTypeBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 0

    .line 786
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 788
    invoke-static {p1}, Lcom/appodeal/ads/api/Get;->access$1200(Lcom/explorestack/protobuf/ByteString;)V

    .line 790
    iput-object p1, p0, Lcom/appodeal/ads/api/Get$Builder;->type_:Ljava/lang/Object;

    .line 791
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 0

    .line 1115
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Get$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method
