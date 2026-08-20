.class public final Lcom/explorestack/protobuf/Value$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Value.java"

# interfaces
.implements Lcom/explorestack/protobuf/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Value$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/ValueOrBuilder;"
    }
.end annotation


# instance fields
.field private kindCase_:I

.field private kind_:Ljava/lang/Object;

.field private listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/ListValue;",
            "Lcom/explorestack/protobuf/ListValue$Builder;",
            "Lcom/explorestack/protobuf/ListValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 720
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 899
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 721
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 899
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 727
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Value$1;)V
    .locals 0

    .line 702
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Value$1;)V
    .locals 0

    .line 702
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 708
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_Value_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getListValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/ListValue;",
            "Lcom/explorestack/protobuf/ListValue$Builder;",
            "Lcom/explorestack/protobuf/ListValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1583
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 1584
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-eq v0, v1, :cond_0

    .line 1585
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1587
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/ListValue;

    .line 1590
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1591
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1592
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1594
    :cond_1
    iput v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1595
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    .line 1596
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getStructValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1406
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 1407
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-eq v0, v1, :cond_0

    .line 1408
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1410
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    .line 1413
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1414
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1415
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1417
    :cond_1
    iput v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1418
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    .line 1419
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 730
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 826
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/Value;
    .locals 2

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->buildPartial()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 756
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 757
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/Value$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->buildPartial()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->buildPartial()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/Value;
    .locals 3

    .line 764
    new-instance v0, Lcom/explorestack/protobuf/Value;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Value;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Value$1;)V

    .line 765
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 766
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :cond_0
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 769
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_1
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 772
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 775
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 778
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 779
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 781
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_5
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 785
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6

    .line 786
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 788
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    :cond_7
    :goto_1
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$402(Lcom/explorestack/protobuf/Value;I)I

    .line 792
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clear()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clear()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clear()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clear()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 736
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 737
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearBoolValue()Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 1237
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1238
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1239
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1240
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 809
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public clearKind()Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 908
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 909
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 910
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public clearListValue()Lcom/explorestack/protobuf/Value$Builder;
    .locals 5

    .line 1530
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-nez v0, :cond_0

    .line 1531
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v3, :cond_2

    .line 1532
    iput v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1533
    iput-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1534
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 1537
    :cond_0
    iget v4, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v4, v3, :cond_1

    .line 1538
    iput v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1539
    iput-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1541
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearNullValue()Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 1002
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1003
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1004
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1005
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearNumberValue()Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 1059
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1060
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1061
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1062
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 814
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public clearStringValue()Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 1160
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1161
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1162
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1163
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearStructValue()Lcom/explorestack/protobuf/Value$Builder;
    .locals 5

    .line 1353
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_0

    .line 1354
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v3, :cond_2

    .line 1355
    iput v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1356
    iput-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1357
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 1360
    :cond_0
    iget v4, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v4, v3, :cond_1

    .line 1361
    iput v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1362
    iput-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1364
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 798
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Value$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBoolValue()Z
    .locals 2

    .line 1208
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;
    .locals 1

    .line 750
    invoke-static {}, Lcom/explorestack/protobuf/Value;->getDefaultInstance()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 745
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_Value_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getKindCase()Lcom/explorestack/protobuf/Value$KindCase;
    .locals 1

    .line 903
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Value$KindCase;->forNumber(I)Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v0

    return-object v0
.end method

.method public getListValue()Lcom/explorestack/protobuf/ListValue;
    .locals 3

    .line 1446
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 1447
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    return-object v0

    .line 1450
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0

    .line 1452
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_2

    .line 1453
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    return-object v0

    .line 1455
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public getListValueBuilder()Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1

    .line 1553
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;->getListValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/ListValue$Builder;

    return-object v0
.end method

.method public getListValueOrBuilder()Lcom/explorestack/protobuf/ListValueOrBuilder;
    .locals 3

    .line 1564
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_0

    .line 1565
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/ListValueOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1568
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    return-object v0

    .line 1570
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue()Lcom/explorestack/protobuf/NullValue;
    .locals 2

    .line 967
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 969
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 970
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 969
    invoke-static {v0}, Lcom/explorestack/protobuf/NullValue;->valueOf(I)Lcom/explorestack/protobuf/NullValue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 971
    sget-object v0, Lcom/explorestack/protobuf/NullValue;->UNRECOGNIZED:Lcom/explorestack/protobuf/NullValue;

    :cond_0
    return-object v0

    .line 973
    :cond_1
    sget-object v0, Lcom/explorestack/protobuf/NullValue;->NULL_VALUE:Lcom/explorestack/protobuf/NullValue;

    return-object v0
.end method

.method public getNullValueValue()I
    .locals 2

    .line 937
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 938
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNumberValue()D
    .locals 2

    .line 1030
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 3

    .line 1090
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_0

    .line 1090
    :cond_0
    const-string v0, ""

    .line 1093
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1094
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1096
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1097
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_1

    .line 1098
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 1102
    :cond_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStringValueBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 3

    .line 1117
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_0

    .line 1117
    :cond_0
    const-string v0, ""

    .line 1120
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1121
    check-cast v0, Ljava/lang/String;

    .line 1122
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1124
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_1

    .line 1125
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 1129
    :cond_2
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStructValue()Lcom/explorestack/protobuf/Struct;
    .locals 3

    .line 1269
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 1270
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0

    .line 1273
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0

    .line 1275
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_2

    .line 1276
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0

    .line 1278
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getStructValueBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 1376
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;->getStructValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getStructValueOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 3

    .line 1387
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_0

    .line 1388
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1391
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0

    .line 1393
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public hasBoolValue()Z
    .locals 2

    .line 1197
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasListValue()Z
    .locals 2

    .line 1434
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNullValue()Z
    .locals 2

    .line 925
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNumberValue()Z
    .locals 2

    .line 1019
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStringValue()Z
    .locals 2

    .line 1077
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStructValue()Z
    .locals 2

    .line 1257
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

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

    .line 714
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_Value_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Value;

    const-class v2, Lcom/explorestack/protobuf/Value$Builder;

    .line 715
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

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Value$Builder;

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

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;

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

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Value$Builder;

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

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 888
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/Value;->access$500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 894
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 890
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Value;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 891
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

    .line 894
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;

    .line 896
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 830
    instance-of v0, p1, Lcom/explorestack/protobuf/Value;

    if-eqz v0, :cond_0

    .line 831
    check-cast p1, Lcom/explorestack/protobuf/Value;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1

    .line 833
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 839
    invoke-static {}, Lcom/explorestack/protobuf/Value;->getDefaultInstance()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 840
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/Value$2;->$SwitchMap$com$google$protobuf$Value$KindCase:[I

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getKindCase()Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$KindCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 864
    :pswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getListValue()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->mergeListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;

    goto :goto_0

    .line 860
    :pswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getStructValue()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->mergeStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;

    goto :goto_0

    .line 856
    :pswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getBoolValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->setBoolValue(Z)Lcom/explorestack/protobuf/Value$Builder;

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    .line 850
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 851
    invoke-static {p1}, Lcom/explorestack/protobuf/Value;->access$300(Lcom/explorestack/protobuf/Value;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 846
    :pswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getNumberValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    goto :goto_0

    .line 842
    :pswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getNullValueValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->setNullValueValue(I)Lcom/explorestack/protobuf/Value$Builder;

    .line 871
    :goto_0
    iget-object p1, p1, Lcom/explorestack/protobuf/Value;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    .line 872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mergeListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 3

    .line 1504
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 1505
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1506
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    invoke-static {v0}, Lcom/explorestack/protobuf/ListValue;->newBuilder(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    .line 1508
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ListValue$Builder;->buildPartial()Lcom/explorestack/protobuf/ListValue;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_0

    .line 1510
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1512
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_1

    .line 1514
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_2

    .line 1515
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1517
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1519
    :goto_1
    iput v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public mergeStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 3

    .line 1327
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 1328
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1329
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 1331
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_0

    .line 1333
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1335
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_1

    .line 1337
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_2

    .line 1338
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1340
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1342
    :goto_1
    iput v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 1607
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public setBoolValue(Z)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    const/4 v0, 0x4

    .line 1223
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1224
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1225
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 804
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public setListValue(Lcom/explorestack/protobuf/ListValue$Builder;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 1487
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1488
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ListValue$Builder;->build()Lcom/explorestack/protobuf/ListValue;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1489
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 1491
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ListValue$Builder;->build()Lcom/explorestack/protobuf/ListValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x6

    .line 1493
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public setListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 1466
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1468
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1470
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1471
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 1473
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x6

    .line 1475
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public setNullValue(Lcom/explorestack/protobuf/NullValue;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 986
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 988
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 989
    invoke-virtual {p1}, Lcom/explorestack/protobuf/NullValue;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 990
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public setNullValueValue(I)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 952
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 953
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 954
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 1045
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1046
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1047
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Value$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Value$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 820
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 1144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    .line 1146
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1147
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1148
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public setStringValueBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 1179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1181
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    const/4 v0, 0x3

    .line 1182
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1183
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public setStructValue(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 1310
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1311
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1312
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 1314
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x5

    .line 1316
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public setStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1291
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1293
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1294
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 1296
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x5

    .line 1298
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 702
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 1601
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method
