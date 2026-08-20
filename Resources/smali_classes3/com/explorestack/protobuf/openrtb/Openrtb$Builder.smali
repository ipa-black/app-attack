.class public final Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Openrtb.java"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Openrtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;"
    }
.end annotation


# instance fields
.field private domainspec_:Ljava/lang/Object;

.field private domainver_:Ljava/lang/Object;

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;

.field private requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;",
            "Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lcom/explorestack/protobuf/openrtb/Response$Builder;",
            "Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ver_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 655
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 825
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 841
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 937
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 1038
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 656
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 661
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 825
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 841
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 937
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 1038
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 662
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V
    .locals 0

    .line 637
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V
    .locals 0

    .line 637
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 643
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Openrtb_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getRequestFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;",
            "Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1309
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 1310
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-eq v0, v1, :cond_0

    .line 1311
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1313
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Request;

    .line 1316
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1317
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1318
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1320
    :cond_1
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    .line 1322
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getResponseFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lcom/explorestack/protobuf/openrtb/Response$Builder;",
            "Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 1496
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-eq v0, v1, :cond_0

    .line 1497
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1499
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Response;

    .line 1502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1504
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1506
    :cond_1
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    .line 1508
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 666
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 758
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 2

    .line 696
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 698
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 3

    .line 705
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V

    .line 706
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$402(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$502(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$602(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 710
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 713
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    :cond_1
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 717
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 718
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 720
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    :cond_3
    :goto_1
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$802(Lcom/explorestack/protobuf/openrtb/Openrtb;I)I

    .line 724
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 671
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 672
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 674
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 676
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 678
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearDomainspec()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 1012
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspec()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 1013
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDomainver()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 1113
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1114
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 741
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 746
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public clearPayload()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 834
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v0, 0x0

    .line 835
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 836
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRequest()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 5

    .line 1253
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-nez v0, :cond_0

    .line 1254
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v3, :cond_2

    .line 1255
    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1256
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1257
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_0

    .line 1260
    :cond_0
    iget v4, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v4, v3, :cond_1

    .line 1261
    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1262
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1264
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearResponse()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 5

    .line 1439
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_0

    .line 1440
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v3, :cond_2

    .line 1441
    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1442
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1443
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_0

    .line 1446
    :cond_0
    iget v4, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v4, v3, :cond_1

    .line 1447
    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1448
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1450
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearVer()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 912
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 730
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1

    .line 691
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 686
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Openrtb_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDomainspec()Ljava/lang/String;
    .locals 2

    .line 948
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 949
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 950
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 952
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 953
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    return-object v0

    .line 956
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDomainspecBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 971
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 972
    check-cast v0, Ljava/lang/String;

    .line 973
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 975
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    return-object v0

    .line 978
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDomainver()Ljava/lang/String;
    .locals 2

    .line 1049
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1050
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1051
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1053
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1054
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    return-object v0

    .line 1057
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDomainverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1071
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1072
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1073
    check-cast v0, Ljava/lang/String;

    .line 1074
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1076
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    return-object v0

    .line 1079
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getPayloadCase()Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 1

    .line 829
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->forNumber(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/explorestack/protobuf/openrtb/Request;
    .locals 3

    .line 1165
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 1166
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0

    .line 1169
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0

    .line 1171
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_2

    .line 1172
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0

    .line 1174
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 1277
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getRequestFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object v0
.end method

.method public getRequestOrBuilder()Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;
    .locals 3

    .line 1289
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_0

    .line 1290
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0

    .line 1295
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/explorestack/protobuf/openrtb/Response;
    .locals 3

    .line 1351
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 1352
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0

    .line 1355
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0

    .line 1357
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_2

    .line 1358
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0

    .line 1360
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBuilder()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 1463
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getResponseFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object v0
.end method

.method public getResponseOrBuilder()Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;
    .locals 3

    .line 1475
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_0

    .line 1476
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1479
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0

    .line 1481
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 852
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 853
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 855
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 856
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    return-object v0

    .line 859
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 873
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 874
    check-cast v0, Ljava/lang/String;

    .line 875
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 877
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    return-object v0

    .line 880
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasRequest()Z
    .locals 2

    .line 1152
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResponse()Z
    .locals 2

    .line 1338
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 649
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Openrtb_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 650
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

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

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

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

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

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

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

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 814
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$1000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 820
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 816
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Openrtb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
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

    .line 820
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 822
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 762
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    if-eqz v0, :cond_0

    .line 763
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1

    .line 765
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 2

    .line 771
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 772
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 773
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$400(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 774
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    .line 776
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 777
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$500(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 778
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    .line 780
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 781
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$600(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 782
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    .line 784
    :cond_3
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$2;->$SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase:[I

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getPayloadCase()Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 790
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeResponse(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    goto :goto_0

    .line 786
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getRequest()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeRequest(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 797
    :goto_0
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$900(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 798
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeRequest(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 3

    .line 1226
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 1227
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1228
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request;->newBuilder(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    .line 1230
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 1232
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1234
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_1

    .line 1236
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_2

    .line 1237
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1239
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1241
    :goto_1
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public mergeResponse(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 3

    .line 1412
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 1413
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1414
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Response;->newBuilder(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    .line 1416
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 1418
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1420
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_1

    .line 1422
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_2

    .line 1423
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1425
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1427
    :goto_1
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 1519
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public setDomainspec(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 994
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 997
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 998
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public setDomainspecBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 1029
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1031
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$1200(Lcom/explorestack/protobuf/ByteString;)V

    .line 1033
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 1034
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public setDomainver(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 1095
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1098
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1099
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public setDomainverBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 1130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1132
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1134
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 736
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 752
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public setRequest(Lcom/explorestack/protobuf/openrtb/Request$Builder;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1209
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1210
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_0

    .line 1212
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x4

    .line 1214
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public setRequest(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1190
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1191
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_0

    .line 1193
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x4

    .line 1195
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public setResponse(Lcom/explorestack/protobuf/openrtb/Response$Builder;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 1394
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1395
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1396
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_0

    .line 1398
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x5

    .line 1400
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public setResponse(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1376
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_0

    .line 1379
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x5

    .line 1381
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 1513
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public setVer(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 895
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 898
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 899
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public setVerBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 928
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 930
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 932
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 933
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method
