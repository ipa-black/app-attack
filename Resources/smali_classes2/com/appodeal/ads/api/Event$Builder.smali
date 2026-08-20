.class public final Lcom/appodeal/ads/api/Event$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Event.java"

# interfaces
.implements Lcom/appodeal/ads/api/EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Event$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/EventOrBuilder;"
    }
.end annotation


# instance fields
.field private amount_:F

.field private currency_:Ljava/lang/Object;

.field private eventType_:I

.field private id_:Ljava/lang/Object;

.field private placementId_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 625
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 777
    iput v0, p0, Lcom/appodeal/ads/api/Event$Builder;->eventType_:I

    .line 851
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->id_:Ljava/lang/Object;

    .line 990
    iput-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->currency_:Ljava/lang/Object;

    .line 626
    invoke-direct {p0}, Lcom/appodeal/ads/api/Event$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Event$1;)V
    .locals 0

    .line 607
    invoke-direct {p0}, Lcom/appodeal/ads/api/Event$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 631
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 777
    iput p1, p0, Lcom/appodeal/ads/api/Event$Builder;->eventType_:I

    .line 851
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/Event$Builder;->id_:Ljava/lang/Object;

    .line 990
    iput-object p1, p0, Lcom/appodeal/ads/api/Event$Builder;->currency_:Ljava/lang/Object;

    .line 632
    invoke-direct {p0}, Lcom/appodeal/ads/api/Event$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Event$1;)V
    .locals 0

    .line 607
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 613
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Event_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 636
    invoke-static {}, Lcom/appodeal/ads/api/Event;->access$200()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 717
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Event$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Event$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Event$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/Event;
    .locals 2

    .line 668
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->buildPartial()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Event;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 670
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Event$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->build()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->build()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Event;
    .locals 2

    .line 677
    new-instance v0, Lcom/appodeal/ads/api/Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Event;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Event$1;)V

    .line 678
    iget v1, p0, Lcom/appodeal/ads/api/Event$Builder;->eventType_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Event;->access$402(Lcom/appodeal/ads/api/Event;I)I

    .line 679
    iget-object v1, p0, Lcom/appodeal/ads/api/Event$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Event;->access$502(Lcom/appodeal/ads/api/Event;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget v1, p0, Lcom/appodeal/ads/api/Event$Builder;->placementId_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Event;->access$602(Lcom/appodeal/ads/api/Event;I)I

    .line 681
    iget-object v1, p0, Lcom/appodeal/ads/api/Event$Builder;->currency_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Event;->access$702(Lcom/appodeal/ads/api/Event;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget v1, p0, Lcom/appodeal/ads/api/Event$Builder;->amount_:F

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Event;->access$802(Lcom/appodeal/ads/api/Event;F)F

    .line 683
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->buildPartial()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->buildPartial()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Event$Builder;
    .locals 2

    .line 641
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 642
    iput v0, p0, Lcom/appodeal/ads/api/Event$Builder;->eventType_:I

    .line 644
    const-string v1, ""

    iput-object v1, p0, Lcom/appodeal/ads/api/Event$Builder;->id_:Ljava/lang/Object;

    .line 646
    iput v0, p0, Lcom/appodeal/ads/api/Event$Builder;->placementId_:I

    .line 648
    iput-object v1, p0, Lcom/appodeal/ads/api/Event$Builder;->currency_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 650
    iput v0, p0, Lcom/appodeal/ads/api/Event$Builder;->amount_:F

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->clear()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->clear()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->clear()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->clear()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAmount()Lcom/appodeal/ads/api/Event$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1124
    iput v0, p0, Lcom/appodeal/ads/api/Event$Builder;->amount_:F

    .line 1125
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCurrency()Lcom/appodeal/ads/api/Event$Builder;
    .locals 1

    .line 1061
    invoke-static {}, Lcom/appodeal/ads/api/Event;->getDefaultInstance()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Event;->getCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->currency_:Ljava/lang/Object;

    .line 1062
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEventType()Lcom/appodeal/ads/api/Event$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 846
    iput v0, p0, Lcom/appodeal/ads/api/Event$Builder;->eventType_:I

    .line 847
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 700
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Event$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearId()Lcom/appodeal/ads/api/Event$Builder;
    .locals 1

    .line 922
    invoke-static {}, Lcom/appodeal/ads/api/Event;->getDefaultInstance()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Event;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->id_:Ljava/lang/Object;

    .line 923
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 705
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Event$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPlacementId()Lcom/appodeal/ads/api/Event$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 985
    iput v0, p0, Lcom/appodeal/ads/api/Event$Builder;->placementId_:I

    .line 986
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/Event$Builder;
    .locals 1

    .line 689
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Event$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->clone()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->clone()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->clone()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->clone()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->clone()Lcom/appodeal/ads/api/Event$Builder;

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

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->clone()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAmount()F
    .locals 1

    .line 1097
    iget v0, p0, Lcom/appodeal/ads/api/Event$Builder;->amount_:F

    return v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->currency_:Ljava/lang/Object;

    .line 1001
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1002
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1004
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1005
    iput-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->currency_:Ljava/lang/Object;

    return-object v0

    .line 1008
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->currency_:Ljava/lang/Object;

    .line 1022
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1023
    check-cast v0, Ljava/lang/String;

    .line 1024
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1026
    iput-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->currency_:Ljava/lang/Object;

    return-object v0

    .line 1029
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Event;
    .locals 1

    .line 663
    invoke-static {}, Lcom/appodeal/ads/api/Event;->getDefaultInstance()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 658
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Event_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEventType()Lcom/appodeal/ads/api/Event$EventType;
    .locals 1

    .line 815
    iget v0, p0, Lcom/appodeal/ads/api/Event$Builder;->eventType_:I

    invoke-static {v0}, Lcom/appodeal/ads/api/Event$EventType;->valueOf(I)Lcom/appodeal/ads/api/Event$EventType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 816
    sget-object v0, Lcom/appodeal/ads/api/Event$EventType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Event$EventType;

    :cond_0
    return-object v0
.end method

.method public getEventTypeValue()I
    .locals 1

    .line 787
    iget v0, p0, Lcom/appodeal/ads/api/Event$Builder;->eventType_:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->id_:Ljava/lang/Object;

    .line 862
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 863
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 865
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 866
    iput-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 869
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 882
    iget-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->id_:Ljava/lang/Object;

    .line 883
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 884
    check-cast v0, Ljava/lang/String;

    .line 885
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 887
    iput-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 890
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getPlacementId()I
    .locals 1

    .line 958
    iget v0, p0, Lcom/appodeal/ads/api/Event$Builder;->placementId_:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 619
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Event_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Event;

    const-class v2, Lcom/appodeal/ads/api/Event$Builder;

    .line 620
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Event;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 2

    .line 730
    invoke-static {}, Lcom/appodeal/ads/api/Event;->getDefaultInstance()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 731
    :cond_0
    invoke-static {p1}, Lcom/appodeal/ads/api/Event;->access$400(Lcom/appodeal/ads/api/Event;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Event;->getEventTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Event$Builder;->setEventTypeValue(I)Lcom/appodeal/ads/api/Event$Builder;

    .line 734
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Event;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 735
    invoke-static {p1}, Lcom/appodeal/ads/api/Event;->access$500(Lcom/appodeal/ads/api/Event;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->id_:Ljava/lang/Object;

    .line 736
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    .line 738
    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Event;->getPlacementId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 739
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Event;->getPlacementId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Event$Builder;->setPlacementId(I)Lcom/appodeal/ads/api/Event$Builder;

    .line 741
    :cond_3
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Event;->getCurrency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 742
    invoke-static {p1}, Lcom/appodeal/ads/api/Event;->access$700(Lcom/appodeal/ads/api/Event;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Event$Builder;->currency_:Ljava/lang/Object;

    .line 743
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    .line 745
    :cond_4
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Event;->getAmount()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 746
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Event;->getAmount()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Event$Builder;->setAmount(F)Lcom/appodeal/ads/api/Event$Builder;

    .line 748
    :cond_5
    invoke-static {p1}, Lcom/appodeal/ads/api/Event;->access$900(Lcom/appodeal/ads/api/Event;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Event$Builder;

    .line 749
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 765
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Event;->access$1000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Event;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 771
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->mergeFrom(Lcom/appodeal/ads/api/Event;)Lcom/appodeal/ads/api/Event$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 767
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Event;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
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

    .line 771
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Event$Builder;->mergeFrom(Lcom/appodeal/ads/api/Event;)Lcom/appodeal/ads/api/Event$Builder;

    .line 773
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 1

    .line 721
    instance-of v0, p1, Lcom/appodeal/ads/api/Event;

    if-eqz v0, :cond_0

    .line 722
    check-cast p1, Lcom/appodeal/ads/api/Event;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->mergeFrom(Lcom/appodeal/ads/api/Event;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1

    .line 724
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

    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Event$Builder;

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

    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Event$Builder;

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

    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Event$Builder;

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

    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 1137
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Event$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAmount(F)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 1110
    iput p1, p0, Lcom/appodeal/ads/api/Event$Builder;->amount_:F

    .line 1111
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 1044
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1047
    iput-object p1, p0, Lcom/appodeal/ads/api/Event$Builder;->currency_:Ljava/lang/Object;

    .line 1048
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public setCurrencyBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 1077
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1079
    invoke-static {p1}, Lcom/appodeal/ads/api/Event;->access$1200(Lcom/explorestack/protobuf/ByteString;)V

    .line 1081
    iput-object p1, p0, Lcom/appodeal/ads/api/Event$Builder;->currency_:Ljava/lang/Object;

    .line 1082
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public setEventType(Lcom/appodeal/ads/api/Event$EventType;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 829
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 832
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Event$EventType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/appodeal/ads/api/Event$Builder;->eventType_:I

    .line 833
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public setEventTypeValue(I)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 800
    iput p1, p0, Lcom/appodeal/ads/api/Event$Builder;->eventType_:I

    .line 801
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 695
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Event$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Event$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Event$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 905
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 908
    iput-object p1, p0, Lcom/appodeal/ads/api/Event$Builder;->id_:Ljava/lang/Object;

    .line 909
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 938
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 940
    invoke-static {p1}, Lcom/appodeal/ads/api/Event;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 942
    iput-object p1, p0, Lcom/appodeal/ads/api/Event$Builder;->id_:Ljava/lang/Object;

    .line 943
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public setPlacementId(I)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 971
    iput p1, p0, Lcom/appodeal/ads/api/Event$Builder;->placementId_:I

    .line 972
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 711
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Event$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Event$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Event$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 0

    .line 1131
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Event$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method
