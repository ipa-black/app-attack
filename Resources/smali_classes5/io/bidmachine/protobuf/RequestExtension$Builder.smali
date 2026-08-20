.class public final Lio/bidmachine/protobuf/RequestExtension$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "RequestExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/RequestExtension$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/RequestExtensionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bmIfv_:Ljava/lang/Object;

.field private headerBiddingType_:I

.field private ifv_:Ljava/lang/Object;

.field private sellerData_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sellerId_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 695
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 856
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1088
    iput v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1142
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1238
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1334
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 696
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 701
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 856
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1088
    iput v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1142
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1238
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1334
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 702
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RequestExtension$1;)V
    .locals 0

    .line 655
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/RequestExtension$1;)V
    .locals 0

    .line 655
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 661
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;
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

    .line 944
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    .line 945
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 946
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    .line 949
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 950
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    .line 952
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private internalGetSellerData()Lcom/explorestack/protobuf/MapField;
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

    .line 936
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 937
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 706
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 791
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->build()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->build()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/RequestExtension;
    .locals 2

    .line 739
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 741
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/RequestExtension;
    .locals 2

    .line 748
    new-instance v0, Lio/bidmachine/protobuf/RequestExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/RequestExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RequestExtension$1;)V

    .line 750
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$402(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$502(Lio/bidmachine/protobuf/RequestExtension;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 752
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestExtension;->access$500(Lio/bidmachine/protobuf/RequestExtension;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 753
    iget v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$602(Lio/bidmachine/protobuf/RequestExtension;I)I

    .line 754
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$702(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$802(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$902(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clear()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clear()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clear()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clear()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 2

    .line 711
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 712
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 714
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->clear()V

    const/4 v1, 0x0

    .line 715
    iput v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 717
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 719
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 721
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearBmIfv()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 1309
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1310
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 774
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public clearHeaderBiddingType()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1137
    iput v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1138
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIfv()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 1213
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->getIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1214
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 779
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public clearSellerData()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 1030
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1031
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearSellerId()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 911
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->getSellerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 912
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSessionId()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 1405
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1406
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 763
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsSellerData(Ljava/lang/String;)Z
    .locals 1

    .line 969
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 970
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBmIfv()Ljava/lang/String;
    .locals 2

    .line 1248
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1249
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1250
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1252
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1253
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 1256
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1269
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1270
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1271
    check-cast v0, Ljava/lang/String;

    .line 1272
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1274
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 1277
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestExtension;
    .locals 1

    .line 734
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 729
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHeaderBiddingType()Lio/bidmachine/protobuf/HeaderBiddingType;
    .locals 1

    .line 1114
    iget v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/HeaderBiddingType;->valueOf(I)Lio/bidmachine/protobuf/HeaderBiddingType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1115
    sget-object v0, Lio/bidmachine/protobuf/HeaderBiddingType;->UNRECOGNIZED:Lio/bidmachine/protobuf/HeaderBiddingType;

    :cond_0
    return-object v0
.end method

.method public getHeaderBiddingTypeValue()I
    .locals 1

    .line 1094
    iget v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    return v0
.end method

.method public getIfv()Ljava/lang/String;
    .locals 2

    .line 1152
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1153
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1154
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1156
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1157
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 1160
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1173
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1174
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1175
    check-cast v0, Ljava/lang/String;

    .line 1176
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1178
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 1181
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMutableSellerData()Ljava/util/Map;
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

    .line 1055
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSellerData()Ljava/util/Map;
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

    .line 978
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->getSellerDataMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSellerDataCount()I
    .locals 1

    .line 956
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getSellerDataMap()Ljava/util/Map;
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

    .line 990
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSellerDataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1004
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1006
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1007
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

.method public getSellerDataOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1020
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1022
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1023
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1024
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getSellerId()Ljava/lang/String;
    .locals 2

    .line 862
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 863
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 864
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 866
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 867
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 870
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 879
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 880
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 881
    check-cast v0, Ljava/lang/String;

    .line 882
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 884
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 887
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .line 1344
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1345
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1346
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1348
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1349
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 1352
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1365
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1366
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1367
    check-cast v0, Ljava/lang/String;

    .line 1368
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1370
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 1373
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 689
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RequestExtension;

    const-class v2, Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 690
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 669
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 671
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

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 680
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 682
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

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestExtension$Builder;

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

    .line 655
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;

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

    .line 655
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestExtension$Builder;

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

    .line 655
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 843
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->access$1200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 849
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 845
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/RequestExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
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

    .line 849
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 851
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 795
    instance-of v0, p1, Lio/bidmachine/protobuf/RequestExtension;

    if-eqz v0, :cond_0

    .line 796
    check-cast p1, Lio/bidmachine/protobuf/RequestExtension;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1

    .line 798
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 2

    .line 804
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 805
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getSellerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 806
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$400(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 807
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    .line 809
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 810
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1000(Lio/bidmachine/protobuf/RequestExtension;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 809
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 811
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$600(Lio/bidmachine/protobuf/RequestExtension;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 812
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getHeaderBiddingTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setHeaderBiddingTypeValue(I)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 814
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 815
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$700(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 816
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    .line 818
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 819
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$800(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 820
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    .line 822
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 823
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$900(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 824
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    .line 826
    :cond_5
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1100(Lio/bidmachine/protobuf/RequestExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 827
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1438
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public putAllSellerData(Ljava/util/Map;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/RequestExtension$Builder;"
        }
    .end annotation

    .line 1083
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1084
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putSellerData(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 1067
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1068
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1069
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1070
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeSellerData(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 1044
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1045
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1046
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1292
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1295
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1296
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public setBmIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1327
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1500(Lcom/explorestack/protobuf/ByteString;)V

    .line 1329
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1330
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 769
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public setHeaderBiddingType(Lio/bidmachine/protobuf/HeaderBiddingType;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1127
    invoke-virtual {p1}, Lio/bidmachine/protobuf/HeaderBiddingType;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1128
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public setHeaderBiddingTypeValue(I)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1103
    iput p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1104
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1199
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1200
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1231
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1400(Lcom/explorestack/protobuf/ByteString;)V

    .line 1233
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1234
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 785
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public setSellerId(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 898
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 901
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 902
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public setSellerIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 923
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 925
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 927
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 928
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1388
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1391
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1392
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1421
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1423
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1600(Lcom/explorestack/protobuf/ByteString;)V

    .line 1425
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1426
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1432
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method
